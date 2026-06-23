
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

CREATE OR REPLACE FUNCTION public.asignar_privilegios_a_rol(
  p_id_rol int,
  p_privilegios int[]
)
RETURNS TABLE (
  ok boolean,
  insertados int,
  mensaje text
)
LANGUAGE plpgsql
SECURITY DEFINER
AS $$
DECLARE
  v_insertados int;
  v_privilegios int[] := COALESCE(p_privilegios, ARRAY[]::int[]);
BEGIN
  IF NOT EXISTS (SELECT 1 FROM public.rol WHERE id_rol = p_id_rol) THEN
    RAISE EXCEPTION 'El rol % no existe.', p_id_rol;
  END IF;

  IF cardinality(v_privilegios) = 0 THEN
    RETURN QUERY SELECT false, 0, 'No se recibieron privilegios para asignar.'::text;
    RETURN;
  END IF;

  IF EXISTS (
    SELECT 1
    FROM unnest(v_privilegios) AS seleccionado(id_privilegio)
    WHERE NOT EXISTS (
      SELECT 1
      FROM public.privilegio p
      WHERE p.id_privilegio = seleccionado.id_privilegio
    )
  ) THEN
    RAISE EXCEPTION 'Uno o mas privilegios no existen.';
  END IF;

  IF EXISTS (
    SELECT 1
    FROM public.rol_privilegio rp
    WHERE rp.fk_rol = p_id_rol
      AND rp.fk_privilegio = ANY(v_privilegios)
  ) THEN
    RAISE EXCEPTION 'Uno o mas privilegios ya estan asignados a este rol.';
  END IF;

  LOCK TABLE public.rol_privilegio IN EXCLUSIVE MODE;

  INSERT INTO public.rol_privilegio (fk_privilegio, fk_rol)
  SELECT DISTINCT seleccionado.id_privilegio, p_id_rol
  FROM unnest(v_privilegios) AS seleccionado(id_privilegio);

  GET DIAGNOSTICS v_insertados = row_count;

  RETURN QUERY SELECT true, v_insertados, ('Se asignaron ' || v_insertados || ' privilegio(s).')::text;
END;
$$;

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

CREATE OR REPLACE FUNCTION consultar_personas_sin_usuario()
RETURNS TABLE (
    id_persona int,
    tipo_persona VARCHAR,
    rif VARCHAR,
    nombre_o_razon_social VARCHAR,
    apellido_o_comercial VARCHAR
)
LANGUAGE plpgsql
SECURITY DEFINER 
AS $$
BEGIN
    RETURN QUERY
    SELECT
        c.ID_PERSONA_NATURAL,
        'CLIENTE_B2C'::VARCHAR,
        c.RIF_PERSONA_NATURAL,
        c.P_NOMBRE_PERSONA_NATURAL, -- Se eliminó Cédula para respetar las 5 columnas del retorno
        c.P_APELLIDO_PERSONA_NATURAL
    FROM CLIENTE_B2C c
    WHERE NOT EXISTS (
        SELECT 1
        FROM USUARIO u
        WHERE u.FK_PERSONA_NATURAL_CLIENTE = c.ID_PERSONA_NATURAL
    )

    UNION ALL

    SELECT
        e.ID_PERSONA_NATURAL,
        'EMPLEADO'::VARCHAR,
        e.RIF_PERSONA_NATURAL,
        e.P_NOMBRE_PERSONA_NATURAL, -- Se eliminó Cédula
        e.P_APELLIDO_PERSONA_NATURAL
    FROM EMPLEADO e
    WHERE NOT EXISTS (
        SELECT 1
        FROM USUARIO u
        WHERE u.FK_PERSONA_NATURAL_EMPLEADO = e.ID_PERSONA_NATURAL
    )

    UNION ALL

    SELECT
        pj.ID_PERSONA_JURIDICA,
        'PERSONA_JURIDICA'::VARCHAR,
        pj.RIF_PERSONA_JURIDICA,
        pj.RAZON_SOCIAL_PERSONA_JURIDICA,
        pj.DENOM_COMERCIAL_PERJUR
    FROM PERSONA_JURIDICA pj
    WHERE NOT EXISTS (
        SELECT 1
        FROM USUARIO u
        WHERE u.FK_PERSONA_JURIDICA = pj.ID_PERSONA_JURIDICA
    );
END;
$$;

