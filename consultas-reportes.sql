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
WITH total_estatus AS (
    -- PRIMERO: Contamos el total REAL de registros históricos que tienen estatus 3
    SELECT COUNT(*)::numeric AS total_filas
    FROM historico_inv_producto
    WHERE fk_estatus_inventario = 3
)
SELECT 
    c.nombre_color,
    -- Ahora sí dividimos entre el gran total real
    ROUND((COUNT(*)::numeric / t.total_filas) * 100, 2) || ' %' AS porcentaje
FROM historico_inv_producto h
INNER JOIN producto p ON h.fk_producto = p.id_producto
INNER JOIN estatus_inventario ei ON h.fk_estatus_inventario = ei.id_estatus_inventario
INNER JOIN base_diseno bd ON p.fk_basediseno = bd.id_basediseno
INNER JOIN color c ON bd.fk_color_tonopiel = c.id_color
CROSS JOIN total_estatus t -- Traemos el verdadero total para la división
WHERE ei.id_estatus_inventario = 3
GROUP BY c.nombre_color, t.total_filas;



