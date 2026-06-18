
CREATE OR REPLACE FUNCTION public.iniciar_sesion(
    p_usuario VARCHAR,
    p_contrasena VARCHAR
)
RETURNS TABLE (
    id_usuario INT4,
    fk_rol INT4,
    nombre_usuario VARCHAR,
    fk_persona_juridica INT4,
    fk_persona_natural_cliente INT4,
    fk_persona_natural_empleado INT4
) AS $$
BEGIN
    RETURN QUERY
    SELECT 
        u.ID_USUARIO, 
        u.FK_ROL, 
        u.NOMBRE_USUARIO,
        u.FK_PERSONA_JURIDICA,
        u.FK_PERSONA_NATURAL_CLIENTE,
        u.FK_PERSONA_NATURAL_EMPLEADO
    FROM public.USUARIO u
    WHERE u.NOMBRE_USUARIO = p_usuario
      AND u.CONTRASENA_USUARIO = p_contrasena;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

create or replace function consultar_catalogo_privilegios()
returns table (
  id_privilegio int,
  descripcion_privilegio varchar,
  tipo_privilegio varchar
)
language sql
security definer
as $$
  select
    p.id_privilegio,
    p.descripcion_privilegio,
    p.tipo_privilegio
  from privilegio p
  order by p.tipo_privilegio, p.descripcion_privilegio;
$$;

create or replace function consultar_privilegios_ids_por_rol(
  p_id_rol int
)
returns table (
  id_privilegio int
)
language sql
security definer
as $$
  select rp.fk_privilegio
  from rol_privilegio rp
  where rp.fk_rol = p_id_rol
  order by rp.fk_privilegio;
$$;

create or replace function asignar_privilegios_a_rol(
  p_id_rol int,
  p_privilegios int[]
)
returns table (
  ok boolean,
  insertados int,
  mensaje text
)
language plpgsql
security definer
as $$
declare
  v_insertados int;
  v_privilegios int[] := coalesce(p_privilegios, array[]::int[]);
begin
  if not exists (select 1 from rol where id_rol = p_id_rol) then
    raise exception 'El rol % no existe.', p_id_rol;
  end if;

  if cardinality(v_privilegios) = 0 then
    return query select false, 0, 'No se recibieron privilegios para asignar.'::text;
    return;
  end if;


create or replace function public.consultar_privilegios_por_rol()
returns table (
  id_rol int,
  nombre_rol varchar,
  descripcion_rol varchar,
  privilegios_bd text,
  privilegios_vista text
)
language sql
security definer
as $$
  select
    r.id_rol,
    r.nombre_rol,
    r.descripcion_rol,
    (
      select string_agg(distinct p.descripcion_privilegio, ', ' order by p.descripcion_privilegio)
      from public.privilegio p
      where p.tipo_privilegio in ('Insert', 'Update', 'Delete', 'Select')
        and p.id_privilegio in (
          select rp.fk_privilegio
          from public.rol_privilegio rp
          where rp.fk_rol = r.id_rol
        )
    ) as privilegios_bd,
    (
      select string_agg(distinct p.descripcion_privilegio, ', ' order by p.descripcion_privilegio)
      from public.privilegio p
      where p.tipo_privilegio = 'Vista'
        and p.id_privilegio in (
          select rp.fk_privilegio
          from public.rol_privilegio rp
          where rp.fk_rol = r.id_rol
        )
    ) as privilegios_vista
  from public.rol r
  order by r.nombre_rol;
$$;

create or replace function public.validar_privilegio_vista(
  p_id_rol int,
  p_descripcion_vista text
)
returns boolean
language sql
security definer
as $$
  select exists (
    select 1
    from public.rol_privilegio rp
    where rp.fk_rol = p_id_rol
      and rp.fk_privilegio in (
        select p.id_privilegio
        from public.privilegio p
        where p.tipo_privilegio = 'Vista'
          and p.descripcion_privilegio = p_descripcion_vista
      )
  );
$$;

create or replace function public.consultar_catalogo_privilegios()
returns table (
  id_privilegio int,
  descripcion_privilegio varchar,
  tipo_privilegio varchar
)
language sql
security definer
as $$
  select
    p.id_privilegio,
    p.descripcion_privilegio,
    p.tipo_privilegio
  from public.privilegio p
  order by p.tipo_privilegio, p.descripcion_privilegio;
$$;

create or replace function public.consultar_privilegios_ids_por_rol(
  p_id_rol int
)
returns table (
  id_privilegio int
)
language sql
security definer
as $$
  select rp.fk_privilegio
  from public.rol_privilegio rp
  where rp.fk_rol = p_id_rol
  order by rp.fk_privilegio;