CREATE OR REPLACE FUNCTION consultar_personas_con_usuario()
RETURNS TABLE (
    tipo_persona VARCHAR,
    id_persona int,
    rif VARCHAR,
    nombre_o_razon_social VARCHAR,
    apellido_o_comercial VARCHAR,
    nombre_usuario varchar,
    nombre_rol varchar
)
LANGUAGE plpgsql
SECURITY DEFINER 
AS $$
BEGIN
    RETURN QUERY
    SELECT
        'CLIENTE_B2C'::VARCHAR, -- Se corrigieron las comas faltantes y se ordenó según el RETURNS TABLE
        c.ID_PERSONA_NATURAL,
        c.RIF_PERSONA_NATURAL,
        c.P_NOMBRE_PERSONA_NATURAL,
        c.P_APELLIDO_PERSONA_NATURAL,
        u.nombre_usuario,
        r.nombre_rol
    FROM CLIENTE_B2C c 
    JOIN usuario u ON u.fk_persona_natural_cliente = c.id_persona_natural 
    JOIN rol r ON u.fk_rol = r.id_rol

    UNION ALL

    SELECT
        'EMPLEADO'::VARCHAR,
        e.ID_PERSONA_NATURAL,
        e.RIF_PERSONA_NATURAL,
        e.P_NOMBRE_PERSONA_NATURAL,
        e.P_APELLIDO_PERSONA_NATURAL,
        u.nombre_usuario,
        r.nombre_rol
    FROM EMPLEADO e 
    JOIN usuario u ON u.fk_persona_natural_empleado = e.id_persona_natural  
    JOIN rol r ON u.fk_rol = r.id_rol

    UNION ALL

    SELECT
        'PERSONA_JURIDICA'::VARCHAR,
        pj.id_persona_juridica,
        pj.RIF_PERSONA_JURIDICA,
        pj.RAZON_SOCIAL_PERSONA_JURIDICA,
        pj.DENOM_COMERCIAL_PERJUR,
        u.nombre_usuario,
        r.nombre_rol
    FROM PERSONA_JURIDICA pj 
    JOIN usuario u ON u.fk_persona_juridica = pj.id_persona_juridica  
    JOIN rol r ON u.fk_rol = r.id_rol;
END;
$$;

create or replace function public.verificar_nombre_usuario_existe(
  p_nombre_usuario text
)
returns boolean
language plpgsql
security definer
set search_path = public
as $$
begin
  if nullif(trim(p_nombre_usuario), '') is null then
    return false;
  end if;

  return exists (
    select 1
    from public.usuario u
    where lower(trim(u.nombre_usuario)) = lower(trim(p_nombre_usuario))
  );
end;
$$;

drop function if exists public.insertar_nuevo_usuario(integer, text, text, integer);

create or replace function public.insertar_nuevo_usuario(
  p_id_persona integer,
  p_tipo_persona text,
  p_nombre_usuario text,
  p_contrasena_usuario text,
  p_id_rol integer
)
returns table (
  ok boolean,
  mensaje text
)
language plpgsql
security definer
set search_path = public
as $$
declare
  v_tipo_persona text := upper(trim(coalesce(p_tipo_persona, '')));
  v_sequence_name text;
  v_max_usuario_id integer;
  v_constraint_name text;
begin
  if p_id_persona is null or p_id_persona <= 0 then
    return query select false, 'Selecciona una persona valida.';
    return;
  end if;

  if v_tipo_persona = '' then
    return query select false, 'No se pudo identificar el tipo de persona.';
    return;
  end if;

  if nullif(trim(p_nombre_usuario), '') is null then
    return query select false, 'Ingresa un nombre de usuario.';
    return;
  end if;

  if nullif(p_contrasena_usuario, '') is null then
    return query select false, 'Ingresa una contrasena.';
    return;
  end if;

  if p_id_rol is null or p_id_rol <= 0 then
    return query select false, 'Selecciona un rol valido.';
    return;
  end if;

  if public.verificar_nombre_usuario_existe(p_nombre_usuario) then
    return query select false, 'El nombre de usuario ya existe.';
    return;
  end if;
  v_sequence_name := pg_get_serial_sequence('public.usuario', 'id_usuario');
  select max(u.id_usuario) into v_max_usuario_id from public.usuario u;

  if v_sequence_name is not null then
    perform setval(v_sequence_name, coalesce(v_max_usuario_id, 1), v_max_usuario_id is not null);
  end if;

  if v_tipo_persona in ('CLIENTE_B2C', 'B2C', 'CLIENTE') then
    if exists (select 1 from public.usuario u where u.fk_persona_natural_cliente = p_id_persona) then
      return query select false, 'La persona seleccionada ya tiene usuario.';
      return;
    end if;

    insert into public.usuario (
      fk_persona_natural_cliente,
      fk_rol,
      nombre_usuario,
      contrasena_usuario
    ) values (
      p_id_persona,
      p_id_rol,
      trim(p_nombre_usuario),
      p_contrasena_usuario
    );
  elsif v_tipo_persona = 'EMPLEADO' then
    if exists (select 1 from public.usuario u where u.fk_persona_natural_empleado = p_id_persona) then
      return query select false, 'La persona seleccionada ya tiene usuario.';
      return;
    end if;

    insert into public.usuario (
      fk_persona_natural_empleado,
      fk_rol,
      nombre_usuario,
      contrasena_usuario
    ) values (
      p_id_persona,
      p_id_rol,
      trim(p_nombre_usuario),
      p_contrasena_usuario
    );
  elsif v_tipo_persona in ('PERSONA_JURIDICA', 'JURIDICA', 'CLIENTE_B2B', 'B2B') then
    if exists (select 1 from public.usuario u where u.fk_persona_juridica = p_id_persona) then
      return query select false, 'La persona seleccionada ya tiene usuario.';
      return;
    end if;

    insert into public.usuario (
      fk_persona_juridica,
      fk_rol,
      nombre_usuario,
      contrasena_usuario
    ) values (
      p_id_persona,
      p_id_rol,
      trim(p_nombre_usuario),
      p_contrasena_usuario
    );
  else
    return query select false, 'Tipo de persona no soportado: ' || p_tipo_persona;
    return;
  end if;

  return query select true, 'Usuario creado correctamente.';
