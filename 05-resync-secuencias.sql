/*==============================================================*/
/* Resync de secuencias SERIAL                                  */
/*--------------------------------------------------------------*/
/* Los inserts (04-insert.sql) cargan los datos con IDs         */
/* explicitos, por lo que las secuencias internas que PostgreSQL */
/* crea para cada columna SERIAL NO avanzan. Sin este resync, la */
/* primera insercion autogenerada (sin ID) chocaria con una PK  */
/* ya existente (duplicate key value violates unique constraint).*/
/*                                                              */
/* Este bloque recorre TODA columna del schema public que tenga */
/* una secuencia asociada y la reposiciona:                     */
/*   - tabla con datos -> setval(seq, MAX(id), true)            */
/*       => el proximo nextval() devuelve MAX(id)+1             */
/*   - tabla vacia      -> setval(seq, 1, false)               */
/*       => el proximo nextval() devuelve 1                    */
/*                                                              */
/* Ejecutar SIEMPRE despues de 04-insert.sql.                   */
/*==============================================================*/

DO $$
DECLARE
    r        RECORD;
    seq_name TEXT;
    max_id   BIGINT;
BEGIN
    FOR r IN
        SELECT c.table_name, c.column_name
        FROM   information_schema.columns c
        WHERE  c.table_schema = 'public'
          AND  c.column_default LIKE 'nextval(%'
        ORDER  BY c.table_name, c.column_name
    LOOP
        seq_name := pg_get_serial_sequence(
                        format('public.%I', r.table_name),
                        r.column_name);

        IF seq_name IS NULL THEN
            CONTINUE;  -- default nextval pero sin secuencia "owned"; se omite
        END IF;

        EXECUTE format('SELECT COALESCE(MAX(%I), 0) FROM %I',
                       r.column_name, r.table_name)
        INTO max_id;

        IF max_id > 0 THEN
            EXECUTE format('SELECT setval(%L, %s, true)', seq_name, max_id);
        ELSE
            EXECUTE format('SELECT setval(%L, 1, false)', seq_name);
        END IF;

        RAISE NOTICE 'Secuencia % -> %', seq_name,
                     CASE WHEN max_id > 0 THEN max_id::text
                          ELSE '1 (tabla vacia)' END;
    END LOOP;
END $$;