$$;

create or replace function public.asignar_privilegios_a_rol(
  p_id_rol int,
  p_privilegios int[]
)
returns table (
  ok boolean,
  insertados int,
  mensaje text
)
language plpgsql
security definer
as $$
declare
  v_insertados int;
  v_privilegios int[] := coalesce(p_privilegios, array[]::int[]);
begin
  if not exists (select 1 from public.rol where id_rol = p_id_rol) then
    raise exception 'El rol % no existe.', p_id_rol;
  end if;

  if cardinality(v_privilegios) = 0 then
    return query select false, 0, 'No se recibieron privilegios para asignar.'::text;
    return;
  end if;

  if exists (
    select 1
    from unnest(v_privilegios) as seleccionado(id_privilegio)
    where not exists (
      select 1
      from public.privilegio p
      where p.id_privilegio = seleccionado.id_privilegio
    )
  ) then
    raise exception 'Uno o mas privilegios no existen.';
  end if;

  if exists (
    select 1
    from public.rol_privilegio rp
    where rp.fk_rol = p_id_rol
      and rp.fk_privilegio = any(v_privilegios)
  ) then
    raise exception 'Uno o mas privilegios ya estan asignados a este rol.';
  end if;

  lock table public.rol_privilegio in exclusive mode;

  insert into public.rol_privilegio (id_rol_privilegio, fk_privilegio, fk_rol)
  select
    (select coalesce(max(id_rol_privilegio), 0) from public.rol_privilegio)
      + row_number() over (order by seleccionado.id_privilegio),
    seleccionado.id_privilegio,
    p_id_rol
  from (
    select distinct id_privilegio
    from unnest(v_privilegios) as privilegio(id_privilegio)
  ) as seleccionado;

  perform setval(
    pg_get_serial_sequence('public.rol_privilegio', 'id_rol_privilegio'),
    (select max(id_rol_privilegio) from public.rol_privilegio),
    true
  );

  get diagnostics v_insertados = row_count;

  return query select true, v_insertados, ('Se asignaron ' || v_insertados || ' privilegio(s).')::text;
end;
$$;

create or replace function public.modificar_privilegios_de_rol(
  p_id_rol int,
  p_agregar int[],
  p_eliminar int[]
)
returns table (
  ok boolean,
  insertados int,
  eliminados int,
  mensaje text
)
language plpgsql
security definer
as $$
declare
  v_insertados int := 0;
  v_eliminados int := 0;
  v_agregar int[] := coalesce(p_agregar, array[]::int[]);
  v_eliminar int[] := coalesce(p_eliminar, array[]::int[]);
begin
  if not exists (select 1 from public.rol where id_rol = p_id_rol) then
    raise exception 'El rol % no existe.', p_id_rol;
  end if;

  if exists (
    select 1
    from unnest(v_agregar || v_eliminar) as seleccionado(id_privilegio)
    where not exists (
      select 1
      from public.privilegio p
      where p.id_privilegio = seleccionado.id_privilegio
    )
  ) then
    raise exception 'Uno o mas privilegios no existen.';
  end if;

  if exists (
    select 1
    from public.rol_privilegio rp
    where rp.fk_rol = p_id_rol
      and rp.fk_privilegio = any(v_agregar)
  ) then
    raise exception 'Uno o mas privilegios ya estan asignados a este rol.';
  end if;

  lock table public.rol_privilegio in exclusive mode;

  if cardinality(v_eliminar) > 0 then
    delete from public.rol_privilegio rp
    where rp.fk_rol = p_id_rol
      and rp.fk_privilegio = any(v_eliminar);

    get diagnostics v_eliminados = row_count;
  end if;

  if cardinality(v_agregar) > 0 then
    insert into public.rol_privilegio (id_rol_privilegio, fk_privilegio, fk_rol)
    select
      (select coalesce(max(id_rol_privilegio), 0) from public.rol_privilegio)
        + row_number() over (order by seleccionado.id_privilegio),
      seleccionado.id_privilegio,
      p_id_rol
    from (
      select distinct id_privilegio
      from unnest(v_agregar) as privilegio(id_privilegio)
    ) as seleccionado;

    get diagnostics v_insertados = row_count;

    perform setval(
      pg_get_serial_sequence('public.rol_privilegio', 'id_rol_privilegio'),
      (select max(id_rol_privilegio) from public.rol_privilegio),
      true
    );
  end if;

  return query select
    true,
    v_insertados,
    v_eliminados,
    ('Se agregaron ' || v_insertados || ' y se eliminaron ' || v_eliminados || ' privilegio(s).')::text;