exception
  when foreign_key_violation then
    return query select false, 'La persona o el rol seleccionado no existe.';
  when unique_violation then
    get stacked diagnostics v_constraint_name = constraint_name;

    if lower(coalesce(v_constraint_name, '')) like '%nombre_usuario%' then
      return query select false, 'El nombre de usuario ya existe.';
    elsif lower(coalesce(v_constraint_name, '')) = 'pk_usuario' then
      return query select false, 'No se pudo crear el usuario: la secuencia de ID_USUARIO esta desincronizada. Ejecuta nuevamente este script y reintenta.';
    else
      return query select false, 'No se pudo crear el usuario por restriccion unica: ' || coalesce(v_constraint_name, sqlerrm);
    end if;
  when check_violation then
    return query select false, 'El usuario debe pertenecer a un solo tipo de persona.';
  when others then
    return query select false, 'No se pudo crear el usuario: ' || sqlerrm;
end;
$$;

create or replace function public.modificar_usuario(
  p_id_usuario integer,
  p_nombre_usuario_actual text,
  p_nombre_usuario text,
  p_contrasena_usuario text,
  p_id_rol integer
)
returns table (
  ok boolean,
  mensaje text
)
language plpgsql
security definer
set search_path = public
as $$
declare
  v_id_usuario integer;
  v_nombre_actual text := trim(coalesce(p_nombre_usuario_actual, ''));
  v_nombre_nuevo text := trim(coalesce(p_nombre_usuario, ''));
  v_constraint_name text;
begin
  if v_nombre_nuevo = '' then
    return query select false, 'Ingresa un nombre de usuario.';
    return;
  end if;

  if p_id_rol is null or p_id_rol <= 0 then
    return query select false, 'Selecciona un rol valido.';
    return;
  end if;

  select u.id_usuario
  into v_id_usuario
  from public.usuario u
  where (p_id_usuario is not null and u.id_usuario = p_id_usuario)
     or (p_id_usuario is null and lower(trim(u.nombre_usuario)) = lower(v_nombre_actual))
  limit 1;

  if v_id_usuario is null then
    return query select false, 'No se encontro el usuario a modificar.';
    return;
  end if;

  if exists (
    select 1
    from public.usuario u
    where lower(trim(u.nombre_usuario)) = lower(v_nombre_nuevo)
      and u.id_usuario <> v_id_usuario
  ) then
    return query select false, 'El nombre de usuario ya existe.';
    return;
  end if;

  update public.usuario u
  set nombre_usuario = v_nombre_nuevo,
      contrasena_usuario = case
        when nullif(p_contrasena_usuario, '') is null then u.contrasena_usuario
        else p_contrasena_usuario
      end,
      fk_rol = p_id_rol
  where u.id_usuario = v_id_usuario;

  return query select true, 'Usuario modificado correctamente.';
exception
  when foreign_key_violation then
    return query select false, 'El rol seleccionado no existe.';
  when unique_violation then
    get stacked diagnostics v_constraint_name = constraint_name;

    if lower(coalesce(v_constraint_name, '')) like '%nombre_usuario%' then
      return query select false, 'El nombre de usuario ya existe.';
    else
      return query select false, 'No se pudo modificar el usuario por restriccion unica: ' || coalesce(v_constraint_name, sqlerrm);
    end if;
  when others then
    return query select false, 'No se pudo modificar el usuario: ' || sqlerrm;
end;
$$;

--stored procedures para los reportes muajaja 

----Calcular la cantidad total de unidades y Cajas Máster para subastas.
create or replace function public.reporte_inventario_caja_master_para_subasta()
returns table (
  sku bigint,
  caja_master numeric
)
language sql
security definer
set search_path = public
as $$
  select
    count(*) as sku,
    round(count(*)::numeric / 12, 2) as caja_master
  from public.producto p
  join public.historico_inv_producto h
    on p.id_producto = h.fk_producto
  join public.estatus_inventario ei
    on h.fk_estatus_inventario = ei.id_estatus_inventario
  where ei.id_estatus_inventario = 6;
$$;

--segundo reporte Cantidad de SKUs adquiridos por clientes B2B en el ultimo año por categoría de producto.

create or replace function public.reporte_productos_b2b_por_categoria(
  p_fecha_inicio date,
  p_fecha_fin date
)
returns table (
  cantidad bigint,
  nombre_categoria text
)
language sql
security definer
set search_path = public
as $$
  select
    count(*) as cantidad,
    c.nombre_categoria
  from public.detalle_orden_b2b d
  join public.producto p
    on d.fk_producto = p.id_producto
  join public.orden_compra_b2b o
    on d.fk_orden_compra_b2b = o.id_orden_compra_b2b
  join public.categoria_basediseno cd
    on cd.id_categoria_basediseno = p.fk_categoria_basediseno
  join public.categoria c
    on cd.fk_categoria = c.id_categoria
  where o.fechahora_orden_compra_b2b >= p_fecha_inicio
    and o.fechahora_orden_compra_b2b < (p_fecha_fin + interval '1 day')
  group by c.nombre_categoria
  order by cantidad desc, c.nombre_categoria asc;
