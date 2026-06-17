/*==============================================================*/
/* Funciones SP de reporte                                      */
/*--------------------------------------------------------------*/
/* Envuelven, sin cambiar su logica, las 3 consultas de         */
/* consultas-reportes.sql para que sean invocables como         */
/* stored procedures (requisito del enunciado) y consumibles    */
/* por jsreport/Angular via RPC REST de Supabase.               */
/*                                                              */
/* Todas SECURITY DEFINER: corren con los permisos del owner,   */
/* por lo que leen las tablas pese a que el acceso REST directo */
/* a tablas este restringido por RLS/GRANT.                     */
/*                                                              */
/* Ejecutar en el SQL Editor de Supabase despues de los datos.  */
/*==============================================================*/


/*--------------------------------------------------------------*/
/* Reporte 1: Cantidad total de unidades (SKU) y Cajas Master   */
/* para subastas (inventario en estatus 6).                     */
/* Caja Master = 12 unidades.                                   */
/*--------------------------------------------------------------*/
CREATE OR REPLACE FUNCTION public.reporte_cajas_master_subastas()
RETURNS TABLE (
    sku          BIGINT,
    cajas_master NUMERIC
)
LANGUAGE sql
SECURITY DEFINER
AS $$
    SELECT count(*)                       AS sku,
           round(count(*)::numeric / 12, 2) AS cajas_master
    FROM   producto p,
           historico_inv_producto h,
           estatus_inventario ei
    WHERE  p.id_producto = h.fk_producto
      AND  h.fk_estatus_inventario = ei.id_estatus_inventario
      AND  ei.id_estatus_inventario = 6;
$$;


/*--------------------------------------------------------------*/
/* Reporte 2: Cantidad de SKUs adquiridos por clientes B2B en   */
/* el RANGO de fechas [p_fecha_inicio, p_fecha_fin] elegido por  */
/* el usuario, agrupado por categoria de producto.              */
/* El fin es inclusivo (cubre el dia completo, columna TIMESTAMP)*/
/*--------------------------------------------------------------*/
DROP FUNCTION IF EXISTS public.reporte_skus_b2b_por_categoria(INT);

CREATE OR REPLACE FUNCTION public.reporte_skus_b2b_por_categoria(
    p_fecha_inicio DATE DEFAULT '2026-01-01',
    p_fecha_fin    DATE DEFAULT '2026-12-31'
)
RETURNS TABLE (
    nombre_categoria VARCHAR,
    cantidad_skus    BIGINT
)
LANGUAGE sql
SECURITY DEFINER
AS $$
    SELECT c.nombre_categoria,
           count(*) AS cantidad_skus
    FROM   detalle_orden_b2b d,
           producto p,
           orden_compra_b2b o,
           categoria_basediseno cd,
           categoria c
    WHERE  d.fk_producto = p.id_producto
      AND  d.fk_orden_compra_b2b = o.id_orden_compra_b2b
      AND  cd.id_categoria_basediseno = p.fk_categoria_basediseno
      AND  cd.fk_categoria = c.id_categoria
      AND  o.fechahora_orden_compra_b2b >= p_fecha_inicio
      AND  o.fechahora_orden_compra_b2b <  (p_fecha_fin + 1)
    GROUP BY c.nombre_categoria;
$$;


/*--------------------------------------------------------------*/
/* Reporte 3: Distribucion porcentual del inventario en transito*/
/* (estatus 3) agrupado por Tono de Piel (color del base diseno)*/
/* porcentaje devuelto como NUMERIC (sin el sufijo ' %') para   */
/* que jsreport lo formatee.                                    */
/*--------------------------------------------------------------*/
CREATE OR REPLACE FUNCTION public.reporte_inventario_transito_por_tono()
RETURNS TABLE (
    nombre_color VARCHAR,
    porcentaje   NUMERIC
)
LANGUAGE sql
SECURITY DEFINER
AS $$
    SELECT c.nombre_color,
           round(
             count(*)::numeric / (
               SELECT count(*)::numeric
               FROM   historico_inv_producto h2,
                      estatus_inventario ei2
               WHERE  h2.fk_estatus_inventario = ei2.id_estatus_inventario
                 AND  ei2.id_estatus_inventario = 3
             ) * 100, 2
           ) AS porcentaje
    FROM   producto p,
           estatus_inventario ei,
           base_diseno bd,
           color c,
           historico_inv_producto h
    WHERE  h.fk_producto = p.id_producto
      AND  h.fk_estatus_inventario = ei.id_estatus_inventario
      AND  p.fk_basediseno = bd.id_basediseno
      AND  bd.fk_color_tonopiel = c.id_color
      AND  ei.id_estatus_inventario = 3
    GROUP BY c.nombre_color;
$$;


/*--------------------------------------------------------------*/
/* Permisos: permitir invocar las funciones via RPC REST con la */
/* publishable key (rol anon) y usuarios autenticados.          */
/*--------------------------------------------------------------*/
GRANT EXECUTE ON FUNCTION public.reporte_cajas_master_subastas()              TO anon, authenticated;
GRANT EXECUTE ON FUNCTION public.reporte_skus_b2b_por_categoria(DATE, DATE)   TO anon, authenticated;
GRANT EXECUTE ON FUNCTION public.reporte_inventario_transito_por_tono()       TO anon, authenticated;
