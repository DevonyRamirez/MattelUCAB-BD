--Calcular la cantidad total de unidades y Cajas Máster para subastas.
select count(*) as sku, count(*)/12 Caja_Master
from producto p, historico_inv_producto h, estatus_inventario as ei 
where p.id_producto=h.fk_producto and
      h.fk_estatus_inventario=ei.id_estatus_inventario and
      ei.id_estatus_inventario=6;

--segundo reporte Cantidad de SKUs adquiridos por clientes B2B en el ultimo año por categoría de producto.
select count(*),c.nombre_categoria
from detalle_orden_b2b d, producto as p, orden_compra_b2b as o, categoria_basediseno as cd, categoria as c 
where d.fk_producto=p.id_producto and
      d.fk_orden_compra_b2b=o.id_orden_compra_b2b and
      cd.id_categoria_basediseno=p.fk_categoria_basediseno and
      cd.fk_categoria=c.id_categoria and
      o.fechahora_orden_compra_b2b>='2026-01-01' and
      o.fechahora_orden_compra_b2b<'2027-01-01'
    group by c.nombre_categoria;

--tercer reporte Distribución porcentual del inventario que se encuentra en tránsito agrupado estrictamente por el atributo "Tono de Piel".
select c.nombre_color, (count(*)::numeric/(Select count(*)::numeric 
                        from historico_inv_producto h2, estatus_inventario ei2 
                        where h.fk_estatus_inventario=ei.id_estatus_inventario and
                         ei2.id_estatus_inventario=3))*100 ||' %' as porcentaje
from  producto p, estatus_inventario ei, base_diseno bd, color c, historico_inv_producto as h 
where h.fk_producto=p.id_producto and
      h.fk_estatus_inventario=ei.id_estatus_inventario and
      p.fk_basediseno=bd.id_basediseno and
      bd.fk_color_tonopiel=c.id_color and 
      ei.id_estatus_inventario=3
    group by c.nombre_color;


select count(*)
from historico_inv_producto as i , producto as p , estatus_inventario as e
where p.id_producto=i.fk_producto and
      i.fk_estatus_inventario=e.id_estatus_inventario and
      e.id_estatus_inventario=3;

select count(*) as inventario_producto_entransito, c.nombre_color
from inventario_producto i join 
producto p on i.fk_producto=p.id_producto 
join historico_inv_producto h on h.fk_producto=p.id_producto 
join estatus_inventario e on h.fk_estatus_inventario=e.id_estatus_inventario join base_diseno bd on bd.id_basediseno=p.fk_basediseno join color c on 
c.id_color=bd.fk_color_tonopiel
where e.id_estatus_inventario=3
group by c.nombre_color;