$$;

create or replace function public.reporte_inventario_transito_por_tono_piel()
returns table (
  nombre_color text,
  porcentaje numeric
)
language sql
security definer
set search_path = public
as $$
  with total_estatus as (
    select count(*)::numeric as total_filas
    from public.historico_inv_producto
    where fk_estatus_inventario = 3
  )
  select
    c.nombre_color,
    round((count(*)::numeric / nullif(t.total_filas, 0)) * 100, 2) as porcentaje
  from public.historico_inv_producto h
  join public.producto p
    on h.fk_producto = p.id_producto
  join public.estatus_inventario ei
    on h.fk_estatus_inventario = ei.id_estatus_inventario
  join public.base_diseno bd
    on p.fk_basediseno = bd.id_basediseno
  join public.color c
    on bd.fk_color_tonopiel = c.id_color
  cross join total_estatus t
  where ei.id_estatus_inventario = 3
  group by c.nombre_color, t.total_filas
  order by porcentaje desc, c.nombre_color asc;
$$;

-- Stored procedures para el modulo de disenos.


-- Sincroniza secuencias SERIAL cuando la data fue cargada con IDs manuales.
create or replace function public.sincronizar_secuencia_serial(
  p_table regclass,
  p_column text
)
returns void
language plpgsql
security definer
set search_path = public
as $$
declare
  v_sequence_name text;
  v_max_id bigint;
begin
  v_sequence_name := pg_get_serial_sequence(p_table::text, p_column);

  if v_sequence_name is null then
    return;
  end if;

  execute format('select max(%I) from %s', p_column, p_table)
  into v_max_id;

  perform setval(v_sequence_name, coalesce(v_max_id, 1), v_max_id is not null);
end;
$$;

create or replace function public.consultar_era()
returns table (
  id_era integer,
  nombre_era varchar,
  descripcion_era varchar
)
language sql
security definer
set search_path = public
as $$
  select e.id_era, e.nombre_era, e.descripcion_era
  from public.era e
  order by e.nombre_era;
$$;

create or replace function public.consultar_coleccion()
returns table (
  id_coleccion integer,
  nombre_coleccion varchar,
  descripcion_coleccion varchar
)
language sql
security definer
set search_path = public
as $$
  select c.id_coleccion, c.nombre_coleccion, c.descripcion_coleccion
  from public.coleccion c
  order by c.nombre_coleccion;
$$;

create or replace function public.consultar_color()
returns table (
  id_color integer,
  nombre_color varchar,
  codigo_hex varchar
)
language sql
security definer
set search_path = public
as $$
  select c.id_color, c.nombre_color, c.codigo_hex
  from public.color c
  order by c.nombre_color;
$$;

create or replace function public.consultar_tipo_cuerpo()
returns table (
  id_tipo_cuerpo integer,
  nombre_tipo_cuerpo varchar,
  descripcion_tipo_cuerpo varchar
)
language sql
security definer
set search_path = public
as $$
  select tc.id_tipo_cuerpo, tc.nombre_tipo_cuerpo, tc.descripcion_tipo_cuerpo
  from public.tipo_cuerpo tc
  order by tc.nombre_tipo_cuerpo;
$$;

create or replace function public.consultar_materia_prima()
returns table (
  id_materiaprima integer,
  nombre_materiaprima varchar,
  descripcion_materiaprima varchar
)
language sql
security definer
set search_path = public
as $$
  select m.id_materiaprima, m.nombre_materiaprima, m.descripcion_materiaprima
  from public.materiaprima m
  order by m.nombre_materiaprima;
$$;

create or replace function public.consultar_molde()
returns table (
  id_molde integer,
  nombre_molde varchar,
  descripcion_molde varchar
)
language sql
security definer
set search_path = public
as $$
  select m.id_molde, m.nombre_molde, m.descripcion_molde
  from public.molde m
  order by m.nombre_molde;
$$;

create or replace function public.consultar_pieza()
returns table (
  id_pieza integer,
  nombre_pieza varchar,
  descripcion_pieza varchar
)
language sql
security definer
set search_path = public
as $$
  select p.id_pieza, p.nombre_pieza, p.descripcion_pieza
  from public.pieza p
  order by p.nombre_pieza;
$$;

create or replace function public.consultar_profesion()
returns table (
  id_profesion integer,
  nombre_profesion varchar,
  descripcion_profesion varchar
)
language sql
security definer
set search_path = public
as $$
  select p.id_profesion, p.nombre_profesion, p.descripcion_profesion
  from public.profesion p
  order by p.nombre_profesion;
$$;

create or replace function public.consultar_clasificacion()
returns table (
  id_clasificacion integer,
  nombre_clasificacion varchar,
  descripcion_clasificacion varchar
)
language sql
security definer
set search_path = public
as $$
  select c.id_clasificacion, c.nombre_clasificacion, c.descripcion_clasificacion
  from public.clasificacion c
  order by c.nombre_clasificacion;
$$;

create or replace function public.consultar_categoria()
returns table (
  id_categoria integer,
  nombre_categoria varchar,
  descripcion_categoria varchar
)
language sql
security definer
set search_path = public
as $$
  select c.id_categoria, c.nombre_categoria, c.descripcion_categoria
  from public.categoria c
  order by c.nombre_categoria;