end;
$$;


create or replace function public.consultar_caracteristicas_basediseno()
RETURNS table (
  id_caracteristica int,
  nombre_caracteristica varchar,
  descripcion_caracteristica varchar
)
language sql
security definer 
as $$
  select 
  c.id_caracteristica,
  c.nombre_caracteristica,
  c.descripcion_caracteristica
  from caracteristica c
  order by c.nombre_caracteristica;
$$;

create or replace function public.consultar_materia_prima()
returns table (
  id_materiaprima int,
  nombre_materiaprima varchar,
  descripcion_materiaprima varchar
)
language sql
security definer
as $$
  select 
    m.id_materiaprima,
    m.nombre_materiaprima varchar,
    m.descripcion_materiaprima
  from materiaprima m
  order by m.nombre_materiaprima
$$;

create or replace function public.consultar_era()
returns table (
  id_era int,
  nombre_era varchar,
  descripcion_era varchar
)
language sql
security definer 
as $$
  select
    e.id_era,
    e.nombre_era,
    e.descripcion_era
  from era e
  order by e.nombre_era
$$;  

create or replace function public.consultar_color()
returns table(
  id_color int,
  nombre_color varchar,
  codigo_hex varchar
)
language sql
security definer 
as $$ 
select 
  col.id_color,
  col.nombre_color,
  col.codigo_hex
from color col
$$;

create or replace function public.consultar_prueba()
returns table(
  id_prueba int,
  nombre_prueba varchar,
  descripcion_prueba varchar
)
language sql 
security definer 
as $$
select 
    pru.id_prueba,
    pru.nombre_prueba,
    pru.descripcion_prueba
  from prueba pru
$$;

create or replace function public.consultar_profesion()
returns table(
  id_profesion int,
  nombre_profesion varchar,
  descripcion_profesion varchar
)
language sql
security definer
as $$
select 
  pr.id_profesion,
  pr.nombre_profesion,
  pr.descripcion_profesion
  from profesion pr
$$;

create or replace function public.consultar_pieza()
returns table (
  id_pieza int,
  nombre_pieza varchar,
  descripcion_pieza varchar
)
language sql 
security definer 
as $$
select 
  pi.id_pieza,
  pi.nombre_pieza,
  pi.descripcion_pieza
from pieza pi
$$;

create or replace function public.consultar_fase()
returns table (
  id_fase int,
  nombre_fase varchar, 
  descripcion_fase varchar 
)
language sql 
security definer 
as $$
select 
  f.id_fase,
  f.nombre_fase,
  f.descripcion_fase
  from fase f
$$;

create or replace function public.consultar_cargo()
returns table (
  id_cargo int,
  nombre_cargo varchar, 
  descripcion_cargo varchar 
)
language sql 
security definer 
as $$
select 
  c.id_cargo,
  c.nombre_cargo,
  c.descripcion_cargo
  from cargo c
$$;

create or replace function public.consultar_categoria()
returns table (
  id_categoria int,
  nombre_categoria varchar, 
  descripcion_categoria varchar 
)
language sql 
security definer 
as $$
select 
  ca.id_categoria,
  ca.nombre_categoria,
  ca.descripcion_categoria
  from categoria ca
$$;

create or replace function public.consultar_molde()
returns table (
  id_molde int,
  nombre_molde varchar, 
  descripcion_molde varchar 
)
language sql 
security definer 
as $$
select 
  m.id_molde,
  m.nombre_molde,
  m.descripcion_molde
  from molde m 
$$;

create or replace function public.consultar_clasificacion()
returns table (
  id_clasificacion int,
  nombre_clasificacion varchar, 
  descripcion_clasificacion varchar 
)
language sql 
security definer 
as $$
select 
  cl.id_clasificacion,
  cl.nombre_clasificacion,
  cl.descripcion_clasificacion
  from clasificacion cl 
$$;

create or replace function public.consultar_setregalo()
returns table (
  id_setregalo int,
  nombre_setregalo varchar
)
language sql 
security definer 
as $$
select 
  sr.id_set_regalo,
  sr.nombre_set_regalo
  from set_regalo sr 
$$;

create or replace function public.consultar_coleccion()
returns table (
  id_coleccion int,
  nombre_coleccion varchar, 
  descripcion_coleccion varchar 
)
language sql 
security definer 
as $$
select 
  col.id_coleccion,
  col.nombre_coleccion,
  col.descripcion_coleccion
  from coleccion col 
$$;