$$;

create or replace function public.consultar_setregalo()
returns table (
  id_setregalo integer,
  nombre_setregalo varchar
)
language sql
security definer
set search_path = public
as $$
  select sr.id_set_regalo, sr.nombre_set_regalo
  from public.set_regalo sr
  order by sr.nombre_set_regalo;
$$;

create or replace function public.consultar_caracteristicas_basediseno()
returns table (
  id_caracteristica integer,
  nombre_caracteristica varchar,
  descripcion_caracteristica varchar
)
language sql
security definer
set search_path = public
as $$
  select c.id_caracteristica, c.nombre_caracteristica, c.descripcion_caracteristica
  from public.caracteristica c
  order by c.nombre_caracteristica;
$$;

create or replace function public.consultar_prueba()
returns table (
  id_prueba integer,
  nombre_prueba varchar,
  descripcion_prueba varchar
)
language sql
security definer
set search_path = public
as $$
  select p.id_prueba, p.nombre_prueba, p.descripcion_prueba
  from public.prueba p
  order by p.nombre_prueba;
$$;

create or replace function public.consultar_fase()
returns table (
  id_fase integer,
  nombre_fase varchar,
  descripcion_fase varchar
)
language sql
security definer
set search_path = public
as $$
  select f.id_fase, f.nombre_fase, f.descripcion_fase
  from public.fase f
  order by f.nombre_fase;
$$;

create or replace function public.consultar_cargo()
returns table (
  id_cargo integer,
  nombre_cargo varchar,
  descripcion_cargo varchar
)
language sql
security definer
set search_path = public
as $$
  select c.id_cargo, c.nombre_cargo, c.descripcion_cargo
  from public.cargo c
  order by c.nombre_cargo;
$$;

create or replace function public.consultar_base_disenos()
returns table (
  id_basediseno integer,
  nombre_basediseno varchar,
  descripcion_basediseno varchar,
  alto_basediseno numeric,
  ancho_basediseno numeric,
  profundidad_basediseno numeric,
  nombre_era varchar,
  nombre_coleccion varchar,
  nombre_tipo_cuerpo varchar,
  color_ojos varchar,
  color_tonopiel varchar,
  diseno_relacionado varchar
)
language sql
security definer
set search_path = public
as $$
  select
    bd.id_basediseno,
    bd.nombre_basediseno,
    bd.descripcion_basediseno,
    bd.alto_basediseno,
    bd.ancho_basediseno,
    bd.profundidad_basediseno,
    e.nombre_era,
    co.nombre_coleccion,
    tc.nombre_tipo_cuerpo,
    ojos.nombre_color as color_ojos,
    piel.nombre_color as color_tonopiel,
    rel.nombre_basediseno as diseno_relacionado
  from public.base_diseno bd
  join public.era e on e.id_era = bd.fk_era
  join public.coleccion co on co.id_coleccion = bd.fk_coleccion
  left join public.tipo_cuerpo tc on tc.id_tipo_cuerpo = bd.fk_tipo_cuerpo
  left join public.color ojos on ojos.id_color = bd.fk_color_ojos
  left join public.color piel on piel.id_color = bd.fk_color_tonopiel
  left join public.base_diseno rel on rel.id_basediseno = bd.fk_basediseno
  order by bd.id_basediseno desc;
$$;

create or replace function public.consultar_detalle_basediseno(
  p_id_basediseno integer
)
returns table (
  id_basediseno integer,
  fk_era integer,
  fk_basediseno integer,
  fk_tipo_cuerpo integer,
  fk_coleccion integer,
  fk_color_ojos integer,
  fk_color_tonopiel integer,
  nombre_basediseno varchar,
  descripcion_basediseno varchar,
  alto_basediseno numeric,
  ancho_basediseno numeric,
  profundidad_basediseno numeric,
  construccion jsonb,
  profesion_ids jsonb,
  clasificacion_ids jsonb,
  categoria_ids jsonb,
  setregalo_ids jsonb,
  caracteristicas jsonb,
  fases jsonb
)
language sql
security definer
set search_path = public
as $$
  select
    bd.id_basediseno,
    bd.fk_era,
    bd.fk_basediseno,
    bd.fk_tipo_cuerpo,
    bd.fk_coleccion,
    bd.fk_color_ojos,
    bd.fk_color_tonopiel,
    bd.nombre_basediseno,
    bd.descripcion_basediseno,
    bd.alto_basediseno,
    bd.ancho_basediseno,
    bd.profundidad_basediseno,
    coalesce((
      select jsonb_agg(jsonb_build_object(
        'piezaId', bdc.pfk_pieza,
        'moldeId', bdc.pfk_molde,
        'materiaPrimaId', bdc.pfk_materiaprima,
        'cantidadMateriaPrima', bdc.cantidad_materiaprima
      ) order by bdc.id_basediseno_construccion)
      from public.base_diseno_construccion bdc
      where bdc.pfk_basediseno = bd.id_basediseno
    ), '[]'::jsonb) as construccion,
    coalesce((
      select jsonb_agg(pb.fk_profesion order by pb.fk_profesion)
      from public.profesion_basediseno pb
      where pb.fk_basediseno = bd.id_basediseno
    ), '[]'::jsonb) as profesion_ids,
    coalesce((
      select jsonb_agg(cb.fk_clasificacion order by cb.fk_clasificacion)
      from public.clasificacion_basediseno cb
      where cb.fk_basediseno = bd.id_basediseno
    ), '[]'::jsonb) as clasificacion_ids,
    coalesce((
      select jsonb_agg(cb.fk_categoria order by cb.fk_categoria)
      from public.categoria_basediseno cb
      where cb.fk_basediseno = bd.id_basediseno
    ), '[]'::jsonb) as categoria_ids,
    coalesce((
      select jsonb_agg(bs.fk_set_regalo order by bs.fk_set_regalo)
      from public.basediseno_setregalo bs
      where bs.fk_basediseno = bd.id_basediseno
    ), '[]'::jsonb) as setregalo_ids,
    coalesce((
      select jsonb_agg(jsonb_build_object(
        'caracteristicaId', cb.fk_caracteristica,
        'valor', cb.valor_caracterisitica
      ) order by cb.id_caracteristica_basediseno)
      from public.caracteristica_basediseno cb
      where cb.fk_basediseno = bd.id_basediseno
    ), '[]'::jsonb) as caracteristicas,
    coalesce((
      select jsonb_agg(jsonb_build_object(
        'pruebaId', fd.fk_prueba,
        'faseId', fd.fk_fase,
        'cargoId', fd.fk_cargo,
        'cantidadCargo', fd.cantidad_cargo
      ) order by fd.id_fase_diseno)
      from public.fase_diseno fd
      where fd.fk_basediseno = bd.id_basediseno
    ), '[]'::jsonb) as fases
  from public.base_diseno bd
  where bd.id_basediseno = p_id_basediseno;
$$;

create or replace function public.guardar_basediseno(
  p_id_basediseno integer,
  p_fk_era integer,
  p_fk_basediseno integer,
  p_fk_tipo_cuerpo integer,
  p_fk_coleccion integer,
  p_fk_color_ojos integer,
  p_fk_color_tonopiel integer,
  p_nombre_basediseno text,
  p_descripcion_basediseno text,
  p_alto_basediseno numeric,
  p_ancho_basediseno numeric,
  p_profundidad_basediseno numeric
)
returns table (
  ok boolean,
  mensaje text,
  id_basediseno integer
)
language plpgsql
security definer
set search_path = public
as $$
declare
  v_id_basediseno integer;
  v_constraint_name text;
begin
  if p_fk_era is null or p_fk_era <= 0 then
    return query select false, 'Selecciona una era.', null::integer;
    return;
  end if;

  if p_fk_coleccion is null or p_fk_coleccion <= 0 then
    return query select false, 'Selecciona una colección.', null::integer;
    return;
  end if;

  if nullif(trim(p_nombre_basediseno), '') is null then
    return query select false, 'Ingresa el nombre del diseño.', null::integer;
    return;
  end if;

  if nullif(trim(p_descripcion_basediseno), '') is null then
    return query select false, 'Ingresa la descripcion del diseño.', null::integer;
    return;
  end if;

  if coalesce(p_alto_basediseno, 0) <= 0 or coalesce(p_ancho_basediseno, 0) <= 0 or coalesce(p_profundidad_basediseno, 0) <= 0 then
    return query select false, 'Ingresa medidas mayores a cero.', null::integer;
    return;
  end if;

  if p_id_basediseno is null or p_id_basediseno <= 0 then
    perform public.sincronizar_secuencia_serial('public.base_diseno'::regclass, 'id_basediseno');

    insert into public.base_diseno (
      fk_era,
      fk_basediseno,
      fk_tipo_cuerpo,
      fk_coleccion,
      fk_color_ojos,
      fk_color_tonopiel,
      nombre_basediseno,
      descripcion_basediseno,
      alto_basediseno,
      ancho_basediseno,
      profundidad_basediseno
    ) values (
      p_fk_era,
      nullif(p_fk_basediseno, 0),
      nullif(p_fk_tipo_cuerpo, 0),
      p_fk_coleccion,
      nullif(p_fk_color_ojos, 0),
      nullif(p_fk_color_tonopiel, 0),
      trim(p_nombre_basediseno),
      trim(p_descripcion_basediseno),
      p_alto_basediseno,
      p_ancho_basediseno,
      p_profundidad_basediseno
    )
    returning base_diseno.id_basediseno into v_id_basediseno;

    return query select true, 'Base de diseño creada correctamente.', v_id_basediseno;
    return;
  end if;

  update public.base_diseno bd
  set fk_era = p_fk_era,
      fk_basediseno = nullif(p_fk_basediseno, 0),
      fk_tipo_cuerpo = nullif(p_fk_tipo_cuerpo, 0),
      fk_coleccion = p_fk_coleccion,
      fk_color_ojos = nullif(p_fk_color_ojos, 0),
      fk_color_tonopiel = nullif(p_fk_color_tonopiel, 0),
      nombre_basediseno = trim(p_nombre_basediseno),
      descripcion_basediseno = trim(p_descripcion_basediseno),
      alto_basediseno = p_alto_basediseno,
      ancho_basediseno = p_ancho_basediseno,
      profundidad_basediseno = p_profundidad_basediseno
  where bd.id_basediseno = p_id_basediseno;

  if not found then
    return query select false, 'No se encontro la base de diseño a modificar.', p_id_basediseno;
    return;
  end if;

  return query select true, 'Base de diseño actualizada correctamente.', p_id_basediseno;
exception
  when foreign_key_violation then
    return query select false, 'Uno de los catalogos seleccionados no existe.', coalesce(p_id_basediseno, v_id_basediseno);
  when unique_violation then
    get stacked diagnostics v_constraint_name = constraint_name;

    if lower(coalesce(v_constraint_name, '')) = 'pk_base_diseno' then
      return query select false, 'No se pudo crear el diseño: la secuencia de ID_BASEDISENO esta desincronizada. Ejecuta nuevamente este script y reintenta.', coalesce(p_id_basediseno, v_id_basediseno);
    end if;

    return query select false, 'No se pudo guardar la base de diseño por restriccion única: ' || coalesce(v_constraint_name, sqlerrm), coalesce(p_id_basediseno, v_id_basediseno);
  when others then
    return query select false, 'No se pudo guardar la base de diseño: ' || sqlerrm, coalesce(p_id_basediseno, v_id_basediseno);
end;
$$;

create or replace function public.guardar_basediseno_construccion(
  p_id_basediseno integer,
  p_items jsonb
)
returns table (
  ok boolean,
  mensaje text,
  id_basediseno integer
)
language plpgsql
security definer
set search_path = public
as $$
declare
  v_item jsonb;
begin
  if p_id_basediseno is null or p_id_basediseno <= 0 then
    return query select false, 'Primero guarda la fase 1.', p_id_basediseno;
    return;
  end if;

  if not exists (select 1 from public.base_diseno bd where bd.id_basediseno = p_id_basediseno) then
    return query select false, 'La base de diseño no existe.', p_id_basediseno;
    return;
  end if;

  if p_items is null or jsonb_typeof(p_items) <> 'array' or jsonb_array_length(p_items) = 0 then
    return query select false, 'Agrega al menos una pieza de construcción.', p_id_basediseno;
    return;
  end if;

  for v_item in select value from jsonb_array_elements(p_items)
  loop
    if coalesce((v_item->>'piezaId')::integer, 0) <= 0
       or coalesce((v_item->>'moldeId')::integer, 0) <= 0
       or coalesce((v_item->>'materiaPrimaId')::integer, 0) <= 0
       or coalesce((v_item->>'cantidadMateriaPrima')::integer, 0) <= 0 then
      return query select false, 'Completa pieza, molde, materia prima y cantidad en construcción.', p_id_basediseno;
      return;
    end if;
  end loop;

  delete from public.base_diseno_construccion bdc
  where bdc.pfk_basediseno = p_id_basediseno;

  perform public.sincronizar_secuencia_serial('public.base_diseno_construccion'::regclass, 'id_basediseno_construccion');

  for v_item in select value from jsonb_array_elements(p_items)
  loop
    insert into public.base_diseno_construccion (
      pfk_pieza,
      pfk_molde,
      pfk_materiaprima,
      pfk_basediseno,
      cantidad_materiaprima
    ) values (
      (v_item->>'piezaId')::integer,
      (v_item->>'moldeId')::integer,
      (v_item->>'materiaPrimaId')::integer,
      p_id_basediseno,
      (v_item->>'cantidadMateriaPrima')::integer
    );
  end loop;

  return query select true, 'Construcción guardada correctamente.', p_id_basediseno;
exception
  when foreign_key_violation then
    return query select false, 'Una pieza, molde o materia prima seleccionada no existe.', p_id_basediseno;
  when others then
    return query select false, 'No se pudo guardar la construcción: ' || sqlerrm, p_id_basediseno;
end;
$$;

create or replace function public.guardar_basediseno_caracteristicas(
  p_id_basediseno integer,
  p_profesion_ids integer[],
  p_clasificacion_ids integer[],
  p_categoria_ids integer[],
  p_setregalo_ids integer[],
  p_caracteristicas jsonb
)
returns table (
  ok boolean,
  mensaje text,
  id_basediseno integer
)
language plpgsql
security definer
set search_path = public
as $$
declare
  v_id integer;
  v_item jsonb;
begin
  if p_id_basediseno is null or p_id_basediseno <= 0 then
    return query select false, 'Primero guarda la fase 1.', p_id_basediseno;
    return;
  end if;

  if not exists (select 1 from public.base_diseno bd where bd.id_basediseno = p_id_basediseno) then
    return query select false, 'La base de diseño no existe.', p_id_basediseno;
    return;
  end if;

  delete from public.profesion_basediseno pb where pb.fk_basediseno = p_id_basediseno;
  delete from public.clasificacion_basediseno cb where cb.fk_basediseno = p_id_basediseno;
  delete from public.categoria_basediseno cb where cb.fk_basediseno = p_id_basediseno;
  delete from public.basediseno_setregalo bs where bs.fk_basediseno = p_id_basediseno;
  delete from public.caracteristica_basediseno cb where cb.fk_basediseno = p_id_basediseno;

  perform public.sincronizar_secuencia_serial('public.profesion_basediseno'::regclass, 'id_profesion_basediseno');
  perform public.sincronizar_secuencia_serial('public.clasificacion_basediseno'::regclass, 'id_clasificacion_basediseno');
  perform public.sincronizar_secuencia_serial('public.categoria_basediseno'::regclass, 'id_categoria_basediseno');
  perform public.sincronizar_secuencia_serial('public.basediseno_setregalo'::regclass, 'id_basediseno_setregalo');
  perform public.sincronizar_secuencia_serial('public.caracteristica_basediseno'::regclass, 'id_caracteristica_basediseno');

  foreach v_id in array coalesce(p_profesion_ids, array[]::integer[])
  loop
    if v_id is not null and v_id > 0 then
      insert into public.profesion_basediseno (fk_profesion, fk_basediseno)
      values (v_id, p_id_basediseno);
    end if;
  end loop;

  foreach v_id in array coalesce(p_clasificacion_ids, array[]::integer[])
  loop
    if v_id is not null and v_id > 0 then
      insert into public.clasificacion_basediseno (fk_basediseno, fk_clasificacion)
      values (p_id_basediseno, v_id);
    end if;
  end loop;

  foreach v_id in array coalesce(p_categoria_ids, array[]::integer[])
  loop
    if v_id is not null and v_id > 0 then
      insert into public.categoria_basediseno (fk_basediseno, fk_categoria)
      values (p_id_basediseno, v_id);
    end if;
  end loop;

  foreach v_id in array coalesce(p_setregalo_ids, array[]::integer[])
  loop
    if v_id is not null and v_id > 0 then
      insert into public.basediseno_setregalo (fk_basediseno, fk_set_regalo)
      values (p_id_basediseno, v_id);
    end if;
  end loop;

  if p_caracteristicas is not null and jsonb_typeof(p_caracteristicas) = 'array' then
    for v_item in select value from jsonb_array_elements(p_caracteristicas)
    loop
      if coalesce((v_item->>'caracteristicaId')::integer, 0) > 0 and nullif(trim(v_item->>'valor'), '') is not null then
        insert into public.caracteristica_basediseno (
          fk_basediseno,
          fk_caracteristica,
          valor_caracterisitica
        ) values (
          p_id_basediseno,
          (v_item->>'caracteristicaId')::integer,
          trim(v_item->>'valor')
        );
      end if;
    end loop;
  end if;

  return query select true, 'Caracteristicas guardadas correctamente.', p_id_basediseno;
exception
  when foreign_key_violation then
    return query select false, 'Una caracteristica seleccionada no existe.', p_id_basediseno;
  when others then
    return query select false, 'No se pudieron guardar las caracteristicas: ' || sqlerrm, p_id_basediseno;
end;
$$;

create or replace function public.guardar_fase_diseno(
  p_id_basediseno integer,
  p_items jsonb
)
returns table (
  ok boolean,
  mensaje text,
  id_basediseno integer
)
language plpgsql
security definer
set search_path = public
as $$
declare
  v_item jsonb;
begin
  if p_id_basediseno is null or p_id_basediseno <= 0 then
    return query select false, 'Primero guarda la fase 1.', p_id_basediseno;
    return;
  end if;

  if not exists (select 1 from public.base_diseno bd where bd.id_basediseno = p_id_basediseno) then
    return query select false, 'La base de diseño no existe.', p_id_basediseno;
    return;
  end if;

  if p_items is null or jsonb_typeof(p_items) <> 'array' or jsonb_array_length(p_items) = 0 then
    return query select false, 'Agrega al menos una fase de diseño.', p_id_basediseno;
    return;
  end if;

  for v_item in select value from jsonb_array_elements(p_items)
  loop
    if coalesce((v_item->>'pruebaId')::integer, 0) <= 0
       or coalesce((v_item->>'faseId')::integer, 0) <= 0
       or coalesce((v_item->>'cargoId')::integer, 0) <= 0
       or coalesce((v_item->>'cantidadCargo')::integer, 0) <= 0 then
      return query select false, 'Completa prueba, fase, cargo y cantidad.', p_id_basediseno;
      return;
    end if;
  end loop;

  delete from public.fase_diseno fd
  where fd.fk_basediseno = p_id_basediseno;

  perform public.sincronizar_secuencia_serial('public.fase_diseno'::regclass, 'id_fase_diseno');

  for v_item in select value from jsonb_array_elements(p_items)
  loop
    insert into public.fase_diseno (
      fk_prueba,
      fk_basediseno,
      fk_fase,
      fk_cargo,
      cantidad_cargo
    ) values (
      (v_item->>'pruebaId')::integer,
      p_id_basediseno,
      (v_item->>'faseId')::integer,
      (v_item->>'cargoId')::integer,
      (v_item->>'cantidadCargo')::integer
    );
  end loop;

  return query select true, 'Fases de diseno guardadas correctamente.', p_id_basediseno;
exception
  when foreign_key_violation then
    return query select false, 'Una prueba, fase o cargo seleccionado no existe.', p_id_basediseno;
  when others then
    return query select false, 'No se pudieron guardar las fases: ' || sqlerrm, p_id_basediseno;
end;
$$;
