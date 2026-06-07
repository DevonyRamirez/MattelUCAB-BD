SET CONSTRAINTS ALL DEFERRED;

/*==============================================================*/
/* Table: BANCO       REVISADO                                           */
/*==============================================================*/
create table BANCO (
   ID_BANCO             SERIAL               not null,
   NOMBRE_BANCO         VARCHAR(50)          not null,
   constraint PK_BANCO primary key (ID_BANCO)
);

/*==============================================================*/
/* Index: BANCO_PK     REVISADO                                          */
/*==============================================================*/
create unique index BANCO_PK on BANCO (
ID_BANCO
);

/*==============================================================*/
/* Table: BENEFICIO        REVISADO                                     */
/*==============================================================*/
create table BENEFICIO (
   ID_BENEFICIO         SERIAL               not null,
   NOMBRE_BENEFICIO     VARCHAR(50)          not null,
   DESCRIPCION_BENEFICIO VARCHAR(200)         not null,
   TIPO_BENEFICIO       VARCHAR(50)          not null,
   constraint PK_BENEFICIO primary key (ID_BENEFICIO),
   CONSTRAINT CHK_TIPO_BENEFICIO CHECK (TIPO_BENEFICIO IN ('Salud', 'Vacaciones', 'Bonificación', 'Capacitación', 'Otros', 'Desempeño'))
);

/*==============================================================*/
/* Index: BENEFICIO_PK  REVISADO                                         */
/*==============================================================*/
create unique index BENEFICIO_PK on BENEFICIO (
ID_BENEFICIO
);

/*==============================================================*/
/* Table: CARACTERISTICA      REVISADO                                  */
/*==============================================================*/
create table CARACTERISTICA (
   ID_CARACTERISTICA    SERIAL               not null,
   NOMBRE_CARACTERISTICA VARCHAR(50)          not null,
   DESCRIPCION_CARACTERISTICA VARCHAR(200)         not null,
   constraint PK_CARACTERISTICA primary key (ID_CARACTERISTICA)
);

/*==============================================================*/
/* Index: CARACTERISTICA_PK   REVISADO                                  */
/*==============================================================*/
create unique index CARACTERISTICA_PK on CARACTERISTICA (
ID_CARACTERISTICA
);

/*==============================================================*/
/* Table: CATEGORIA -REVISADO                                       */
/*==============================================================*/
create table CATEGORIA (
   ID_CATEGORIA         SERIAL               not null,
   FK_CATEGORIA_RECURSIVA    INT4                 null,
   NOMBRE_CATEGORIA     VARCHAR(50)          not null,
   DESCRIPCION_CATEGORIA VARCHAR(200)         not null,
   constraint PK_CATEGORIA primary key (ID_CATEGORIA),
   CONSTRAINT FK_CATEGORIA_RECURSIVA FOREIGN KEY (FK_CATEGORIA_RECURSIVA) REFERENCES CATEGORIA(ID_CATEGORIA)
);

/*==============================================================*/
/* Index: CATEGORIA_PK   -REVISADO                                           */
/*==============================================================*/
create unique index CATEGORIA_PK on CATEGORIA (
ID_CATEGORIA
);

/*==============================================================*/
/* Index: SE_DIVIDE_FK -REVISADO                                             */
/*==============================================================*/
create  index SE_DIVIDE_FK on CATEGORIA (
FK_CATEGORIA_RECURSIVA
);

/*==============================================================*/
/* Table: CLASIFICACION   -REVISADO                                      */
/*==============================================================*/
create table CLASIFICACION (
   ID_CLASIFICACION     SERIAL               not null,
   NOMBRE_CLASIFICACION VARCHAR(50)          not null,
   DESCRIPCION_CLASIFICACION VARCHAR(200)         not null,
   constraint PK_CLASIFICACION primary key (ID_CLASIFICACION)
);

/*==============================================================*/
/* Index: CLASIFICACION_PK   -REVISADO                                   */
/*==============================================================*/
create unique index CLASIFICACION_PK on CLASIFICACION (
ID_CLASIFICACION
);

/*==============================================================*/
/* Table: COLECCION        -revisado                                      */
/*==============================================================*/
create table COLECCION (
   ID_COLECCION         SERIAL               not null,
   NOMBRE_COLECCION     VARCHAR(50)          not null,
   DESCRIPCION_COLECCION VARCHAR(200)         not null,
   constraint PK_COLECCION primary key (ID_COLECCION)
);

/*==============================================================*/
/* Index: COLECCION_PK     -revisado                                      */
/*==============================================================*/
create unique index COLECCION_PK on COLECCION (
ID_COLECCION
);

/*==============================================================*/
/* Table: COLOR           -revisado                                      */
/*==============================================================*/
create table COLOR (
   ID_COLOR             SERIAL               not null,
   NOMBRE_COLOR         VARCHAR(50)          not null,
   CODIGO_HEX VARCHAR(20) NOT NULL,
   constraint PK_COLOR primary key (ID_COLOR)
);

/*==============================================================*/
/* Index: COLOR_PK   -revisado                                           */
/*==============================================================*/
create unique index COLOR_PK on COLOR (
ID_COLOR
);

/*==============================================================*/
/* Table: COURIER           REVISADO                                     */
/*==============================================================*/
create table COURIER (
   ID_COURIER           SERIAL               not null,
   NOMBRE_COURIER       VARCHAR(50)          not null,
   constraint PK_COURIER primary key (ID_COURIER)
);

/*==============================================================*/
/* Index: COURIER_PK      REVISADO                                      */
/*==============================================================*/
create unique index COURIER_PK on COURIER (
ID_COURIER
);

/*==============================================================*/
/* Table: DEPARTAMENTO          REVISADO                                */
/*==============================================================*/
create table DEPARTAMENTO (
   ID_DEPARTAMENTO      SERIAL               not null,
   NOMBRE_DEPARTAMENTO  VARCHAR(50)          not null,
   constraint PK_DEPARTAMENTO primary key (ID_DEPARTAMENTO)
);

/*==============================================================*/
/* Index: DEPARTAMENTO_PK    REVISADO                                   */
/*==============================================================*/
create unique index DEPARTAMENTO_PK on DEPARTAMENTO (
ID_DEPARTAMENTO
);

/*==============================================================*/
/* Table: DESCUENTO         REVISADO                                    */
/*==============================================================*/
create table DESCUENTO (
   ID_DESCUENTO         SERIAL               not null,
   NOMBRE_DESCUENTO     VARCHAR(50)          not null,
   DESCRIPCION_DESCUENTO VARCHAR(200)         not null,
   PORCENTAJE_DESCUENTO DECIMAL(5,4)         not null,
   constraint PK_DESCUENTO primary key (ID_DESCUENTO)
);

/*==============================================================*/
/* Index: DESCUENTO_PK    REVISADO                                      */
/*==============================================================*/
create unique index DESCUENTO_PK on DESCUENTO (
ID_DESCUENTO
);

/*==============================================================*/
/* Table: DISTRIBUCION_PAGO_B2B      revisado                           */
/*==============================================================*/
create table DISTRIBUCION_PAGO_B2B (
    ID_DISTRIBUCION_PAGO_B2B SERIAL               not null,
    FK_PAGO_B2B   INT4                 not null,      
   FK_ORDEN_COMPRA_B2B  INT4                 not null,
   MONTO_APLICADO       DECIMAL(10,2)        not null,
   constraint PK_DISTRIBUCION_PAGO_B2B primary key (ID_DISTRIBUCION_PAGO_B2B)
);

/*==============================================================*/
/* Index: DISTRIBUCION_PAGO_B2B_PK    revisado                          */
/*==============================================================*/
create unique index DISTRIBUCION_PAGO_B2B_PK on DISTRIBUCION_PAGO_B2B (
ID_DISTRIBUCION_PAGO_B2B
);

/*==============================================================*/
/* Index: PAGAN_FK         revisado                                     */
/*==============================================================*/
create  index PAGAN_FK on DISTRIBUCION_PAGO_B2B (
FK_ORDEN_COMPRA_B2B
);

/*==============================================================*/
/* Index: SE_REPARTE_FK    revisado                                      */
/*==============================================================*/
create  index SE_REPARTE_FK on DISTRIBUCION_PAGO_B2B (
FK_PAGO_B2B
);

/*==============================================================*/
/* Table: ERA              REVISADO                                     */
/*==============================================================*/
create table ERA (
   ID_ERA               SERIAL               not null,
   NOMBRE_ERA           VARCHAR(50)          not null,
   DESCRIPCION_ERA      VARCHAR(200)         not null,
   constraint PK_ERA primary key (ID_ERA)
);

/*==============================================================*/
/* Index: ERA_PK     REVISADO                                           */
/*==============================================================*/
create unique index ERA_PK on ERA (
ID_ERA
);

/*==============================================================*/
/* Table: ESTATUS_BACKORDER    REVISADO                                 */
/*==============================================================*/
create table ESTATUS_BACKORDER (
   ID_ESTATUS_BACKORDER SERIAL               not null,
   NOMBRE_ESTATUS_BACKORDER VARCHAR(50)          not null,
   DESCRIPCION_ESTATUS_BACKORDER VARCHAR(200)         not null,
   constraint PK_ESTATUS_BACKORDER primary key (ID_ESTATUS_BACKORDER)
);

/*==============================================================*/
/* Index: ESTATUS_BACKORDER_PK    REVISADO                              */
/*==============================================================*/
create unique index ESTATUS_BACKORDER_PK on ESTATUS_BACKORDER (
ID_ESTATUS_BACKORDER
);

/*==============================================================*/
/* Table: ESTATUS_FASE_PRODUCCION   REVISADO                            */
/*==============================================================*/
create table ESTATUS_FASE_PRODUCCION (
   ID_ESTATUS_FP        SERIAL               not null,
   NOMBRE_ESTATUS_FP    VARCHAR(50)          not null,
   DESCRIPCION_ESTATUS_FP VARCHAR(200)         not null,
   constraint PK_ESTATUS_FASE_PRODUCCION primary key (ID_ESTATUS_FP)
);

/*==============================================================*/
/* Index: ESTATUS_FASE_PRODUCCION_PK  REVISADO                          */
/*==============================================================*/
create unique index ESTATUS_FASE_PRODUCCION_PK on ESTATUS_FASE_PRODUCCION (
ID_ESTATUS_FP
);

/*==============================================================*/
/* Table: ESTATUS_GANADOR    REVISADO                                   */
/*==============================================================*/
create table ESTATUS_GANADOR (
   ID_ESTATUS_GANADOR   SERIAL               not null,
   NOMBRE_ESTATUS_GANADOR VARCHAR(50)          not null,
   DESC_ESTATUS_GANADOR VARCHAR(200)         not null,
   constraint PK_ESTATUS_GANADOR primary key (ID_ESTATUS_GANADOR)
);

/*==============================================================*/
/* Index: ESTATUS_GANADOR_PK      REVISADO                              */
/*==============================================================*/
create unique index ESTATUS_GANADOR_PK on ESTATUS_GANADOR (
ID_ESTATUS_GANADOR
);

/*==============================================================*/
/* Table: ESTATUS_INVENTARIO     REVISADO                               */
/*==============================================================*/
create table ESTATUS_INVENTARIO (
   ID_ESTATUS_INVENTARIO SERIAL               not null,
   NOMBRE_ESTATUS_INVENTARIO VARCHAR(50)          not null,
   DESCRIPCION_ESTATUS_INVENTARIO VARCHAR(200)         not null,
   constraint PK_ESTATUS_INVENTARIO primary key (ID_ESTATUS_INVENTARIO)
);

/*==============================================================*/
/* Index: ESTATUS_INVENTARIO_PK   REVISADO                              */
/*==============================================================*/
create unique index ESTATUS_INVENTARIO_PK on ESTATUS_INVENTARIO (
ID_ESTATUS_INVENTARIO
);

/*==============================================================*/
/* Table: ESTATUS_MEMBRESIA        REVISADO                             */
/*==============================================================*/
create table ESTATUS_MEMBRESIA (
   ID_ESTATUS_MEMBRESIA SERIAL               not null,
   NOMBRE_ESTATUS_MEMBRESIA VARCHAR(20)          not null,
   DESCRIPCION_ESTATUS_MEMBRESIA VARCHAR(200)         not null,
   constraint PK_ESTATUS_MEMBRESIA primary key (ID_ESTATUS_MEMBRESIA)
);

/*==============================================================*/
/* Index: ESTATUS_MEMBRESIA_PK  REVISADO                                */
/*==============================================================*/
create unique index ESTATUS_MEMBRESIA_PK on ESTATUS_MEMBRESIA (
ID_ESTATUS_MEMBRESIA
);

/*==============================================================*/
/* Table: ESTATUS_ORDEN_B2B   REVISADO                                  */
/*==============================================================*/
create table ESTATUS_ORDEN_B2B (
   ID_ESTATUS_ORDEN_B2B SERIAL               not null,
   NOMBRE_ESTATUS_ORDEN_B2B VARCHAR(50)          not null,
   DESCRIPCION_ORDEN_B2B VARCHAR(200)         not null,
   constraint PK_ESTATUS_ORDEN_B2B primary key (ID_ESTATUS_ORDEN_B2B)
);

/*==============================================================*/
/* Index: ESTATUS_ORDEN_B2B_PK  REVISADO                                */
/*==============================================================*/
create unique index ESTATUS_ORDEN_B2B_PK on ESTATUS_ORDEN_B2B (
ID_ESTATUS_ORDEN_B2B
);

/*==============================================================*/
/* Table: ESTATUS_ORDEN_COMPRA_B2C   REVISADO                           */
/*==============================================================*/
create table ESTATUS_ORDEN_COMPRA_B2C (
   ID_ESTATUS_B2C       SERIAL               not null,
   NOMBRE_ESTATUS_ORDEN_B2C VARCHAR(50)          not null,
   DESCRIPCION_ESTATUS_ORDEN_B2C VARCHAR(200)         not null,
   constraint PK_ESTATUS_ORDEN_COMPRA_B2C primary key (ID_ESTATUS_B2C)
);

/*==============================================================*/
/* Index: ESTATUS_ORDEN_COMPRA_B2C_PK  REVISADO                         */
/*==============================================================*/
create unique index ESTATUS_ORDEN_COMPRA_B2C_PK on ESTATUS_ORDEN_COMPRA_B2C (
ID_ESTATUS_B2C
);

/*==============================================================*/
/* Table: ESTATUS_PAGO_MEMBRESIA   REVISADO                             */
/*==============================================================*/
create table ESTATUS_PAGO_MEMBRESIA (
   ID_ESTATUS_PAGO_MEMBRESIA SERIAL               not null,
   NOMBRE_ESTATUS_PAGO_MEMBRESIA VARCHAR(50)          not null,
   DESC_ESTATUS_PAGO_MEMB VARCHAR(200)         not null,
   constraint PK_ESTATUS_PAGO_MEMBRESIA primary key (ID_ESTATUS_PAGO_MEMBRESIA)
);

/*==============================================================*/
/* Index: ESTATUS_PAGO_MEMBRESIA_PK  REVISADO                           */
/*==============================================================*/
create unique index ESTATUS_PAGO_MEMBRESIA_PK on ESTATUS_PAGO_MEMBRESIA (
ID_ESTATUS_PAGO_MEMBRESIA
);

/*==============================================================*/
/* Table: ESTATUS_PRECIO   REVISADO                                     */
/*==============================================================*/
create table ESTATUS_PRECIO (
   ID_ESTATUS_PRECIO    SERIAL               not null,
   NOMBRE_ESTATUS_PRECIO VARCHAR(50)          not null,
   DESCRIPCION_ESTATUS_PRECIO VARCHAR(200)         not null,
   constraint PK_ESTATUS_PRECIO primary key (ID_ESTATUS_PRECIO)
);

/*==============================================================*/
/* Index: ESTATUS_PRECIO_PK    REVISADO                                 */
/*==============================================================*/
create unique index ESTATUS_PRECIO_PK on ESTATUS_PRECIO (
ID_ESTATUS_PRECIO
);

/*==============================================================*/
/* Table: ESTATUS_PUJA    REVISADO                                      */
/*==============================================================*/
create table ESTATUS_PUJA (
   ID_ESTATUS_PUJA      SERIAL               not null,
   NOMBRE_ESTATUS_PUJA  VARCHAR(20)          not null,
   DESCRIPCION_ESTATUS_PUJA VARCHAR(200)         not null,
   constraint PK_ESTATUS_PUJA primary key (ID_ESTATUS_PUJA)
);

/*==============================================================*/
/* Index: ESTATUS_PUJA_PK REVISADO                                      */
/*==============================================================*/
create unique index ESTATUS_PUJA_PK on ESTATUS_PUJA (
ID_ESTATUS_PUJA
);

/*==============================================================*/
/* Table: ESTATUS_SUBASTA   REVISADO                                    */
/*==============================================================*/
create table ESTATUS_SUBASTA (
   ID_ESTATUS_SUBASTA   SERIAL               not null,
   NOMBRE_ESTATUS_SUBASTA VARCHAR(50)          not null,
   DESCRIPCION_ESTATUS_SUBASTA VARCHAR(200)         not null,
   constraint PK_ESTATUS_SUBASTA primary key (ID_ESTATUS_SUBASTA)
);

/*==============================================================*/
/* Index: ESTATUS_SUBASTA_PK   REVISADO                                 */
/*==============================================================*/
create unique index ESTATUS_SUBASTA_PK on ESTATUS_SUBASTA (
ID_ESTATUS_SUBASTA
);

/*==============================================================*/
/* Table: FASE   REVISADO                                               */
/*==============================================================*/
create table FASE (
   ID_FASE              SERIAL               not null,
   NOMBRE_FASE          VARCHAR(50)          not null,
   DESCRIPCION_FASE     VARCHAR(200)         not null,
   constraint PK_FASE primary key (ID_FASE)
);

/*==============================================================*/
/* Index: FASE_PK   REVISADO                                            */
/*==============================================================*/
create unique index FASE_PK on FASE (
ID_FASE
);

/*==============================================================*/
/* Table: HISTORICO_MEMBRESIA    REVISADO                               */
/*==============================================================*/
create table HISTORICO_MEMBRESIA (
    ID_HISTORICO_MEMBRESIA SERIAL               not null,
   FK_ESTATUS_MEMBRESIA INT4                 not null,
   FK_MEMBRESIA_CLIENTE_B2C INT4                 not null,
   MEMBRESIA_FECHA_INICIO DATE                 not null,
   MEMBRESIA_FECHA_FIN  DATE                 null,
   constraint PK_HISTORICO_MEMBRESIA primary key (ID_HISTORICO_MEMBRESIA)
);

/*==============================================================*/
/* Index: HISTORICO_MEMBRESIA_PK REVISADO                                */
/*==============================================================*/
create unique index HISTORICO_MEMBRESIA_PK on HISTORICO_MEMBRESIA (
ID_HISTORICO_MEMBRESIA
);

/*==============================================================*/
/* Index: DESCRIBE_FK     REVISADO                                      */
/*==============================================================*/
create  index DESCRIBE_FK on HISTORICO_MEMBRESIA (
FK_ESTATUS_MEMBRESIA
);

/*==============================================================*/
/* Index: ES_REGISTRADA_FK REVISADO                                     */
/*==============================================================*/
create  index ES_REGISTRADA_FK on HISTORICO_MEMBRESIA (
FK_MEMBRESIA_CLIENTE_B2C
);

/*==============================================================*/
/* Table: HORARIO            REVISADO                                   */
/*==============================================================*/
create table HORARIO (
   ID_HORARIO           SERIAL               not null,
   DIA_HORARIO          VARCHAR(50)          not null,
   HORA_ENTRADA_HORARIO TIME                 not null,
   HORA_ENTRADA_SALIDA  TIME                 not null,
   TURNO_HORARIO        VARCHAR(50)          not null,
   constraint PK_HORARIO primary key (ID_HORARIO),
   constraint CHK_TURNO_HORARIO check (TURNO_HORARIO in ('mañana','tarde','noche')),
   constraint CHK_DIA_HORARIO check (DIA_HORARIO in ('Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo'))
);

/*==============================================================*/
/* Index: HORARIO_PK            REVISADO                                */
/*==============================================================*/
create unique index HORARIO_PK on HORARIO (
ID_HORARIO
);

/*==============================================================*/
/* Table: INVENTARIO_PRODUCTO       REVISADO                            */
/*==============================================================*/
create table INVENTARIO_PRODUCTO (
    ID_INVENTARIO_PRODUCTO SERIAL               not null,
   FK_SEDE              INT4                 not null,
   FK_PRODUCTO          INT4                 not null,
   CANTIDAD_PRODUCTO    INT4                 not null,
   constraint PK_INVENTARIO_PRODUCTO primary key (ID_INVENTARIO_PRODUCTO)
);

/*==============================================================*/
/* Index: INVENTARIO_PRODUCTO_PK   REVISADO                             */
/*==============================================================*/
create unique index INVENTARIO_PRODUCTO_PK on INVENTARIO_PRODUCTO (
ID_INVENTARIO_PRODUCTO
);

/*==============================================================*/
/* Index: CONTIENE_FK     REVISADO                                      */
/*==============================================================*/
create  index CONTIENE_FK on INVENTARIO_PRODUCTO (
FK_SEDE
);

/*==============================================================*/
/* Index: SE_ALMACENA_FK    REVISADO                                    */
/*==============================================================*/
create  index SE_ALMACENA_FK on INVENTARIO_PRODUCTO (
FK_PRODUCTO
);

/*==============================================================*/
/* Table: LUGAR-REVISADO                                        */
/*==============================================================*/
create table LUGAR (
   ID_LUGAR             SERIAL               not null,
   FK_LUGAR         INT4                 null,
   NOMBRE_LUGAR         VARCHAR(50)          not null,
   TIPO_LUGAR           VARCHAR(20)          not null,
   constraint PK_LUGAR primary key (ID_LUGAR),
   constraint FK_LUGAR foreign key (FK_LUGAR) references LUGAR(ID_LUGAR),
   constraint CHK_TIPO_LUGAR check (TIPO_LUGAR in ('estado','municipio','parroquia'))
);

/*==============================================================*/
/* Index: LUGAR_PK-REVISADO                                             */
/*==============================================================*/
create unique index LUGAR_PK on LUGAR (
ID_LUGAR
);

/*==============================================================*/
/* Index: DIVIDE_FK-REVISADO                                        */
/*==============================================================*/
create  index DIVIDE_FK on LUGAR (
FK_LUGAR
);

/*==============================================================*/
/* Table: MATERIAPRIMA     REVISADO                                     */
/*==============================================================*/
create table MATERIAPRIMA (
   ID_MATERIAPRIMA      SERIAL               not null,
   NOMBRE_MATERIAPRIMA  VARCHAR(50)          not null,
   DESCRIPCION_MATERIAPRIMA VARCHAR(200)         not null,
   constraint PK_MATERIAPRIMA primary key (ID_MATERIAPRIMA)
);

/*==============================================================*/
/* Index: MATERIAPRIMA_PK     REVISADO                                  */
/*==============================================================*/
create unique index MATERIAPRIMA_PK on MATERIAPRIMA (
ID_MATERIAPRIMA
);

/*==============================================================*/
/* Table: MEMBRESIA      REVISADO                                       */
/*==============================================================*/
create table MEMBRESIA (
   ID_MEMBRESIA         SERIAL               not null,
   NOMBRE_MEMBRESIA     VARCHAR(50)          not null,
   DESCRIPCION_MEMBRESIA VARCHAR(200)         not null,
   PRECIO_MEMBRESIA     DECIMAL(20,2)        not null,
   constraint PK_MEMBRESIA primary key (ID_MEMBRESIA)
);

/*==============================================================*/
/* Index: MEMBRESIA_PK     REVISADO                                     */
/*==============================================================*/
create unique index MEMBRESIA_PK on MEMBRESIA (
ID_MEMBRESIA
);

/*==============================================================*/
/* Table: MOLDE   -revisado                                      */
/*==============================================================*/
create table MOLDE (
   ID_MOLDE             SERIAL               not null,
   NOMBRE_MOLDE         VARCHAR(50)          not null,
   DESCRIPCION_MOLDE    VARCHAR(200)         not null,
   constraint PK_MOLDE primary key (ID_MOLDE)
);

/*==============================================================*/
/* Index: MOLDE_PK    -revisado                                           */
/*==============================================================*/
create unique index MOLDE_PK on MOLDE (
ID_MOLDE
);

/*==============================================================*/
/* Table: MONEDA   REVISADO                                             */
/*==============================================================*/
create table MONEDA (
   ID_MONEDA            SERIAL               not null,
   NOMBRE_MONEDA        VARCHAR(20)          not null,
   SIMBOLO_MONEDA       VARCHAR(10)          not null,
   TIPO_MONEDA          VARCHAR(20)          not null,
   constraint PK_MONEDA primary key (ID_MONEDA),
   CONSTRAINT CHK_TIPO_MONEDA check (TIPO_MONEDA in ('Interna','Criptomoneda','Externa'))
);

/*==============================================================*/
/* Index: MONEDA_PK    REVISADO                                         */
/*==============================================================*/
create unique index MONEDA_PK on MONEDA (
ID_MONEDA
);

/*==============================================================*/
/* Table: PENALIZACION   REVISADO                                       */
/*==============================================================*/
create table PENALIZACION (
   ID_PENALIZACION      SERIAL               not null,
   NOMBRE_PENALIZACION  VARCHAR(50)          not null,
   DESCRIPCION_PENALIZACION VARCHAR(200)         not null,
   ESTADO_PENALIZACION  VARCHAR(50)          not null,
   FECHA_PENALIZACION   DATE                 not null,
   constraint PK_PENALIZACION primary key (ID_PENALIZACION),
   CONSTRAINT CK_PENALIZACION_ESTADO CHECK (ESTADO_PENALIZACION IN ('Activa','Inactiva','Pendiente'))
);

/*==============================================================*/
/* Index: PENALIZACION_PK       REVISADO                                */
/*==============================================================*/
create unique index PENALIZACION_PK on PENALIZACION (
ID_PENALIZACION
);

/*==============================================================*/
/* Table: PIEZA           -revisado                                       */
/*==============================================================*/
create table PIEZA (
   ID_PIEZA             SERIAL               not null,
   NOMBRE_PIEZA         VARCHAR(50)          not null,
   DESCRIPCION_PIEZA    VARCHAR(200)         not null,
   constraint PK_PIEZA primary key (ID_PIEZA)
);

/*==============================================================*/
/* Index: PIEZA_PK    -revisado                                           */
/*==============================================================*/
create unique index PIEZA_PK on PIEZA (
ID_PIEZA
);

/*==============================================================*/
/* Table: PRIVILEGIO    REVISADO                                        */
/*==============================================================*/
create table PRIVILEGIO (
   ID_PRIVILEGIO        SERIAL               not null,
   DESCRIPCION_PRIVILEGIO VARCHAR(300)         not null,
   constraint PK_PRIVILEGIO primary key (ID_PRIVILEGIO)
);

/*==============================================================*/
/* Index: PRIVILEGIO_PK  REVISADO                                       */
/*==============================================================*/
create unique index PRIVILEGIO_PK on PRIVILEGIO (
ID_PRIVILEGIO
);

/*==============================================================*/
/* Table: PROFESION     revisado                                        */
/*==============================================================*/
create table PROFESION (
   ID_PROFESION         SERIAL               not null,
   NOMBRE_PROFESION     VARCHAR(50)          not null,
   DESCRIPCION_PROFESION VARCHAR(200)         not null,
   constraint PK_PROFESION primary key (ID_PROFESION)
);

/*==============================================================*/
/* Index: PROFESION_PK  revisado                                        */
/*==============================================================*/
create unique index PROFESION_PK on PROFESION (
ID_PROFESION
);

/*==============================================================*/
/* Table: PRUEBA    revisado                                            */
/*==============================================================*/
create table PRUEBA (
   ID_PRUEBA            SERIAL               not null,
   NOMBRE_PRUEBA        VARCHAR(50)          not null,
   DESCRIPCION_PRUEBA   VARCHAR(200)         not null,
   constraint PK_PRUEBA primary key (ID_PRUEBA)
);

/*==============================================================*/
/* Index: PRUEBA_PK revisado                                            */
/*==============================================================*/
create unique index PRUEBA_PK on PRUEBA (
ID_PRUEBA
);

/*==============================================================*/
/* Table: ROL     revisado                                              */
/*==============================================================*/
create table ROL (
   ID_ROL               SERIAL               not null,
   NOMBRE_ROL           VARCHAR(50)          not null,
   DESCRIPCION_ROL      VARCHAR(300)         null,
   constraint PK_ROL primary key (ID_ROL)
);

/*==============================================================*/
/* Index: ROL_PK    revisado                                            */
/*==============================================================*/
create unique index ROL_PK on ROL (
ID_ROL
);

/*==============================================================*/
/* Table: SET_REGALO  revisado                                          */
/*==============================================================*/
create table SET_REGALO (
   ID_SET_REGALO        SERIAL               not null,
   NOMBRE_SET_REGALO    VARCHAR(50)          not null,
   constraint PK_SET_REGALO primary key (ID_SET_REGALO)
);

/*==============================================================*/
/* Index: SET_REGALO_PK  revisado                                       */
/*==============================================================*/
create unique index SET_REGALO_PK on SET_REGALO (
ID_SET_REGALO
);

/*==============================================================*/
/* Table: TABULADOR_SALARIAL   revisado                                 */
/*==============================================================*/
create table TABULADOR_SALARIAL (
   ID_TABULADOR_SALARIAL SERIAL               not null,
   SUELDO_MENSUAL       DECIMAL(20,2)        not null,
   SUELDO_HORA          DECIMAL(20,2)        not null,
   constraint PK_TABULADOR_SALARIAL primary key (ID_TABULADOR_SALARIAL)
);

/*==============================================================*/
/* Index: TABULADOR_SALARIAL_PK  revisado                               */
/*==============================================================*/
create unique index TABULADOR_SALARIAL_PK on TABULADOR_SALARIAL (
ID_TABULADOR_SALARIAL
);

/*==============================================================*/
/* Table: TIPO_CRIPTOMONEDA  REVISADO                                   */
/*==============================================================*/
create table TIPO_CRIPTOMONEDA (
   ID_TIPO_CRIPTOMONEDA SERIAL               not null,
   RED_BLOCKCHAIN       VARCHAR(30)          not null,
   constraint PK_TIPO_CRIPTOMONEDA primary key (ID_TIPO_CRIPTOMONEDA)
);

/*==============================================================*/
/* Index: TIPO_CRIPTOMONEDA_PK  REVISADO                                */
/*==============================================================*/
create unique index TIPO_CRIPTOMONEDA_PK on TIPO_CRIPTOMONEDA (
ID_TIPO_CRIPTOMONEDA
);

/*==============================================================*/
/* Table: TIPO_CUERPO- revisado     REVISADO                                    */
/*==============================================================*/
create table TIPO_CUERPO (
   ID_TIPO_CUERPO       SERIAL               not null,
   NOMBRE_TIPO_CUERPO   VARCHAR(50)          not null,
   DESCRIPCION_TIPO_CUERPO VARCHAR(200)         not null,
   constraint PK_TIPO_CUERPO primary key (ID_TIPO_CUERPO)
);

/*==============================================================*/
/* Index: TIPO_CUERPO_PK- revisado                                        */
/*==============================================================*/
create unique index TIPO_CUERPO_PK on TIPO_CUERPO (
ID_TIPO_CUERPO
);

/*==============================================================*/
/* Table: TIPO_TRANSPORTE   REVISADO                                    */
/*==============================================================*/
create table TIPO_TRANSPORTE (
   ID_TIPO_TRANSPORTE   SERIAL               not null,
   NOMBRE_TIPO_TRANSPORTE VARCHAR(50)          not null,
   DESCRIPCION_TIPO_TRANSPORTE VARCHAR(200)         not null,
   constraint PK_TIPO_TRANSPORTE primary key (ID_TIPO_TRANSPORTE)
);

/*==============================================================*/
/* Index: TIPO_TRANSPORTE_PK                                    */
/*==============================================================*/
create unique index TIPO_TRANSPORTE_PK on TIPO_TRANSPORTE (
ID_TIPO_TRANSPORTE
);

/*==============================================================*/
/* Table: CHEQUE -REVISADO                                               */
/*==============================================================*/
create table CHEQUE (
   ID_CHEQUE      SERIAL               not null,
   FK_BANCO_CHEQUE            INT4                 not null,
   NUMERO_CHEQUE        VARCHAR(8)           not null,
   constraint PK_CHEQUE primary key (ID_CHEQUE),
   CONSTRAINT FK_BANCO_CHEQUE FOREIGN KEY (FK_BANCO_CHEQUE) REFERENCES BANCO(ID_BANCO)
);

/*==============================================================*/
/* Index: CHEQUE_PK   -REVISADO                                          */
/*==============================================================*/
create unique index CHEQUE_PK on CHEQUE (
ID_CHEQUE
);

/*==============================================================*/
/* Index: ES_EXPEDIDO_FK  -REVISADO                                      */
/*==============================================================*/
create  index ES_EXPEDIDO_FK on CHEQUE (
FK_BANCO_CHEQUE
);

/*==============================================================*/
/* Table: TARJETA_CREDITO  revisado                                     */
/*==============================================================*/
create table TARJETA_CREDITO (
   ID_TARJETA_CREDITO       SERIAL               not null,
   FK_BANCO             INT4                 not null,
   NUMERO_TARJETA_CREDITO VARCHAR(16)          not null,
   CVV_TARJETA_CREDITO  VARCHAR(3)           not null,
   FECHAEXP_TARJETA_CREDITO DATE                 not null,
   TARJETAHABIENTE_CREDITO VARCHAR(100)         not null,
   constraint PK_TARJETA_CREDITO primary key (ID_TARJETA_CREDITO),
   CONSTRAINT FK_TARJETA_CREDITO_ES_EMITIDA_POR FOREIGN KEY (FK_BANCO) REFERENCES BANCO(ID_BANCO),
   CONSTRAINT CK_TARJETA_CREDITO CHECK (FECHAEXP_TARJETA_CREDITO > CURRENT_DATE)
);

/*==============================================================*/
/* Index: TARJETA_CREDITO_PK   revisado                                 */
/*==============================================================*/
create unique index TARJETA_CREDITO_PK on TARJETA_CREDITO (
ID_TARJETA_CREDITO
);

/*==============================================================*/
/* Index: EMITE_FK  revisado                                            */
/*==============================================================*/
create  index EMITE_FK on TARJETA_CREDITO (
FK_BANCO
);

/*==============================================================*/
/* Table: TARJETA_DEBITO    REVISADO                                    */
/*==============================================================*/
create table TARJETA_DEBITO (
   ID_TARJETA_DEBITO       SERIAL               not null,
   FK_BANCO             INT4                 not null,
   NUMERO_TARJETA_DEBITO VARCHAR(16)          not null,
   CVV_TARJETA_DEBITO   VARCHAR(3)           not null,
   FECHAVENC_TARJETA_DEBITO DATE                 not null,
   TARJETAHABIENTE_DEBITO VARCHAR(100)         not null,
   constraint PK_TARJETA_DEBITO primary key (ID_TARJETA_DEBITO),
    CONSTRAINT FK_TARJETA_DEBITO_ES_EMITIDA_POR FOREIGN KEY (FK_BANCO) REFERENCES BANCO(ID_BANCO),
    CONSTRAINT CK_TARJETA_DEBITO CHECK (FECHAVENC_TARJETA_DEBITO > CURRENT_DATE)
);

/*==============================================================*/
/* Index: TARJETA_DEBITO_PK   revisado                                 */
/*==============================================================*/
create unique index TARJETA_DEBITO_PK on TARJETA_DEBITO (
ID_TARJETA_DEBITO
);

/*==============================================================*/
/* Index: ES_EMITIDO_FK  REVISADO                                       */
/*==============================================================*/
create  index ES_EMITIDO_FK on TARJETA_DEBITO (
FK_BANCO
);

/*==============================================================*/
/* Table: TRANSFERENCIA_BANCARIA-REVISADO                                */
/*==============================================================*/
create table TRANSFERENCIA_BANCARIA (
   ID_TRANSFERENCIA_BANCARIA SERIAL               not null,
   FK_BANCO             INT4                 not null,
   constraint PK_TRANSFERENCIA_BANCARIA primary key (ID_TRANSFERENCIA_BANCARIA),
   constraint fk_banco_transferencia foreign key  (FK_BANCO) references BANCO(ID_BANCO)
);


/*==============================================================*/
/* Index: TRANSFERENCIA_BANCARIA_PK-REVISADO                             */
/*==============================================================*/
create unique index TRANSFERENCIA_BANCARIA_PK on TRANSFERENCIA_BANCARIA (
ID_TRANSFERENCIA_BANCARIA
);

/*==============================================================*/
/* Index: ES_TRANSFERIDO_FK-REVISADO                                      */
/*==============================================================*/
create  index ES_TRANSFERIDO_FK on TRANSFERENCIA_BANCARIA (
FK_BANCO
);

/*==============================================================*/
/* Table: CATEGORIA_CATEGORIA     -REVISADO                                */
/*==============================================================*/
create table CATEGORIA_CATEGORIA (
   ID_CATEGORIA_CATEGORIA     SERIAL                 not null,
   FK_CATEGORIA_MADRE        INT4                 not null,
   FK_CATEGORIA_PADRE        INT4                 null,
   constraint PK_CATEGORIA_CATEGORIA primary key (ID_CATEGORIA_CATEGORIA),
   CONSTRAINT FK_CATEGORIA_CATEGORIA_MADRE FOREIGN KEY (FK_CATEGORIA_MADRE) REFERENCES CATEGORIA(ID_CATEGORIA),
   constraint FK_CATEGORIA_CATEGORIA_PADRE FOREIGN KEY (FK_CATEGORIA_PADRE) REFERENCES CATEGORIA(ID_CATEGORIA)
);

/*==============================================================*/
/* Index: CATEGORIA_CATEGORIA_PK   -REVISADO                              */
/*==============================================================*/
create unique index CATEGORIA_CATEGORIA_PK on CATEGORIA_CATEGORIA (
ID_CATEGORIA_CATEGORIA
);

/*==============================================================*/
/* Index: VINCULA_FK          -REVISADO                                   */
/*==============================================================*/
create  index VINCULA_FK on CATEGORIA_CATEGORIA (
FK_CATEGORIA_MADRE
);

/*==============================================================*/
/* Index: RELACIONA_FK   -REVISADO                                        */
/*==============================================================*/
create  index ES_VINCULADO_FK on CATEGORIA_CATEGORIA (
FK_CATEGORIA_PADRE
);

/*==============================================================*/
/* Table: BASE_DISENO   revisado                                        */
/*==============================================================*/
create table BASE_DISENO (
   ID_BASEDISENO        SERIAL               not null,
   FK_ERA               INT4                 not null,
   FK_BASEDISENO    INT4                 null,
   FK_TIPO_CUERPO       INT4                 null,
   FK_COLECCION         INT4                 not null,
   FK_COLOR_OJOS            INT4                 null,
   FK_COLOR_TONOPIEL       INT4                 null,
   NOMBRE_BASEDISENO    VARCHAR(60)          not null,
   DESCRIPCION_BASEDISENO VARCHAR(300)         not null,
   ALTO_BASEDISENO      DECIMAL(10,2)         not null,
   ANCHO_BASEDISENO     DECIMAL(10,2)         not null,
   PROFUNDIDAD_BASEDISENO DECIMAL(10,2)         not null,
   constraint PK_BASE_DISENO primary key (ID_BASEDISENO),
   CONSTRAINT FK_BASEDISENO_ERA FOREIGN KEY (FK_ERA) REFERENCES ERA(ID_ERA),
   CONSTRAINT FK_BASEDISENO_BASEDISENO FOREIGN KEY (FK_BASEDISENO) REFERENCES BASE_DISENO(ID_BASEDISENO),
    CONSTRAINT FK_BASEDISENO_TIPO_CUERPO FOREIGN KEY (FK_TIPO_CUERPO) REFERENCES TIPO_CUERPO(ID_TIPO_CUERPO),
    CONSTRAINT FK_BASEDISENO_COLECCION FOREIGN KEY (FK_COLECCION) REFERENCES COLECCION(ID_COLECCION),
    CONSTRAINT FK_BASEDISENO_COLOR_OJOS FOREIGN KEY (FK_COLOR_OJOS) REFERENCES COLOR(ID_COLOR),
    CONSTRAINT FK_BASEDISENO_COLOR_TONOPIEL FOREIGN KEY (FK_COLOR_TONOPIEL) REFERENCES COLOR(ID_COLOR)
);

/*==============================================================*/
/* Index: BASE_DISENO_PK       -REVISADO                                   */
/*==============================================================*/
create unique index BASE_DISENO_PK on BASE_DISENO (
ID_BASEDISENO
);

/*==============================================================*/
/* Index: ES_PARTE_DE2_FK       -REVISADO                                  */
/*==============================================================*/
create  index ES_PARTE_DE2_FK on BASE_DISENO (
FK_COLECCION
);

/*==============================================================*/
/* Index: PERTENECE2_FK     -REVISADO                                      */
/*==============================================================*/
create  index PERTENECE2_FK on BASE_DISENO (
FK_ERA
);

/*==============================================================*/
/* Index: RELACIONA_FK       -REVISADO                                     */
/*==============================================================*/
create  index RELACIONA_FK on BASE_DISENO (
FK_BASEDISENO
);

/*==============================================================*/
/* Index: SE_MOLDEA_FK            -REVISADO                                */
/*==============================================================*/
create  index SE_MOLDEA_FK on BASE_DISENO (
FK_TIPO_CUERPO
);

/*==============================================================*/
/* Index: SU_COLOR_DE_OJOS_FK         -REVISADO                            */
/*==============================================================*/
create  index SU_COLOR_DE_OJOS_FK on BASE_DISENO (
FK_COLOR_OJOS
);

/*==============================================================*/
/* Index: SU_TONO_DE_PIEL_FK  -REVISADO                                  */
/*==============================================================*/
create  index SU_TONO_DE_PIEL_FK on BASE_DISENO (
FK_COLOR_TONOPIEL
);

/*==============================================================*/
/* Table: CLIENTE_B2C   -revisado                                         */
/*==============================================================*/
create table CLIENTE_B2C (
   ID_PERSONA_NATURAL   SERIAL               not null,
   FK_LUGAR             INT4                 not null,
   RIF_PERSONA_NATURAL  VARCHAR(20)          not null,
   DIRECCION_PERSONA_NATURAL VARCHAR(100)         not null,
   CEDULA_PERSONA_NATURAL VARCHAR(20)          not null,
   P_NOMBRE_PERSONA_NATURAL VARCHAR(30)          not null,
   S_NOMBRE_PERSONA_NATURAL VARCHAR(30)          null,
   P_APELLIDO_PERSONA_NATURAL VARCHAR(30)          not null,
   S_APELLIDO_PERSONA_NATURAL VARCHAR(30)          null,
   FECHA_NAC_PERSONA_NATURAL DATE                 not null,
   constraint PK_CLIENTE_B2C primary key (ID_PERSONA_NATURAL),
   constraint FK_CLIENTE_B2C_LUGAR FOREIGN KEY (FK_LUGAR) REFERENCES LUGAR(ID_LUGAR)
);

/*==============================================================*/
/* Index: CLIENTE_B2C_PK     -revisado                                    */
/*==============================================================*/
create unique index CLIENTE_B2C_PK on CLIENTE_B2C (
ID_PERSONA_NATURAL
);

/*==============================================================*/
/* Index: DIRECCION_FISICA_FK   -revisado                                  */
/*==============================================================*/
create  index DIRECCION_FISICA_FK on CLIENTE_B2C (
FK_LUGAR
);

/*==============================================================*/
/* Table: EMPLEADO            revisado                                  */
/*==============================================================*/
create table EMPLEADO (
   ID_PERSONA_NATURAL   SERIAL               not null,
   FK_LUGAR             INT4                 not null,
   RIF_PERSONA_NATURAL  VARCHAR(20)          not null,
   DIRECCION_PERSONA_NATURAL VARCHAR(100)         not null,
   CEDULA_PERSONA_NATURAL VARCHAR(20)          not null,
   P_NOMBRE_PERSONA_NATURAL VARCHAR(30)          not null,
   S_NOMBRE_PERSONA_NATURAL VARCHAR(30)          null,
   P_APELLIDO_PERSONA_NATURAL VARCHAR(30)          not null,
   S_APELLIDO_PERSONA_NATURAL VARCHAR(30)          null,
   FECHA_NAC_PERSONA_NATURAL DATE                 not null,
   constraint PK_EMPLEADO primary key (ID_PERSONA_NATURAL),
   constraint FK_EMPLEADO_LUGAR_DIR FOREIGN KEY (FK_LUGAR) REFERENCES LUGAR(ID_LUGAR)
);

/*==============================================================*/
/* Index: EMPLEADO_PK     revisado                                      */
/*==============================================================*/
create unique index EMPLEADO_PK on EMPLEADO (
ID_PERSONA_NATURAL
);

/*==============================================================*/
/* Index: DIRECCION_FISICA2_FK  revisado                                */
/*==============================================================*/
create  index DIRECCION_FISICA2_FK on EMPLEADO (
FK_LUGAR
);

/*==============================================================*/
/* Table: PERSONA_JURIDICA   REVISADO                                       */
/*==============================================================*/
create table PERSONA_JURIDICA (
   ID_PERSONA_JURIDICA  SERIAL               not null,
   FK_LUGAR_DIR_FISICA             INT4                 not null,
   FK_LUGAR_DIR_FISCAL             INT4                 not null,
   RIF_PERSONA_JURIDICA VARCHAR(20)          not null,
   DIR_FISCAL_PERSONA_JURIDICA VARCHAR(200)         not null,
   RAZON_SOCIAL_PERSONA_JURIDICA VARCHAR(100)         not null,
   DIR_FISICA_PERSONA_JURIDICA VARCHAR(200)         not null,
   DENOM_COMERCIAL_PERJUR VARCHAR(200)         not null,
   constraint PK_PERSONA_JURIDICA primary key (ID_PERSONA_JURIDICA),
    CONSTRAINT FK_PERSONA_JURIDICA_DIR_FISICA FOREIGN KEY (FK_LUGAR_DIR_FISICA) REFERENCES LUGAR(ID_LUGAR),
    CONSTRAINT FK_PERSONA_JURIDICA_DIR_FISCAL FOREIGN KEY (FK_LUGAR_DIR_FISCAL) REFERENCES LUGAR(ID_LUGAR)
);

/*==============================================================*/
/* Index: PERSONA_JURIDICA_PK  REVISADO                                 */
/*==============================================================*/
create unique index PERSONA_JURIDICA_PK on PERSONA_JURIDICA (
ID_PERSONA_JURIDICA
);

/*==============================================================*/
/* Index: DIR_FISCAL_JURIDICA_FK REVISADO                               */
/*==============================================================*/
create  index DIR_FISCAL_JURIDICA_FK on PERSONA_JURIDICA (
FK_LUGAR_DIR_FISCAL
);
/*==============================================================*/
/* Index: DIR_FISICA_JURIDICA_FK  REVISADO                              */
/*==============================================================*/
create  index DIR_FISICA_JURIDICA_FK on PERSONA_JURIDICA (
FK_LUGAR_DIR_FISICA
);

/*==============================================================*/
/* Table: SEDE-revisado                                            */
/*==============================================================*/
create table SEDE (
   ID_SEDE              SERIAL               not null,
   FK_LUGAR_SEDE             INT4                 not null,
   NOMBRE_SEDE          VARCHAR(50)          not null,
   DIRECCION_SEDE       VARCHAR(200)         not null,
   constraint PK_SEDE primary key (ID_SEDE),
   constraint FK_SEDE_LUGAR foreign key (FK_LUGAR_SEDE) references LUGAR (ID_LUGAR)
);

/*==============================================================*/
/* Index: SEDE_PK-Revisado                                          */
/*==============================================================*/
create unique index SEDE_PK on SEDE (
ID_SEDE
);

/*==============================================================*/
/* Index: ESTA_UBICADA_FK-Revisado                                   */
/*==============================================================*/
create  index ESTA_UBICADA_FK on SEDE (
FK_LUGAR_SEDE
);

/*==============================================================*/
/* Table: TASA_CAMBIO   REVISADO                                        */
/*==============================================================*/
create table TASA_CAMBIO (
   ID_TASA_CAMBIO       SERIAL               not null,
   FK_MONEDA            INT4                 not null,
   VALOR_USD_TASA       DECIMAL(20,2)        not null,
   FECHA_EFECTIVA       DATE                 not null,
   FECHAFIN_PRECIO      DATE                 null,
   constraint PK_TASA_CAMBIO primary key (ID_TASA_CAMBIO),
    CONSTRAINT FK_TASA_CAMBIO_SE_IDENTIFICA_POR FOREIGN KEY (FK_MONEDA) REFERENCES MONEDA(ID_MONEDA)
);

/*==============================================================*/
/* Index: TASA_CAMBIO_PK  REVISADO                                      */
/*==============================================================*/
create unique index TASA_CAMBIO_PK on TASA_CAMBIO (
ID_TASA_CAMBIO
);

/*==============================================================*/
/* Index: SE_JUSTIFICA_FK REVISADO                                      */
/*==============================================================*/
create  index SE_JUSTIFICA_FK on TASA_CAMBIO (
FK_MONEDA
);

/*==============================================================*/
/* Table: ROL_PRIVILEGIO   revisado                                     */
/*==============================================================*/
create table ROL_PRIVILEGIO (
    ID_ROL_PRIVILEGIO   SERIAL               not null,
   FK_PRIVILEGIO        INT4                 not null,
   FK_ROL               INT4                 not null,
   constraint PK_ROL_PRIVILEGIO primary key (ID_ROL_PRIVILEGIO),
    CONSTRAINT FK_ROL_PRIVILEGIO_TIPO_PRIVILEGIO FOREIGN KEY (FK_PRIVILEGIO) REFERENCES PRIVILEGIO(ID_PRIVILEGIO),
    CONSTRAINT FK_ROL_PRIVILEGIO_TIPO_ROL FOREIGN KEY (FK_ROL) REFERENCES ROL(ID_ROL)
);

/*==============================================================*/
/* Index: ROL_PRIVILEGIO_PK   revisado                                  */
/*==============================================================*/
create unique index ROL_PRIVILEGIO_PK on ROL_PRIVILEGIO (
ID_ROL_PRIVILEGIO
);

/*==============================================================*/
/* Index: HACE_USO_FK  revisado                                         */
/*==============================================================*/
create  index HACE_USO_FK on ROL_PRIVILEGIO (
FK_PRIVILEGIO
);

/*==============================================================*/
/* Index: USA_FK    revisado                                            */
/*==============================================================*/
create  index USA_FK on ROL_PRIVILEGIO (
FK_ROL
);

/*==============================================================*/
/* Table: CARGO           -REVISADO                                      */
/*==============================================================*/
create table CARGO (
   ID_CARGO             SERIAL               not null,
   FK_TABULADOR_SALARIAL INT4                 not null,
   FK_DEPARTAMENTO      INT4                 not null,
   NOMBRE_CARGO         VARCHAR(50)          not null,
   DESCRIPCION_CARGO    VARCHAR(200)         not null,
   constraint PK_CARGO primary key (ID_CARGO),
   CONSTRAINT FK_CARGO_ES_ASIGNA_TABULADO FOREIGN KEY (FK_TABULADOR_SALARIAL) REFERENCES TABULADOR_SALARIAL(ID_TABULADOR_SALARIAL),
   CONSTRAINT FK_CARGO_TRABAJA_DEPARTAM FOREIGN KEY (FK_DEPARTAMENTO) REFERENCES DEPARTAMENTO(ID_DEPARTAMENTO)
);

/*==============================================================*/
/* Index: CARGO_PK  -REVISADO                                            */
/*==============================================================*/
create unique index CARGO_PK on CARGO (
ID_CARGO
);

/*==============================================================*/
/* Index: TRABAJA_FK     -REVISADO                                       */
/*==============================================================*/
create  index TRABAJA_FK on CARGO (
FK_DEPARTAMENTO
);

/*==============================================================*/
/* Index: ES_ASIGNADO_POR_FK   -REVISADO                                 */
/*==============================================================*/
create  index ES_ASIGNADO_POR_FK on CARGO (
FK_TABULADOR_SALARIAL
);

/*==============================================================*/
/* Table: CRIPTOMONEDA   REVISADO                                       */
/*==============================================================*/
create table CRIPTOMONEDA (
   ID_CRIPTOMONEDA      SERIAL               not null,
   FK_TIPO_CRIPTOMONEDA INT4                 not null,
   DIRECCION_WALLET_CRIPTOMONEDA VARCHAR(50)          not null,
   constraint PK_CRIPTOMONEDA primary key (ID_CRIPTOMONEDA),
   CONSTRAINT FK_CRIPTOMO_PERTENECE_TIPO_CRI FOREIGN KEY (FK_TIPO_CRIPTOMONEDA) REFERENCES TIPO_CRIPTOMONEDA(ID_TIPO_CRIPTOMONEDA)
);

/*==============================================================*/
/* Index: CRIPTOMONEDA_PK          REVISADO                             */
/*==============================================================*/
create unique index CRIPTOMONEDA_PK on CRIPTOMONEDA (
ID_CRIPTOMONEDA
);

/*==============================================================*/
/* Index: PERTENECE_A_LA_CADENA_FK     REVISADO                         */
/*==============================================================*/
create  index PERTENECE_A_LA_CADENA_FK on CRIPTOMONEDA (
FK_TIPO_CRIPTOMONEDA
);

/*==============================================================*/
/* Table: TRANSPORTE -REVISADO                                            */
/*==============================================================*/
create table TRANSPORTE (
   ID_TRANSPORTE        SERIAL               not null,
   FK_TIPO_TRANSPORTE   INT4                 not null,
   NOMBRE_TRANSPORTE    VARCHAR(50)          not null,
   constraint PK_TRANSPORTE primary key (ID_TRANSPORTE),
   constraint fk_transporte_tipo foreign key (FK_TIPO_TRANSPORTE) references TIPO_TRANSPORTE(ID_TIPO_TRANSPORTE)
);

/*==============================================================*/
/* Index: TRANSPORTE_PK   -REVISADO                                       */
/*==============================================================*/
create unique index TRANSPORTE_PK on TRANSPORTE (
ID_TRANSPORTE
);

/*==============================================================*/
/* Index: SE_IDENTIFICA_POR_FK-REVISADO                                   */
/*==============================================================*/
create  index SE_IDENTIFICA_POR_FK on TRANSPORTE (
FK_TIPO_TRANSPORTE
);

/*==============================================================*/
/* Table: PAGO_B2B   REVISADO                                           */
/*==============================================================*/
create table PAGO_B2B (
    ID_PAGO_B2B         SERIAL               not null,
   FK_CHEQUE   INT4                  null,
   FK_TRANSFERENCIA       INT4                  null,
   FK_MONEDA            INT4                 not null,
   MONTO_PAGO_B2B       DECIMAL(20,2)        not null,
   FECHAHORA_PAGO_B2B   TIMESTAMP                 not null,
   constraint PK_PAGO_B2B primary key (ID_PAGO_B2B),
   CONSTRAINT FK_PAGO_B2B_ES_SALDADO_POR FOREIGN KEY (FK_CHEQUE) REFERENCES CHEQUE(ID_CHEQUE),
   CONSTRAINT FK_PAGO_B2B_ES_ABONADO_POR FOREIGN KEY (FK_TRANSFERENCIA) REFERENCES TRANSFERENCIA_BANCARIA(ID_TRANSFERENCIA_BANCARIA),
   CONSTRAINT FK_PAGO_B2B_SE_PAGA_MEDIANTE FOREIGN KEY (FK_MONEDA) REFERENCES MONEDA(ID_MONEDA)
);

/*==============================================================*/
/* Index: PAGO_B2B_PK    REVISADO                                       */
/*==============================================================*/
create unique index PAGO_B2B_PK on PAGO_B2B (
ID_PAGO_B2B
);

/*==============================================================*/
/* Index: ES_SALDADO_FK  REVISADO                                       */
/*==============================================================*/
create  index ES_SALDADO_FK on PAGO_B2B (
FK_CHEQUE
);

/*==============================================================*/
/* Index: ES_ABONADO_FK  REVISADO                                       */
/*==============================================================*/
create  index ES_ABONADO_FK on PAGO_B2B (
FK_TRANSFERENCIA
);

/*==============================================================*/
/* Index: SE_REALIZA_EL_PAGO2_FK    REVISADO                            */
/*==============================================================*/
create  index SE_REALIZA_EL_PAGO2_FK on PAGO_B2B (
FK_MONEDA
);

/*==============================================================*/
/* Table: BASEDISENO_PRUEBA     REVISADO                                */
/*==============================================================*/
create table BASEDISENO_PRUEBA (
    ID_BASEDISENO_PRUEBA SERIAL               not null,
   FK_BASEDISENO        INT4                 not null,
   FK_PRUEBA            INT4                 not null,
   constraint PK_BASEDISENO_PRUEBA primary key (ID_BASEDISENO_PRUEBA),
    constraint FK_BASEDISE_ES_PROBAD_BASE_DIS foreign key (FK_BASEDISENO) references BASE_DISENO(ID_BASEDISENO),
    constraint FK_BASEDISE_PRUEBA_PRUEBA foreign key (FK_PRUEBA) references PRUEBA(ID_PRUEBA) 
);

/*==============================================================*/
/* Index: BASEDISENO_PRUEBA_PK   REVISADO                               */
/*==============================================================*/
create unique index BASEDISENO_PRUEBA_PK on BASEDISENO_PRUEBA (
ID_BASEDISENO_PRUEBA
);

/*==============================================================*/
/* Index: ES_PROBADA_FK    REVISADO                                     */
/*==============================================================*/
create  index ES_PROBADA_FK on BASEDISENO_PRUEBA (
FK_BASEDISENO
);

/*==============================================================*/
/* Index: PRUEBA_FK     REVISADO                                        */
/*==============================================================*/
create  index PRUEBA_FK on BASEDISENO_PRUEBA (
FK_PRUEBA
);

/*==============================================================*/
/* Table: BASEDISENO_SETREGALO     REVISADO                             */
/*==============================================================*/
create table BASEDISENO_SETREGALO (
    ID_BASEDISENO_SETREGALO SERIAL               not null,
   FK_BASEDISENO        INT4                 not null,
   FK_SET_REGALO        INT4                 not null,
   constraint PK_BASEDISENO_SETREGALO primary key (ID_BASEDISENO_SETREGALO),
   constraint FK_BASEDISE_AGRUPA_SET_REGA foreign key (FK_SET_REGALO) references SET_REGALO (ID_SET_REGALO),
   constraint FK_BASEDISE_SE_AGRUPA_BASE_DIS foreign key (FK_BASEDISENO) references BASE_DISENO (ID_BASEDISENO) 
 
);

/*==============================================================*/
/* Index: BASEDISENO_SETREGALO_PK   REVISADO                            */
/*==============================================================*/
create unique index BASEDISENO_SETREGALO_PK on BASEDISENO_SETREGALO (
ID_BASEDISENO_SETREGALO
);

/*==============================================================*/
/* Index: SE_AGRUPA_FK         REVISADO                                 */
/*==============================================================*/
create  index SE_AGRUPA_FK on BASEDISENO_SETREGALO (
FK_BASEDISENO
);

/*==============================================================*/
/* Index: AGRUPA_FK        REVISADO                                     */
/*==============================================================*/
create  index AGRUPA_FK on BASEDISENO_SETREGALO (
FK_SET_REGALO
);

/*==============================================================*/
/* Table: BASE_DISENO_CONSTRUCCION     revisado                 */
/*==============================================================*/
create table BASE_DISENO_CONSTRUCCION (
    ID_BASEDISENO_CONSTRUCCION SERIAL               not null,
   PFK_PIEZA             INT4                 not null,
   PFK_MOLDE             INT4                 not null,
   PFK_MATERIAPRIMA      INT4                 not null,
   PFK_BASEDISENO        INT4                 not null,
   CANTIDAD_MATERIAPRIMA INT4                 not null,
   constraint PK_BASE_DISENO_CONSTRUCCION primary key (ID_BASEDISENO_CONSTRUCCION),
   constraint FK_BASE_DISENO_CONSTRUCCION_PIEZA FOREIGN KEY (PFK_PIEZA) REFERENCES PIEZA(ID_PIEZA),
    constraint FK_BASE_DISENO_CONSTRUCCION_MOLDE FOREIGN KEY (PFK_MOLDE) REFERENCES MOLDE(ID_MOLDE),
    constraint FK_BASE_DISENO_CONSTRUCCION_MATERIAPRIMA FOREIGN KEY (PFK_MATERIAPRIMA) REFERENCES MATERIAPRIMA(ID_MATERIAPRIMA),
    constraint FK_BASE_DISENO_CONSTRUCCION_BASEDISENO FOREIGN KEY (PFK_BASEDISENO) REFERENCES BASE_DISENO(ID_BASEDISENO)
);

/*==============================================================*/
/* Index: BASE_DISENO_CONSTRUCCION_PK    -REVISADO                         */
/*==============================================================*/
create unique index BASE_DISENO_CONSTRUCCION_PK on BASE_DISENO_CONSTRUCCION (
ID_BASEDISENO_CONSTRUCCION
);

/*==============================================================*/
/* Index: CONFORMA_FK    -REVISADO                                         */
/*==============================================================*/
create  index CONFORMA_FK on BASE_DISENO_CONSTRUCCION (
PFK_PIEZA
);

/*==============================================================*/
/* Index: MOLDEARA_FK    -REVISADO                                         */
/*==============================================================*/
create  index MOLDEARA_FK on BASE_DISENO_CONSTRUCCION (
PFK_MOLDE
);

/*==============================================================*/
/* Index: CONSTRUYE_FK    -REVISADO                                        */
/*==============================================================*/
create  index CONSTRUYE_FK on BASE_DISENO_CONSTRUCCION (
PFK_MATERIAPRIMA
);

/*==============================================================*/
/* Index: SE_CONFORMA_FK    -REVISADO                                      */
/*==============================================================*/
create  index SE_CONFORMA_FK on BASE_DISENO_CONSTRUCCION (
PFK_BASEDISENO
);

/*==============================================================*/
/* Table: CARACTERISTICA_BASEDISENO REVISADO                            */
/*==============================================================*/
create table CARACTERISTICA_BASEDISENO (
    ID_CARACTERISTICA_BASEDISENO SERIAL               not null,
   FK_BASEDISENO        INT4                 not null,
   FK_CARACTERISTICA    INT4                 not null,
   VALOR_CARACTERISITICA VARCHAR(100)         not null,
   constraint PK_CARACTERISTICA_BASEDISENO primary key (ID_CARACTERISTICA_BASEDISENO),
   CONSTRAINT FK_CARACTER_ES_CARACT_BASE_DIS FOREIGN KEY (FK_BASEDISENO) REFERENCES BASE_DISENO(ID_BASEDISENO),
   CONSTRAINT FK_CARACTER_CARACTERI_CARACTER FOREIGN KEY (FK_CARACTERISTICA) REFERENCES CARACTERISTICA(ID_CARACTERISTICA)
);

/*==============================================================*/
/* Index: CARACTERISTICA_BASEDISENO_PK  REVISADO                        */
/*==============================================================*/
create unique index CARACTERISTICA_BASEDISENO_PK on CARACTERISTICA_BASEDISENO (
ID_CARACTERISTICA_BASEDISENO
);

/*==============================================================*/
/* Index: ES_CARACTERIZADA_FK    REVISADO                               */
/*==============================================================*/
create  index ES_CARACTERIZADA_FK on CARACTERISTICA_BASEDISENO (
FK_BASEDISENO
);

/*==============================================================*/
/* Index: CARACTERIZA_FK         REVISADO                               */
/*==============================================================*/
create  index CARACTERIZA_FK on CARACTERISTICA_BASEDISENO (
FK_CARACTERISTICA
);

/*==============================================================*/
/* Table: CATEGORIA_BASEDISENO  -REVISADO                                    */
/*==============================================================*/
create table CATEGORIA_BASEDISENO (
    ID_CATEGORIA_BASEDISENO SERIAL              not null,
   FK_BASEDISENO        INT4                 not null,
   FK_CATEGORIA         INT4                 not null,
   constraint PK_CATEGORIA_BASEDISENO primary key (ID_CATEGORIA_BASEDISENO),
   constraint FK_CATEGORI_SE_VINCUL_BASE_DIS FOREIGN KEY (FK_BASEDISENO) REFERENCES BASE_DISENO(ID_BASEDISENO),
   constraint FK_CATEGORI_SE_RELACI_CATEGORI FOREIGN KEY (FK_CATEGORIA) REFERENCES CATEGORIA(ID_CATEGORIA)
);

/*==============================================================*/
/* Index: CATEGORIA_BASEDISENO_PK -REVISADO                                  */
/*==============================================================*/
create unique index CATEGORIA_BASEDISENO_PK on CATEGORIA_BASEDISENO (
ID_CATEGORIA_BASEDISENO
);

/*==============================================================*/
/* Index: SE_VINCULA_FK        -REVISADO                                     */
/*==============================================================*/
create  index SE_VINCULA_FK on CATEGORIA_BASEDISENO (
FK_BASEDISENO
);

/*==============================================================*/
/* Index: SE_RELACIONA_FK      -REVISADO                                     */
/*==============================================================*/
create  index SE_RELACIONA_FK on CATEGORIA_BASEDISENO (
FK_CATEGORIA
);

/*==============================================================*/
/* Table: CLASIFICACION_BASEDISENO  -revisado                            */
/*==============================================================*/
create table CLASIFICACION_BASEDISENO (
    ID_CLASIFICACION_BASEDISENO SERIAL               not null,
   FK_BASEDISENO        INT4                 not null,
   FK_CLASIFICACION     INT4                 not null,
   constraint PK_CLASIFICACION_BASEDISENO primary key (ID_CLASIFICACION_BASEDISENO),
   CONSTRAINT FK_CLASIFIC_ES_CLASIF_BASE_DIS FOREIGN KEY (FK_BASEDISENO) REFERENCES BASE_DISENO(ID_BASEDISENO),
   CONSTRAINT FK_CLASIFIC_CLASIFICA_CLASIFIC  FOREIGN KEY (FK_CLASIFICACION) REFERENCES CLASIFICACION(ID_CLASIFICACION)
);

/*==============================================================*/
/* Index: CLASIFICACION_BASEDISENO_PK                           */
/*==============================================================*/
create unique index CLASIFICACION_BASEDISENO_PK on CLASIFICACION_BASEDISENO (
ID_CLASIFICACION_BASEDISENO
);

/*==============================================================*/
/* Index: ES_CLASIFICADA_FK  -revisado                                   */
/*==============================================================*/
create  index ES_CLASIFICADA_FK on CLASIFICACION_BASEDISENO (
FK_BASEDISENO
);

/*==============================================================*/
/* Index: CLASIFICA_FK -revisado                                         */
/*==============================================================*/
create  index CLASIFICA_FK on CLASIFICACION_BASEDISENO (
FK_CLASIFICACION
);

/*==============================================================*/
/* Table: PROFESION_BASEDISENO   revisado                               */
/*==============================================================*/
create table PROFESION_BASEDISENO (
    ID_PROFESION_BASEDISENO SERIAL not null,
   FK_PROFESION         INT4                 not null,
   FK_BASEDISENO        INT4                 not null,
   constraint PK_PROFESION_BASEDISENO primary key (ID_PROFESION_BASEDISENO),
   constraint FK_PROFESION_BASEDISENO_ESEJERCIDA foreign key (FK_PROFESION) references PROFESION(ID_PROFESION),
    constraint FK_PROFESION_BASEDISENO_EJERCE foreign key (FK_BASEDISENO) references BASE_DISENO(ID_BASEDISENO)
);

/*==============================================================*/
/* Index: PROFESION_BASEDISENO_PK revisado                              */
/*==============================================================*/
create unique index PROFESION_BASEDISENO_PK on PROFESION_BASEDISENO (
ID_PROFESION_BASEDISENO
);

/*==============================================================*/
/* Index: SE_EJERCE_FK revisado                                         */
/*==============================================================*/
create  index SE_EJERCE_FK on PROFESION_BASEDISENO (
FK_PROFESION
);

/*==============================================================*/
/* Index: EJERCIDA_FK revisado                                          */
/*==============================================================*/
create  index EJERCIDA_FK on PROFESION_BASEDISENO (
FK_BASEDISENO
);

/*==============================================================*/
/* Table: MEMBRESIA_CLIENTE_B2C  REVISADO                               */
/*==============================================================*/
create table MEMBRESIA_CLIENTE_B2C (
    ID_MEMBRESIA_CLIENTE_B2C SERIAL               not null,
   FK_MEMBRESIA         INT4                 not null,
   FK_PERSONA_NATURAL   INT4                 not null,
   constraint PK_MEMBRESIA_CLIENTE_B2C primary key (ID_MEMBRESIA_CLIENTE_B2C),
   CONSTRAINT FK_MEMBRESIA_CLIENTE_B2C_ES_DE_FK FOREIGN KEY (FK_MEMBRESIA) REFERENCES MEMBRESIA(ID_MEMBRESIA),
    CONSTRAINT FK_MEMBRESIA_CLIENTE_B2C_ES_DE_PN FOREIGN KEY (FK_PERSONA_NATURAL) REFERENCES CLIENTE_B2C(ID_PERSONA_NATURAL)
);

/*==============================================================*/
/* Index: MEMBRESIA_CLIENTE_B2C_PK REVISADO                             */
/*==============================================================*/
create unique index MEMBRESIA_CLIENTE_B2C_PK on MEMBRESIA_CLIENTE_B2C (
ID_MEMBRESIA_CLIENTE_B2C
);

/*==============================================================*/
/* Index: ES_ADQUIRIDA_FK    REVISADO                                   */
/*==============================================================*/
create  index ES_ADQUIRIDA_FK on MEMBRESIA_CLIENTE_B2C (
FK_MEMBRESIA
);

/*==============================================================*/
/* Index: COMPRA_FK      REVISADO                                       */
/*==============================================================*/
create  index COMPRA_FK on MEMBRESIA_CLIENTE_B2C (
FK_PERSONA_NATURAL
);

/*==============================================================*/
/* Table: CONTRATO_PERSONAL       REVISADO                              */
/*==============================================================*/
create table CONTRATO_PERSONAL (
   ID_CONTRATO          SERIAL               not null,
   FK_EMPLEADO   INT4                 not null,
   CONTRATO_FECHA_INICIO DATE                 not null,
   CONTRATO_FECHA_FIN   DATE                 null,
   constraint PK_CONTRATO_PERSONAL primary key (ID_CONTRATO),
   CONSTRAINT FK_CONTRATO_ES_DE_EMPLEADO FOREIGN KEY (FK_EMPLEADO) REFERENCES EMPLEADO(ID_PERSONA_NATURAL)
);

/*==============================================================*/
/* Index: CONTRATO_PERSONAL_PK   REVISADO                               */
/*==============================================================*/
create unique index CONTRATO_PERSONAL_PK on CONTRATO_PERSONAL (
ID_CONTRATO
);

/*==============================================================*/
/* Index: LO_CONTRATAN2_FK      REVISADO                                */
/*==============================================================*/
create  index LO_CONTRATAN2_FK on CONTRATO_PERSONAL (
FK_EMPLEADO
);

/*==============================================================*/
/* Table: CORREO            REVISADO                                    */
/*==============================================================*/
create table CORREO (
   ID_CORREO            SERIAL               not null,
   FK_PERSONA_JURIDICA  INT4                 null,
   FK_PERSONA_NATURAL_CLIENTE   INT4                 null,
   FK_PERSONA_NATURAL_EMPLEADO   INT4                 null,
   NOMBRE_CORREO        VARCHAR(50)          not null,
   constraint PK_CORREO primary key (ID_CORREO),
   constraint  FK_CORREO_COORDINA_PERSONA_JURIDICA FOREIGN KEY (FK_PERSONA_JURIDICA) REFERENCES PERSONA_JURIDICA(ID_PERSONA_JURIDICA),
   constraint FK_CORREO_POSEE_CLIENTE foreign key (FK_PERSONA_NATURAL_CLIENTE) references CLIENTE_B2C(ID_PERSONA_NATURAL),
   constraint FK_CORREO_POSEE2_EMPLEADO foreign key (FK_PERSONA_NATURAL_EMPLEADO) references EMPLEADO(ID_PERSONA_NATURAL)
);

/*==============================================================*/
/* Index: CORREO_PK       REVISADO                                      */
/*==============================================================*/
create unique index CORREO_PK on CORREO (
ID_CORREO
);

/*==============================================================*/
/* Index: COORDINA_FK      REVISADO                                     */
/*==============================================================*/
create  index COORDINA_FK on CORREO (
FK_PERSONA_JURIDICA
);

/*==============================================================*/
/* Index: POSEE2_FK          REVISADO                                   */
/*==============================================================*/
create  index POSEE2_FK on CORREO (
FK_PERSONA_NATURAL_EMPLEADO
);

/*==============================================================*/
/* Index: POSEE_FK     REVISADO                                         */
/*==============================================================*/
create  index POSEE_FK on CORREO (
FK_PERSONA_NATURAL_CLIENTE
);

/*==============================================================*/
/* Table: LINEA_CREDITO   REVISADO                                      */
/*==============================================================*/
create table LINEA_CREDITO (
   ID_LINEA_CREDITO     SERIAL               not null,
   FK_PERSONA_JURIDICA  INT4                 not null,
   TOTAL_LINEA_CREDITO  INT4                 not null,
   constraint PK_LINEA_CREDITO primary key (ID_LINEA_CREDITO),
   CONSTRAINT FK_LINEA_CREDITO_SE_ASIGNA_A FOREIGN KEY (FK_PERSONA_JURIDICA) REFERENCES PERSONA_JURIDICA(ID_PERSONA_JURIDICA)
);

/*==============================================================*/
/* Index: LINEA_CREDITO_PK    REVISADO                                  */
/*==============================================================*/
create unique index LINEA_CREDITO_PK on LINEA_CREDITO (
ID_LINEA_CREDITO
);

/*==============================================================*/
/* Index: ES_ASIGNADO2_FK  REVISADO                                     */
/*==============================================================*/
create  index ES_ASIGNADO2_FK on LINEA_CREDITO (
FK_PERSONA_JURIDICA
);

/*==============================================================*/
/* Table: TELEFONO      REVISADO                                        */
/*==============================================================*/
create table TELEFONO (
   ID_TELEFONO          SERIAL               not null,
   FK_PERSONA_JURIDICA  INT4                  null,
   FK_PERSONA_NATURAL_CLIENTE   INT4                  null,
   FK_PERSONA_NATURAL_EMPLEADO   INT4                  null,
   CODIGO_AREA_TELEFONO VARCHAR(5)           not null,
   NUMERO_TELEFONO      VARCHAR(9)           not null,
   constraint PK_TELEFONO primary key (ID_TELEFONO),
   CONSTRAINT FK_TELEFONO_PERTENECE_A_JURIDICA FOREIGN KEY (FK_PERSONA_JURIDICA) REFERENCES PERSONA_JURIDICA(ID_PERSONA_JURIDICA),
   CONSTRAINT FK_TELEFONO_ADMINISTRA_CLIENTE FOREIGN KEY (FK_PERSONA_NATURAL_CLIENTE) REFERENCES CLIENTE_B2C(ID_PERSONA_NATURAL),
   CONSTRAINT FK_TELEFONO_ADMINISTRA_EMPLEADO FOREIGN KEY (FK_PERSONA_NATURAL_EMPLEADO) REFERENCES EMPLEADO(ID_PERSONA_NATURAL)

);

/*==============================================================*/
/* Index: TELEFONO_PK  REVISADO                                         */
/*==============================================================*/
create unique index TELEFONO_PK on TELEFONO (
ID_TELEFONO
);

/*==============================================================*/
/* Index: CUENTA_CON_FK   REVISADO                                      */
/*==============================================================*/
create  index CUENTA_CON_FK on TELEFONO (
FK_PERSONA_JURIDICA
);

/*==============================================================*/
/* Index: ADMINISTRA2_FK REVISADO                                       */
/*==============================================================*/
create  index ADMINISTRA2_FK on TELEFONO (
FK_PERSONA_NATURAL_CLIENTE
);

/*==============================================================*/
/* Index: ADMINISTRA_FK   REVISADO                                      */
/*==============================================================*/
create  index ADMINISTRA_FK on TELEFONO (
FK_PERSONA_NATURAL_EMPLEADO
);

/*==============================================================*/
/* Table: USUARIO      REVISADO                                         */
/*==============================================================*/
create table USUARIO (
   ID_USUARIO           SERIAL               not null,
   FK_PERSONA_JURIDICA  INT4                  null,
   FK_ROL               INT4                 not null,
   FK_PERSONA_NATURAL_CLIENTE INT4                  null,
   FK_PERSONA_NATURAL_EMPLEADO INT4                  null,
   NOMBRE_USUARIO       VARCHAR(50)          not null,
   CONTRASENA_USUARIO   VARCHAR(50)          not null,
   constraint PK_USUARIO primary key (ID_USUARIO),
   CONSTRAINT FK_USUARIO_SE_LE_ASIGNA_ROL FOREIGN KEY (FK_ROL) REFERENCES ROL(ID_ROL),
   CONSTRAINT FK_USUARIO_PERTENECE_A_JURIDICA FOREIGN KEY (FK_PERSONA_JURIDICA) REFERENCES PERSONA_JURIDICA(ID_PERSONA_JURIDICA),
   CONSTRAINT FK_USUARIO_ADMINISTRA_CLIENTE FOREIGN KEY (FK_PERSONA_NATURAL_CLIENTE) REFERENCES CLIENTE_B2C(ID_PERSONA_NATURAL),
   CONSTRAINT FK_USUARIO_ADMINISTRA_EMPLEADO FOREIGN KEY (FK_PERSONA_NATURAL_EMPLEADO) REFERENCES EMPLEADO(ID_PERSONA_NATURAL)
);

/*==============================================================*/
/* Index: USUARIO_PK REVISADO                                           */
/*==============================================================*/
create unique index USUARIO_PK on USUARIO (
ID_USUARIO
);

/*==============================================================*/
/* Index: SE_LE_ASIGNA_FK REVISADO                                      */
/*==============================================================*/
create  index SE_LE_ASIGNA_FK on USUARIO (
FK_ROL
);

/*==============================================================*/
/* Index: SE_CREA_FK REVISADO                                           */
/*==============================================================*/
create  index SE_CREA_FK on USUARIO (
FK_PERSONA_JURIDICA
);

/*==============================================================*/
/* Index: CREA2_FK    REVISADO                                          */
/*==============================================================*/
create  index CREA2_FK on USUARIO (
FK_PERSONA_NATURAL_CLIENTE
);

/*==============================================================*/
/* Index: CREA_FK    REVISADO                                          */
/*==============================================================*/
create  index CREA_FK on USUARIO (
FK_PERSONA_NATURAL_EMPLEADO
);

/*==============================================================*/
/* Table: INVENTARIO_MATERIAPRIMA   REVISADO                            */
/*==============================================================*/
create table INVENTARIO_MATERIAPRIMA (
    ID_INVENTARIO_MATERIAPRIMA SERIAL               not null,
   PFK_SEDE              INT4                 not null,
   PFK_MATERIAPRIMA      INT4                 not null,
   CANTIDAD_MATERIAPRIMA_INV INT4                 not null,
   constraint PK_INVENTARIO_MATERIAPRIMA primary key (ID_INVENTARIO_MATERIAPRIMA),
   constraint FK_INVENTARIO_MATERIAPRIMA_SEDE foreign key (PFK_SEDE) references SEDE(ID_SEDE),
   constraint FK_INVENTARIO_MATERIAPRIMA_MATERIAPRIMA foreign key (PFK_MATERIAPRIMA) references MATERIAPRIMA(ID_MATERIAPRIMA)
);

/*==============================================================*/
/* Index: INVENTARIO_MATERIAPRIMA_PK      REVISADO                      */
/*==============================================================*/
create unique index INVENTARIO_MATERIAPRIMA_PK on INVENTARIO_MATERIAPRIMA (
ID_INVENTARIO_MATERIAPRIMA
);

/*==============================================================*/
/* Index: ALMACENA_FK REVISADO                                     */
/*==============================================================*/
create  index ALMACENA_FK on INVENTARIO_MATERIAPRIMA (
PFK_SEDE
);

/*==============================================================*/
/* Index: ES_ALMACENADA_FK REVISADO                                     */
/*==============================================================*/
create  index ES_ALMACENADA_FK on INVENTARIO_MATERIAPRIMA (
PFK_MATERIAPRIMA
);

/*==============================================================*/
/* Table: FASE_DISENO     REVISADO                                      */
/*==============================================================*/
create table FASE_DISENO (
    ID_FASE_DISENO       SERIAL               not null,
   FK_PRUEBA            INT4                 not null,
   FK_BASEDISENO        INT4                 not null,
   FK_FASE              INT4                 not null,
   FK_CARGO             INT4                 not null,
   CANTIDAD_CARGO       INT4                 not null,
   constraint PK_FASE_DISENO primary key (ID_FASE_DISENO),
   constraint fk_fase_diseno_se_prueba foreign key (FK_PRUEBA) references PRUEBA(ID_PRUEBA),
    constraint fk_fase_diseno_se_disenara_mediante foreign key (FK_FASE) references FASE(ID_FASE),
    constraint fk_fase_diseno_se_necesitan foreign key (FK_CARGO) references CARGO(ID_CARGO),
    constraint fk_fase_diseno_se_disenara_en foreign key (FK_BASEDISENO) references BASE_DISENO(ID_BASEDISENO)
);

/*==============================================================*/
/* Index: FASE_DISENO_PK   REVISADO                                     */
/*==============================================================*/
create unique index FASE_DISENO_PK on FASE_DISENO (
ID_FASE_DISENO
);

/*==============================================================*/
/* Index: TIENE_FK      REVISADO                                        */
/*==============================================================*/
create  index TIENE_FK on FASE_DISENO (
FK_BASEDISENO
);

/*==============================================================*/
/* Index: SE_PRUEBA_FK  REVISADO                                        */
/*==============================================================*/
create  index SE_PRUEBA_FK on FASE_DISENO (
FK_PRUEBA
);

/*==============================================================*/
/* Index: SE_NECESITAN_FK   REVISADO                                    */
/*==============================================================*/
create  index SE_NECESITAN_FK on FASE_DISENO (
FK_CARGO
);

/*==============================================================*/
/* Index: SE_DISENARA_MEDIANTE_FK   REVISADO                             */
/*==============================================================*/
create  index SE_DISENARA_MEDIANTE_FK on FASE_DISENO (
FK_FASE
);

/*==============================================================*/
/* Table: MANIFIESTO_CARGO    REVISADO                                  */
/*==============================================================*/
create table MANIFIESTO_CARGO (
   ID_MANIFIESTOCARGO   SERIAL               not null,
   FK_TRANSPORTE        INT4                 not null,
   FK_LUGAR_ORIGEN             INT4                 not null,
   FK_LUGAR_DESTINO         INT4                 not null,
   FECHAHORA_EMISION_MANIFIESTO DATE                 not null,
   DIR_DESTINO_MANIFIESTO VARCHAR(200)         not null,
   DIR_ORIGEN_MANIFIESTO VARCHAR(200)         not null,
   constraint PK_MANIFIESTO_CARGO primary key (ID_MANIFIESTOCARGO),
   CONSTRAINT FK_MANIFIESTO_CARGO_ES_TRANSPORTADA_POR FOREIGN KEY (FK_TRANSPORTE) REFERENCES TRANSPORTE(ID_TRANSPORTE),
   CONSTRAINT FK_MANIFIESTO_CARGO_SE_ENTREGA_EN FOREIGN KEY (FK_LUGAR_DESTINO) REFERENCES LUGAR(ID_LUGAR),
   CONSTRAINT FK_MANIFIESTO_CARGO_SU_ORIGEN_ES FOREIGN KEY (FK_LUGAR_ORIGEN) REFERENCES LUGAR(ID_LUGAR)
);

/*==============================================================*/
/* Index: MANIFIESTO_CARGO_PK  REVISADO                                 */
/*==============================================================*/
create unique index MANIFIESTO_CARGO_PK on MANIFIESTO_CARGO (
ID_MANIFIESTOCARGO
);

/*==============================================================*/
/* Index: ES_TRANSPORTADA_FK REVISADO                                   */
/*==============================================================*/
create  index ES_TRANSPORTADA_FK on MANIFIESTO_CARGO (
FK_TRANSPORTE
);

/*==============================================================*/
/* Index: SE_ENTREGA_EN_FK  REVISADO                                    */
/*==============================================================*/
create  index SE_ENTREGA_EN_FK on MANIFIESTO_CARGO (
FK_LUGAR_DESTINO
);

/*==============================================================*/
/* Index: SU_ORIGEN_ES_FK    REVISADO                                   */
/*==============================================================*/
create  index SU_ORIGEN_ES_FK on MANIFIESTO_CARGO (
FK_LUGAR_ORIGEN
);

/*==============================================================*/
/* Table: ASISTENCIA          REVISADO                                   */
/*==============================================================*/
create table ASISTENCIA (
   ID_ASISTENCIA        SERIAL               not null,
   FK_CONTRATO          INT4                 not null,
   FECHA_HORA_ENTRADA_ASISTENCIA timestamp                 not null,
   FECHA_HORA_SALIDA_ASISTENCIA timestamp                 not null,
   constraint PK_ASISTENCIA primary key (ID_ASISTENCIA),
   CONSTRAINT FK_ASISTENCIA_CONTRATO FOREIGN KEY (FK_CONTRATO) REFERENCES CONTRATO_PERSONAL(ID_CONTRATO)
);

/*==============================================================*/
/* Index: ASISTENCIA_PK   REVISADO                                       */
/*==============================================================*/
create unique index ASISTENCIA_PK on ASISTENCIA (
ID_ASISTENCIA
);

/*==============================================================*/
/* Index: ASISTE_FK   REVISADO                                          */
/*==============================================================*/
create  index ASISTE_FK on ASISTENCIA (
FK_CONTRATO
);

/*==============================================================*/
/* Table: CONTRATO_BENEFICIO    -revisado                                 */
/*==============================================================*/
create table CONTRATO_BENEFICIO (
    ID_CONTRATO_BENEFICIO SERIAL               not null,
   FK_CONTRATO_PERSONAL          INT4                 not null,
   FK_BENEFICIO    INT4                 not null,
   MONTO_CONTRATO_BENEFICIO INT4                 null,
   CANTIDAD_INCIDENCIAS INT4                 null,
    constraint PK_CONTRATO_BENEFICIO primary key (ID_CONTRATO_BENEFICIO),
    CONSTRAINT  FK_CONTRATO_GOZA_CONTRATO FOREIGN KEY (FK_CONTRATO_PERSONAL) REFERENCES CONTRATO_PERSONAL(ID_CONTRATO),
    CONSTRAINT FK_CONTRATO_ES_GOZADO_BENEFICI FOREIGN KEY (FK_BENEFICIO) REFERENCES BENEFICIO(ID_BENEFICIO)
);

/*==============================================================*/
/* Index: CONTRATO_BENEFICIO_PK      -revisado                            */
/*==============================================================*/
create unique index CONTRATO_BENEFICIO_PK on CONTRATO_BENEFICIO (
    ID_CONTRATO_BENEFICIO
);

/*==============================================================*/
/* Index: GOZA_FK        -revisado                                        */
/*==============================================================*/
create  index GOZA_FK on CONTRATO_BENEFICIO (
FK_CONTRATO_PERSONAL
);

/*==============================================================*/
/* Index: ES_GOZADO_FK   -revisado                                        */
/*==============================================================*/
create  index ES_GOZADO_FK on CONTRATO_BENEFICIO (
FK_BENEFICIO
);

/*==============================================================*/
/* Table: CONTRATO_CARGO    revisado                                    */
/*==============================================================*/
create table CONTRATO_CARGO (
       ID_CONTRATO_CARGO    SERIAL               not null,
   FK_CARGO             INT4                 not null,
   FK_CONTRATO          INT4                 not null,
   FECHA_INICIO_CONTRATO_CARGO DATE                 not null,
   FECHA_FIN_CONTRATO_CARGO DATE                 null,
   HORAS_SEMANALES_CC   INT4                 not null,
   MOTIVO_CAMBIO_CARGO  VARCHAR(200)         null,
   constraint PK_CONTRATO_CARGO primary key (ID_CONTRATO_CARGO),
    constraint FK_CONTRATO_ES_ENCARG_CARGO FOREIGN KEY (FK_CARGO) REFERENCES CARGO(ID_CARGO),
    CONSTRAINT FK_CONTRATO_SE_ENCARG_CONTRATO FOREIGN KEY (FK_CONTRATO) REFERENCES CONTRATO_PERSONAL(ID_CONTRATO)
);

/*==============================================================*/
/* Index: CONTRATO_CARGO_PK     REVISADO                                */
/*==============================================================*/
create unique index CONTRATO_CARGO_PK on CONTRATO_CARGO (
    ID_CONTRATO_CARGO
);

/*==============================================================*/
/* Index: ES_ENCARGADO_FK      REVISADO                                 */
/*==============================================================*/
create  index ES_ENCARGADO_FK on CONTRATO_CARGO (
 FK_CARGO
);

/*==============================================================*/
/* Index: SE_ENCARGARA_FK    REVISADO                                   */
/*==============================================================*/
create  index SE_ENCARGARA_FK on CONTRATO_CARGO (
FK_CONTRATO
);

/*==============================================================*/
/* Table: CONTRATO_HORARIO    REVISADO                          */
/*==============================================================*/
create table CONTRATO_HORARIO (
   ID_CONTRATO_HORARIO  SERIAL               not null,
   FK_CONTRATO          INT4                 not null,
   FK_HORARIO           INT4                 not null,
   constraint PK_CONTRATO_HORARIO primary key (ID_CONTRATO_HORARIO),
   CONSTRAINT FK_CONTRATO_HORARIO_CONTRATO FOREIGN KEY (FK_CONTRATO) REFERENCES CONTRATO_PERSONAL(ID_CONTRATO),
   CONSTRAINT FK_CONTRATO_HORARIO_HORARIO FOREIGN KEY (FK_HORARIO) REFERENCES HORARIO(ID_HORARIO)
);

/*==============================================================*/
/* Index: CONTRATO_HORARIO_PK    REVISADO                               */
/*==============================================================*/
create unique index CONTRATO_HORARIO_PK on CONTRATO_HORARIO (
    ID_CONTRATO_HORARIO
);

/*==============================================================*/
/* Index: CUMPLE_FK         REVISADO                                    */
/*==============================================================*/
create  index CUMPLE_FK on CONTRATO_HORARIO (
FK_CONTRATO
);

/*==============================================================*/
/* Index: SE_ORGANIZA_FK    REVISADO                                    */
/*==============================================================*/
create  index SE_ORGANIZA_FK on CONTRATO_HORARIO (
FK_HORARIO
);

/*==============================================================*/
/* Table: PAYPAL    REVISADO                                            */
/*==============================================================*/
create table PAYPAL (
   ID_PAYPAL       SERIAL               not null,
   FK_CORREO            INT4                 not null,
   constraint PK_PAYPAL primary key (ID_PAYPAL),
   CONSTRAINT FK_PAYPAL_SE_USA_PARA FOREIGN KEY (FK_CORREO) REFERENCES CORREO(ID_CORREO)
);

/*==============================================================*/
/* Index: PAYPAL_PK  REVISADO                                           */
/*==============================================================*/
create unique index PAYPAL_PK on PAYPAL (
ID_PAYPAL
);

/*==============================================================*/
/* Index: SE_USA2_FK   REVISADO                                         */
/*==============================================================*/
create  index SE_USA2_FK on PAYPAL (
FK_CORREO
);

/*==============================================================*/
/* Table: USUARIO_METODO_PAGO   REVISADO                                */
/*==============================================================*/
create table USUARIO_METODO_PAGO (
    ID_USUARIO_METODO_PAGO SERIAL               not null,
   FK_USUARIO           INT4                 not null,
   FK_TARJETA_CREDITO   INT4                  null,
   FK_TARJETA_DEBITO       INT4                  null,
   ES_VALIDADO          BOOL                 not null,
   FECHA_REGISTRO       DATE                 not null,
   constraint PK_USUARIO_METODO_PAGO primary key (ID_USUARIO_METODO_PAGO),
    CONSTRAINT FK_USUARIO_METODO_PAGO_PERTENECE_A FOREIGN KEY (FK_USUARIO) REFERENCES USUARIO(ID_USUARIO),
    CONSTRAINT FK_USUARIO_METODO_PAGO_ES_VALIDADA FOREIGN KEY (FK_TARJETA_CREDITO) REFERENCES TARJETA_CREDITO(ID_TARJETA_CREDITO),
    CONSTRAINT FK_USUARIO_METODO_PAGO_ES_VALIDADA2 FOREIGN KEY (FK_TARJETA_DEBITO) REFERENCES TARJETA_DEBITO(ID_TARJETA_DEBITO)
);

/*==============================================================*/
/* Index: USUARIO_METODO_PAGO_PK REVISADO                               */
/*==============================================================*/
create unique index USUARIO_METODO_PAGO_PK on USUARIO_METODO_PAGO (
ID_USUARIO_METODO_PAGO
);

/*==============================================================*/
/* Index: REGISTRA_FK   REVISADO                                        */
/*==============================================================*/
create  index REGISTRA_FK on USUARIO_METODO_PAGO (
FK_USUARIO
);

/*==============================================================*/
/* Index: PERTENECE_A_FK   REVISADO                                     */
/*==============================================================*/
create  index PERTENECE_A_FK on USUARIO_METODO_PAGO (
FK_TARJETA_CREDITO
);

/*==============================================================*/
/* Index: ES_VALIDADA_FK  REVISADO                                      */
/*==============================================================*/
create  index ES_VALIDADA_FK on USUARIO_METODO_PAGO (
FK_TARJETA_DEBITO
);

/*==============================================================*/
/* Table: FASE_PRODUCCION      REVISADO                                 */
/*==============================================================*/
create table FASE_PRODUCCION (
    ID_FASE_PRODUCCION       SERIAL               not null,
   FK_FASE_DISENO             INT4                 not null,
   FK_PERSONA_NATURAL   INT4                 not null,
   constraint PK_FASE_PRODUCCION primary key (ID_FASE_PRODUCCION),
    CONSTRAINT FK_FASE_PRODUCCION_SE_DESARROLLA_POR FOREIGN KEY (FK_PERSONA_NATURAL) REFERENCES EMPLEADO(ID_PERSONA_NATURAL),
    CONSTRAINT FK_FASE_PRODUCCION_SE_DESARROLLA_EN FOREIGN KEY (FK_FASE_DISENO) REFERENCES FASE_DISENO(ID_FASE_DISENO)
);

/*==============================================================*/
/* Index: FASE_PRODUCCION_PK   REVISADO                                 */
/*==============================================================*/
create unique index FASE_PRODUCCION_PK on FASE_PRODUCCION (
ID_FASE_PRODUCCION
);

/*==============================================================*/
/* Index: SE_CONSTRUIRA_MEDIANTE_FK REVISADO                            */
/*==============================================================*/
create  index SE_CONSTRUIRA_MEDIANTE_FK on FASE_PRODUCCION (
FK_FASE_DISENO
);

/*==============================================================*/
/* Index: TRABAJAN_FK     REVISADO                                      */
/*==============================================================*/
create  index TRABAJAN_FK on FASE_PRODUCCION (
FK_PERSONA_NATURAL
);

/*==============================================================*/
/* Table: META_MENSUAL      REVISADO                                    */
/*==============================================================*/
create table META_MENSUAL (
   ID_META_MENSUAL      SERIAL               not null,
   FK_CONTRATO_CARGO    INT4                 null,
   FECHAINICIO_META     DATE                 not null,
   FECHAFIN_META        DATE                 not null,
   MONTO_META           DECIMAL(20,2)        not null,
   constraint PK_META_MENSUAL primary key (ID_META_MENSUAL),
   CONSTRAINT FK_META_MENSUAL_SE_ASIGNA_A FOREIGN KEY (FK_CONTRATO_CARGO) REFERENCES CONTRATO_CARGO(ID_CONTRATO_CARGO)
);

/*==============================================================*/
/* Index: META_MENSUAL_PK   REVISADO                                    */
/*==============================================================*/
create unique index META_MENSUAL_PK on META_MENSUAL (
ID_META_MENSUAL
);

/*==============================================================*/
/* Index: TIENE_COMO_META_FK    REVISADO                                */
/*==============================================================*/
create  index TIENE_COMO_META_FK on META_MENSUAL (
FK_CONTRATO_CARGO
);

/*==============================================================*/
/* Table: ORDEN_COMPRA_B2B   REVISADO                                   */
/*==============================================================*/
create table ORDEN_COMPRA_B2B (
   ID_ORDEN_COMPRA_B2B  SERIAL               not null,
   FK_USUARIO           INT4                 not null,
   FK_CONTRATO_CARGO    INT4                 not null,
   FECHAHORA_ORDEN_COMPRA_B2B TIMESTAMP                 not null,
   CONDICION_PAGO       INT4                 not null,
   N_FACTURA_COMPRA_B2B INT4                 not null,
   SUBTOTAL_ORDEN_COMPRA_B2B DECIMAL(20,2)        not null,
   TOTAL_ORDEN_COMPRA_B2B DECIMAL(20,2)        not null,
   constraint PK_ORDEN_COMPRA_B2B primary key (ID_ORDEN_COMPRA_B2B),
       constraint CKC_CONDICION_PAGO_ORDEN_CO check (CONDICION_PAGO in (30,60,90)),
    CONSTRAINT FK_ORDEN_COMPRA_B2B_SE_HACE_POR FOREIGN KEY (FK_USUARIO) REFERENCES USUARIO(ID_USUARIO),
    CONSTRAINT FK_ORDEN_COMPRA_B2B_LO_VENDE FOREIGN KEY (FK_CONTRATO_CARGO) REFERENCES CONTRATO_CARGO(ID_CONTRATO_CARGO)

);

/*==============================================================*/
/* Index: ORDEN_COMPRA_B2B_PK REVISADO                                  */
/*==============================================================*/
create unique index ORDEN_COMPRA_B2B_PK on ORDEN_COMPRA_B2B (
ID_ORDEN_COMPRA_B2B
);

/*==============================================================*/
/* Index: COMPRA_MASIVAMENTE_FK  REVISADO                               */
/*==============================================================*/
create  index COMPRA_MASIVAMENTE_FK on ORDEN_COMPRA_B2B (
FK_USUARIO
);

/*==============================================================*/
/* Index: ES_EL_QUE_VENDE_FK  REVISADO                                  */
/*==============================================================*/
create  index ES_EL_QUE_VENDE_FK on ORDEN_COMPRA_B2B (
FK_CONTRATO_CARGO
);

/*==============================================================*/
/* Table: ORDEN_COMPRA_B2C    REVISADO                                  */
/*==============================================================*/
create table ORDEN_COMPRA_B2C (
   ID_ORDEN_COMPRA_B2C  SERIAL               not null,
   FK_CONTRATO_CARGO    INT4                 not null,
   FK_USUARIO           INT4                 not null,
   FECHAHORA_ORDEN_COMPRA_B2C TIMESTAMP                 not null,
   N_FACTURA_COMPRA_B2C INT4                 not null,
   SUBTOTAL_ORDEN_COMPRA_B2C DECIMAL(20,2)        not null,
   TOTAL_ORDEN_COMPRA_B2C DECIMAL(20,2)        not null,
   constraint PK_ORDEN_COMPRA_B2C primary key (ID_ORDEN_COMPRA_B2C),
   CONSTRAINT FK_ORDEN_COMPRA_B2C_LO_VENDE FOREIGN KEY (FK_CONTRATO_CARGO) REFERENCES CONTRATO_CARGO(ID_CONTRATO_CARGO),
   CONSTRAINT FK_ORDEN_COMPRA_B2C_LO_COMPRA FOREIGN KEY (FK_USUARIO) REFERENCES USUARIO(ID_USUARIO)
);

/*==============================================================*/
/* Index: ORDEN_COMPRA_B2C_PK REVISADO                                  */
/*==============================================================*/
create unique index ORDEN_COMPRA_B2C_PK on ORDEN_COMPRA_B2C (
ID_ORDEN_COMPRA_B2C
);
/*==============================================================*/
/* Index: QUIERE_COMPRAR_FK REVISADO                                    */
/*==============================================================*/
create  index QUIERE_COMPRAR_FK on ORDEN_COMPRA_B2C (
FK_USUARIO
);

/*==============================================================*/
/* Index: VENDE_FK   REVISADO                                           */
/*==============================================================*/
create  index VENDE_FK on ORDEN_COMPRA_B2C (
FK_CONTRATO_CARGO
);

/*==============================================================*/
/* Table: PAGO_MEMBRESIA    REVISADO                                    */
/*==============================================================*/
create table PAGO_MEMBRESIA (
    ID_PAGO_MEMBRESIA      SERIAL               not null,
   FK_USUARIO_METODO_PAGO INT4                 not null,
   FK_MEMBRESIA         INT4                 not null,
   FK_ESTATUS_PAGO_MEMBRESIA INT4                 not null,
   FK_MONEDA            INT4                 not null,
   FECHA_PAGO_MEMBRESIA DATE                 not null,
   MONTO_PAGO_MEMBRESIA DECIMAL(20,2)        not null,
   constraint PK_PAGO_MEMBRESIA primary key (ID_PAGO_MEMBRESIA),
   CONSTRAINT FK_PAGO_MEMBRESIA_SE_PAGA_MEDIANTE FOREIGN KEY (FK_MONEDA) REFERENCES MONEDA(ID_MONEDA),
   CONSTRAINT FK_PAGO_MEMBRESIA_ES_REALIZADA_POR FOREIGN KEY (FK_USUARIO_METODO_PAGO) REFERENCES USUARIO_METODO_PAGO(ID_USUARIO_METODO_PAGO),
    CONSTRAINT FK_PAGO_MEMBRESIA_SE_PAGA_LA FOREIGN KEY (FK_MEMBRESIA) REFERENCES MEMBRESIA(ID_MEMBRESIA),
    CONSTRAINT FK_PAGO_MEMBRESIA_ES_CLASIFICADA_POR FOREIGN KEY (FK_ESTATUS_PAGO_MEMBRESIA) REFERENCES ESTATUS_PAGO_MEMBRESIA(ID_ESTATUS_PAGO_MEMBRESIA)
);

/*==============================================================*/
/* Index: PAGO_MEMBRESIA_PK REVISADO                                    */
/*==============================================================*/
create unique index PAGO_MEMBRESIA_PK on PAGO_MEMBRESIA (
ID_PAGO_MEMBRESIA
);

/*==============================================================*/
/* Index: ES_REALIZADA_FK    REVISADO                                   */
/*==============================================================*/
create  index ES_REALIZADA1_FK on PAGO_MEMBRESIA (
FK_USUARIO_METODO_PAGO
);

/*==============================================================*/
/* Index: ES_REALIZADA_FK   REVISADO                                    */
/*==============================================================*/
create  index ES_REALIZADA2_FK on PAGO_MEMBRESIA (
FK_MEMBRESIA
);

/*==============================================================*/
/* Index: SE_PAGA_FK    REVISADO                                        */
/*==============================================================*/
create  index SE_PAGA_FK on PAGO_MEMBRESIA (
FK_ESTATUS_PAGO_MEMBRESIA
);

/*==============================================================*/
/* Index: ES_CLASIFICADA_POR_FK  REVISADO                               */
/*==============================================================*/
create  index ES_CLASIFICADA_POR_FK on PAGO_MEMBRESIA (
FK_MONEDA
);

/*==============================================================*/
/* Table: PAGO_SUBASTA   REVISADO                                       */
/*==============================================================*/
create table PAGO_SUBASTA (
    ID_PAGO_SUBASTA         SERIAL               not null,
   FK_USUARIO_METODO_PAGO INT4                 not null,
   FK_GANADOR           INT4                 not null,
   FK_MONEDA            INT4                 not null,
   MONTO_PAGO           DECIMAL(20,2)        not null,
   FECHAHORA_PAGO       TIMESTAMP                 not null,
   constraint PK_PAGO_SUBASTA primary key (ID_PAGO_SUBASTA),
   CONSTRAINT FK_PAGO_SUBASTA_SE_PAGA_MEDIANTE FOREIGN KEY (FK_MONEDA) REFERENCES MONEDA(ID_MONEDA),
   CONSTRAINT FK_PAGO_SUBASTA_ES_REALIZADA_POR FOREIGN KEY (FK_USUARIO_METODO_PAGO) REFERENCES USUARIO_METODO_PAGO(ID_USUARIO_METODO_PAGO),
    CONSTRAINT FK_PAGO_SUBASTA_ES_PAGADA_A FOREIGN KEY (FK_GANADOR) REFERENCES USUARIO(ID_USUARIO)
);

/*==============================================================*/
/* Index: PAGO_SUBASTA_PK  REVISADO                                     */
/*==============================================================*/
create unique index PAGO_SUBASTA_PK on PAGO_SUBASTA (
ID_PAGO_SUBASTA
);

/*==============================================================*/
/* Index: ES_VALIDA_FK    REVISADO                                      */
/*==============================================================*/
create  index ES_VALIDA_FK on PAGO_SUBASTA (
FK_USUARIO_METODO_PAGO
);

/*==============================================================*/
/* Index: ES_REALIZADO_EL_PAGO2_FK  REVISADO                            */
/*==============================================================*/
create  index ES_REALIZADO_EL_PAGO2_FK on PAGO_SUBASTA (
FK_MONEDA
);

/*==============================================================*/
/* Index: TIENE_QUE_PAGAR_FK    REVISADO                                */
/*==============================================================*/
create  index TIENE_QUE_PAGAR_FK on PAGO_SUBASTA (
FK_GANADOR
);

/*==============================================================*/
/* Table: HISTORICO_FASE_PRODUCCION   REVISADO                          */
/*==============================================================*/
create table HISTORICO_FASE_PRODUCCION (
    ID_HISTORICO_FASE_PRODUCCION SERIAL               not null,
   FK_ESTATUS_FP        INT4                 not null,
   FK_FASE_PRODUCCION   INT4                 not null,
   FECHAHORA_INICIO_FASEP TIMESTAMP                 not null,
   FECHAHORA_FINAL_FASEP TIMESTAMP                 null,
   constraint PK_HISTORICO_FASE_PRODUCCION primary key (ID_HISTORICO_FASE_PRODUCCION),
   CONSTRAINT FK_HISTORICO_FASE_PRODUCCION_SE_DESCRITA_POR FOREIGN KEY (FK_ESTATUS_FP) REFERENCES ESTATUS_FASE_PRODUCCION(ID_ESTATUS_FP),
    CONSTRAINT FK_HISTORICO_FASE_PRODUCCION_SE_REGISTRARA FOREIGN KEY (FK_FASE_PRODUCCION) REFERENCES FASE_PRODUCCION(ID_FASE_PRODUCCION)
);

/*==============================================================*/
/* Index: HISTORICO_FASE_PRODUCCION_PK  REVISADO                        */
/*==============================================================*/
create unique index HISTORICO_FASE_PRODUCCION_PK on HISTORICO_FASE_PRODUCCION (
ID_HISTORICO_FASE_PRODUCCION
);

/*==============================================================*/
/* Index: HISTORICO_FASE_PRODUCCION_FK  REVISADO                        */
/*==============================================================*/
create  index HISTORICO_FASE_PRODUCCION_FK on HISTORICO_FASE_PRODUCCION (
FK_ESTATUS_FP
);

/*==============================================================*/
/* Index: RESENA_FK   REVISADO                                          */
/*==============================================================*/
create  index RESENA_FK on HISTORICO_FASE_PRODUCCION (
FK_FASE_PRODUCCION
);

/*==============================================================*/
/* Table: PRODUCTO    REVISADO                                          */
/*==============================================================*/
create table PRODUCTO (
   ID_PRODUCTO          SERIAL               not null,
    FK_BASEDISENO_CONSTRUCCION INT4                 not null,
   FK_BASEDISENO        INT4                 not null,
   FK_FASE_PRODUCCION   INT4                 not null,
    FK_CATEGORIA_BASEDISENO INT4                not null,
    FK_BASEDISENO_SETREGALO INT4                NOT NULL,
    FK_CLASIFICACION_BASEDISENO INT4            NOT NULL,
    FK_PROFESION_BASEDISENO INT4 NOT NULL,
    FK_CARACTERISTICA_BASEDISENO INT4 NOT NULL,
   CONDICION_PRODUCTO   VARCHAR(100)         not null,
   PESO_PRODUCTO        DECIMAL(20,2)        not null,
   constraint PK_PRODUCTO primary key (ID_PRODUCTO),
   CONSTRAINT FK_BASEDISENO_CONSTRUCCION FOREIGN KEY (FK_BASEDISENO_CONSTRUCCION) REFERENCES BASE_DISENO_CONSTRUCCION(ID_BASEDISENO_CONSTRUCCION),
   CONSTRAINT FK_BASEDISENO FOREIGN KEY (FK_BASEDISENO) REFERENCES BASE_DISENO(ID_BASEDISENO),
   CONSTRAINT FK_FASE_PRODUCCION FOREIGN KEY (FK_FASE_PRODUCCION) REFERENCES FASE_PRODUCCION(ID_FASE_PRODUCCION),
   CONSTRAINT FK_CATEGORIA_BASEDISENO FOREIGN KEY (FK_CATEGORIA_BASEDISENO) REFERENCES CATEGORIA_BASEDISENO(ID_CATEGORIA_BASEDISENO),
   CONSTRAINT FK_BASEDISENO_SETREGALO FOREIGN KEY (FK_BASEDISENO_SETREGALO) REFERENCES BASEDISENO_SETREGALO(ID_BASEDISENO_SETREGALO),
   CONSTRAINT FK_CLASIFICACION_BASEDISENO FOREIGN KEY (FK_CLASIFICACION_BASEDISENO) REFERENCES CLASIFICACION_BASEDISENO(ID_CLASIFICACION_BASEDISENO),
   CONSTRAINT FK_PROFESION_BASEDISENO FOREIGN KEY (FK_PROFESION_BASEDISENO) REFERENCES PROFESION_BASEDISENO(ID_PROFESION_BASEDISENO),
   CONSTRAINT FK_CARACTERISTICA_BASEDISENO FOREIGN KEY (FK_CARACTERISTICA_BASEDISENO) REFERENCES CARACTERISTICA_BASEDISENO(ID_CARACTERISTICA_BASEDISENO),
   CONSTRAINT CK_CONDICION_PRODUCTO CHECK (CONDICION_PRODUCTO IN ('NRFB','MINT','Restoration needed'))
);

/*==============================================================*/
/* Index: PRODUCTO_PK   REVISADO                                        */
/*==============================================================*/
create unique index PRODUCTO_PK on PRODUCTO (
ID_PRODUCTO
);

/*==============================================================*/
/* Index: SE_CREARA_FK  REVISADO                                        */
/*==============================================================*/
create  index SE_CREARA_FK on PRODUCTO (
FK_BASEDISENO_CONSTRUCCION
);

/*==============================================================*/
/* Index: SE_CATEGORIZA_FK REVISADO                                     */
/*==============================================================*/
create  index SE_CATEGORIZA_FK on PRODUCTO (
FK_CATEGORIA_BASEDISENO
);

/*==============================================================*/
/* Index: SE_AGRUPARA_FK  REVISADO                                      */
/*==============================================================*/
create  index SE_AGRUPARA_FK on PRODUCTO (
FK_BASEDISENO_SETREGALO
);

/*==============================================================*/
/* Index: SE_CLASIFICA_FK   REVISADO                                    */
/*==============================================================*/
create  index SE_CLASIFICA_FK on PRODUCTO (
FK_CLASIFICACION_BASEDISENO
);

/*==============================================================*/
/* Index: EJERCE_FK    REVISADO                                         */
/*==============================================================*/
create  index EJERCE_FK on PRODUCTO (
FK_PROFESION_BASEDISENO
);

/*==============================================================*/
/* Index: SE_CARACTERIZA_FK REVISADO                                    */
/*==============================================================*/
create  index SE_CARACTERIZA_FK on PRODUCTO (
FK_CARACTERISTICA_BASEDISENO
);

/*==============================================================*/
/* Index: SE_DISENA_FK    REVISADO                                      */
/*==============================================================*/
create  index SE_DISENA_FK on PRODUCTO (
FK_BASEDISENO
);

/*==============================================================*/
/* Index: SE_CREA_POR_FK  REVISADO                                      */
/*==============================================================*/
create  index SE_CREA_POR_FK on PRODUCTO (
FK_FASE_PRODUCCION
);

/*==============================================================*/
/* Table: DESCUENTO_ORDEN_B2B      REVISADO                             */
/*==============================================================*/
create table DESCUENTO_ORDEN_B2B (
    ID_DESCUENTO_ORDEN_B2B SERIAL               not null,
   FK_ORDEN_COMPRA_B2B  INT4                 not null,
   FK_DESCUENTO         INT4                 not null,
   MONTO_DESCUENTO_B2B  DECIMAL(20,2)        not null,
   constraint PK_DESCUENTO_ORDEN_B2B primary key (ID_DESCUENTO_ORDEN_B2B),
    constraint FK_DESCUENT_DESCUENTA_DESCUENT foreign key (FK_DESCUENTO) references DESCUENTO (ID_DESCUENTO),
    constraint FK_DESCUENT_SE_LE_DES_ORDEN_CO foreign key (FK_ORDEN_COMPRA_B2B) references ORDEN_COMPRA_B2B(ID_ORDEN_COMPRA_B2B)
);

/*==============================================================*/
/* Index: DESCUENTO_ORDEN_B2B_PK   REVISADO                             */
/*==============================================================*/
create unique index DESCUENTO_ORDEN_B2B_PK on DESCUENTO_ORDEN_B2B (
ID_DESCUENTO_ORDEN_B2B
);

/*==============================================================*/
/* Index: SE_LE_DESCUENTA_FK    REVISADO                                    */
/*==============================================================*/
create  index SE_LE_DESCUENTA_FK on DESCUENTO_ORDEN_B2B (
FK_ORDEN_COMPRA_B2B
);

/*==============================================================*/
/* Index: DESCUENTA_FK    REVISADO                                          */
/*==============================================================*/
create  index DESCUENTA_FK on DESCUENTO_ORDEN_B2B (
FK_DESCUENTO
);

/*==============================================================*/
/* Table: DETALLE_MANIFIESTO_CARGO     REVISADO                         */
/*==============================================================*/
create table DETALLE_MANIFIESTO_CARGO (
    ID_DETALLE_MANIFIESTO_CARGO SERIAL               not null,
   FK_MANIFIESTOCARGO   INT4                 not null,
   FK_ORDEN_COMPRA_B2B  INT4                 not null,
   CANTIDAD_DESPACHADA_MC INT4                 not null,
   constraint PK_DETALLE_MANIFIESTO_CARGO primary key (ID_DETALLE_MANIFIESTO_CARGO),
   constraint FK_SE_DESPACHA_EN_MANIFIESTO FOREIGN KEY (FK_MANIFIESTOCARGO) REFERENCES MANIFIESTO_CARGO(ID_MANIFIESTOCARGO),
    constraint FK_SE_DESPACHA_ORDEN_B2B FOREIGN KEY (FK_ORDEN_COMPRA_B2B) REFERENCES ORDEN_COMPRA_B2B(ID_ORDEN_COMPRA_B2B)
);

/*==============================================================*/
/* Index: DETALLE_MANIFIESTO_CARGO_PK REVISADO                          */
/*==============================================================*/
create unique index DETALLE_MANIFIESTO_CARGO_PK on DETALLE_MANIFIESTO_CARGO (
ID_DETALLE_MANIFIESTO_CARGO
);

/*==============================================================*/
/* Index: SE_DESPACHA_EN_FK            REVISADO                         */
/*==============================================================*/
create  index SE_DESPACHA_EN_FK on DETALLE_MANIFIESTO_CARGO (
FK_MANIFIESTOCARGO
);

/*==============================================================*/
/* Index: SE_DESPACHA_FK       REVISADO                                 */
/*==============================================================*/
create  index SE_DESPACHA_FK on DETALLE_MANIFIESTO_CARGO (
FK_ORDEN_COMPRA_B2B
);

/*==============================================================*/
/* Table: HISTORICO_ORDEN_COMPRA_B2B    REVISADO                        */
/*==============================================================*/
create table HISTORICO_ORDEN_COMPRA_B2B (
    ID_HISTORICO_ORDEN_COMPRA_B2B SERIAL               not null,
   FK_ORDEN_COMPRA_B2B  INT4                 not null,
   FK_ESTATUS_ORDEN_B2B INT4                 not null,
   FECHAHORA_INICIO_COMPRA_B2B TIMESTAMP                 not null,
   FECHAHORA_FIN_COMPRA_B2B TIMESTAMP                 null,
   constraint PK_HISTORICO_ORDEN_COMPRA_B2B primary key (ID_HISTORICO_ORDEN_COMPRA_B2B),
   CONSTRAINT FK_HISTORICO_ORDEN_COMPRA_B2B_SE_DESCRITA_POR FOREIGN KEY (FK_ESTATUS_ORDEN_B2B) REFERENCES ESTATUS_ORDEN_B2B(ID_ESTATUS_ORDEN_B2B),
    CONSTRAINT FK_HISTORICO_ORDEN_COMPRA_B2B_SE_REGISTRARA FOREIGN KEY (FK_ORDEN_COMPRA_B2B) REFERENCES ORDEN_COMPRA_B2B(ID_ORDEN_COMPRA_B2B)
);

/*==============================================================*/
/* Index: HISTORICO_ORDEN_COMPRA_B2B_PK   REVISADO                      */
/*==============================================================*/
create unique index HISTORICO_ORDEN_COMPRA_B2B_PK on HISTORICO_ORDEN_COMPRA_B2B (
ID_HISTORICO_ORDEN_COMPRA_B2B
);

/*==============================================================*/
/* Index: VA_REGISTRADA_FK   REVISADO                                   */
/*==============================================================*/
create  index VA_REGISTRADA_FK on HISTORICO_ORDEN_COMPRA_B2B (
FK_ORDEN_COMPRA_B2B
);

/*==============================================================*/
/* Index: VA_DESCRITA_FK     REVISADO                                   */
/*==============================================================*/
create  index VA_DESCRITA_FK on HISTORICO_ORDEN_COMPRA_B2B (
FK_ESTATUS_ORDEN_B2B
);

/*==============================================================*/
/* Table: DESCUENTO_ORDEN_B2C   REVISADO                                */
/*==============================================================*/
create table DESCUENTO_ORDEN_B2C (
    ID_DESCUENTO_ORDEN_B2C SERIAL               not null,
   FK_ORDEN_COMPRA_B2C  INT4                 not null,
   FK_DESCUENTO         INT4                 not null,
   MONTO_DESCUENTO_B2C  DECIMAL(20,2)        not null,
   constraint PK_DESCUENTO_ORDEN_B2C primary key (ID_DESCUENTO_ORDEN_B2C),
    constraint FK_DESCUENT_SE_DESCUE_DESCUENT foreign key (FK_DESCUENTO) references DESCUENTO (ID_DESCUENTO),
    constraint FK_DESCUENT_ES_DESCON_ORDEN_CO foreign key (FK_ORDEN_COMPRA_B2C) references ORDEN_COMPRA_B2C(ID_ORDEN_COMPRA_B2C)
);

/*==============================================================*/
/* Index: DESCUENTO_ORDEN_B2C_PK   REVISADO                             */
/*==============================================================*/
create unique index DESCUENTO_ORDEN_B2C_PK on DESCUENTO_ORDEN_B2C (
ID_DESCUENTO_ORDEN_B2C
);

/*==============================================================*/
/* Index: ES_DESCONTADO_FK     REVISADO                                 */
/*==============================================================*/
create  index ES_DESCONTADO_FK on DESCUENTO_ORDEN_B2C (
FK_ORDEN_COMPRA_B2C
);

/*==============================================================*/
/* Index: SE_DESCUENTA_FK   REVISADO                                    */
/*==============================================================*/
create  index SE_DESCUENTA_FK on DESCUENTO_ORDEN_B2C (
FK_DESCUENTO
);

/*==============================================================*/
/* Table: ENVIO_B2C            revisado                                 */
/*==============================================================*/
create table ENVIO_B2C (
   ID_ENVIO_B2C         SERIAL               not null,
   FK_COURIER           INT4                 not null,
   FK_ORDEN_COMPRA_B2C  INT4                 not null,
   FK_LUGAR_DESTINO            INT4                 not null,
   FK_LUGAR_ORIGEN         INT4                 not null,
   NUMERO_TRACKING      INT4                 not null,
   FECHA_ENVIO_B2C      DATE                 not null,
   COSTO_ENVIO_B2C      DECIMAL(20,2)        not null,
   DIRECCION_ENVIO_B2C  VARCHAR(200)         not null,
   DIRECCION_ORIGEN_B2C VARCHAR(200)         not null,
   constraint PK_ENVIO_B2C primary key (ID_ENVIO_B2C),
   CONSTRAINT FK_ENVIO_B2C_COURIER FOREIGN KEY (FK_COURIER) REFERENCES COURIER(ID_COURIER),
    CONSTRAINT FK_ENVIO_B2C_ORDEN_COMPRA FOREIGN KEY (FK_ORDEN_COMPRA_B2C) REFERENCES ORDEN_COMPRA_B2C(ID_ORDEN_COMPRA_B2C),
    CONSTRAINT FK_ENVIO_B2C_LUGAR_DESTINO FOREIGN KEY (FK_LUGAR_DESTINO) REFERENCES LUGAR(ID_LUGAR),
    CONSTRAINT FK_ENVIO_B2C_LUGAR_ORIGEN FOREIGN KEY (FK_LUGAR_ORIGEN) REFERENCES LUGAR(ID_LUGAR)
);

/*==============================================================*/
/* Index: ENVIO_B2C_PK      REVISADO                                    */
/*==============================================================*/
create unique index ENVIO_B2C_PK on ENVIO_B2C (
ID_ENVIO_B2C
);

/*==============================================================*/
/* Index: SERA_ENTREGADO2_FK      REVISADO                              */
/*==============================================================*/
create  index SERA_ENTREGADO2_FK on ENVIO_B2C (
FK_ORDEN_COMPRA_B2C
);

/*==============================================================*/
/* Index: VA_A_ENTREGAR_FK      REVISADO                                */
/*==============================================================*/
create  index VA_A_ENTREGAR_FK on ENVIO_B2C (
FK_COURIER
);

/*==============================================================*/
/* Index: DIR_ENVIO_B2C_FK    REVISADO                                  */
/*==============================================================*/
create  index DIR_ENVIO_B2C_FK on ENVIO_B2C (
FK_LUGAR_DESTINO
);

/*==============================================================*/
/* Index: DIR_ORIGEN_B2C_FK  REVISADO                                   */
/*==============================================================*/
create  index DIR_ORIGEN_B2C_FK on ENVIO_B2C (
FK_LUGAR_ORIGEN
);

/*==============================================================*/
/* Table: HISTORICO_ORDEN_COMPRA_B2C    REVISADO                        */
/*==============================================================*/
create table HISTORICO_ORDEN_COMPRA_B2C (
    ID_HISTORICO_ORDEN_COMPRA_B2C SERIAL               not null,
   FK_ESTATUS_B2C       INT4                 not null,
   FK_ORDEN_COMPRA_B2C  INT4                 not null,
   FECHAHORA_INICIO_COMPRA_B2C TIMESTAMP                 not null,
   FECHAHORA_FIN_COMPRA_B2C TIMESTAMP                 null,
   constraint PK_HISTORICO_ORDEN_COMPRA_B2C primary key (ID_HISTORICO_ORDEN_COMPRA_B2C),
   CONSTRAINT FK_HISTORICO_ORDEN_COMPRA_B2C_SE_DESCRITA_POR FOREIGN KEY (FK_ESTATUS_B2C) REFERENCES ESTATUS_ORDEN_COMPRA_B2C(ID_ESTATUS_B2C),
    CONSTRAINT FK_HISTORICO_ORDEN_COMPRA_B2C_SE_REGISTRARA FOREIGN KEY (FK_ORDEN_COMPRA_B2C) REFERENCES ORDEN_COMPRA_B2C(ID_ORDEN_COMPRA_B2C)
);

/*==============================================================*/
/* Index: HISTORICO_ORDEN_COMPRA_B2C_PK  REVISADO                       */
/*==============================================================*/
create unique index HISTORICO_ORDEN_COMPRA_B2C_PK on HISTORICO_ORDEN_COMPRA_B2C (
ID_HISTORICO_ORDEN_COMPRA_B2C
);

/*==============================================================*/
/* Index: SUJETA_A_FK        REVISADO                                   */
/*==============================================================*/
create  index SUJETA_A_FK on HISTORICO_ORDEN_COMPRA_B2C (
FK_ESTATUS_B2C
);

/*==============================================================*/
/* Index: CONDICIONADO_FK  REVISADO                                     */
/*==============================================================*/
create  index CONDICIONADO_FK on HISTORICO_ORDEN_COMPRA_B2C (
FK_ORDEN_COMPRA_B2C
);

/*==============================================================*/
/* Table: PAGO_B2C      REVISADO                                        */
/*==============================================================*/
create table PAGO_B2C (
    ID_PAGO_B2C         SERIAL               not null,
   FK_ORDEN_COMPRA_B2C  INT4                 not null,
   FK_PAYPAL   INT4                  null,
   FK_CRIPTOMONEDA       INT4                  null,
   FK_TARJETA_CREDITO       INT4                  null,
   FK_TARJETA_DEBITO       INT4                  null,
   FK_MONEDA            INT4                 not null,
   MONTO_PAGO_B2C       DECIMAL(20,2)        not null,
   FECHAHORA_PAGO_B2C   TIMESTAMP                 not null,
   constraint PK_PAGO_B2C primary key (ID_PAGO_B2C),
   CONSTRAINT FK_PAGO_B2C_SE_PAGA_POR FOREIGN KEY (FK_PAYPAL) REFERENCES PAYPAL(ID_PAYPAL),
   CONSTRAINT FK_PAGO_B2C_SE_PAGA_CON FOREIGN KEY (FK_CRIPTOMONEDA) REFERENCES CRIPTOMONEDA(ID_CRIPTOMONEDA),
   CONSTRAINT FK_PAGO_B2C_SE_PAGA_MEDIANTE FOREIGN KEY (FK_TARJETA_CREDITO) REFERENCES TARJETA_CREDITO(ID_TARJETA_CREDITO),
   CONSTRAINT FK_PAGO_B2C_SE_PAGA_CON2 FOREIGN KEY (FK_TARJETA_DEBITO) REFERENCES TARJETA_DEBITO(ID_TARJETA_DEBITO),
   CONSTRAINT FK_PAGO_B2C_SE_PAGA_EN FOREIGN KEY (FK_MONEDA) REFERENCES MONEDA(ID_MONEDA),
   CONSTRAINT FK_PAGO_B2C_SE_PAGA_LA FOREIGN KEY (FK_ORDEN_COMPRA_B2C) REFERENCES ORDEN_COMPRA_B2C(ID_ORDEN_COMPRA_B2C)
);

/*==============================================================*/
/* Index: PAGO_B2C_PK  REVISADO                                         */
/*==============================================================*/
create unique index PAGO_B2C_PK on PAGO_B2C (
ID_PAGO_B2C
);

/*==============================================================*/
/* Index: ES_CONCILIADO_FK  REVISADO                                    */
/*==============================================================*/
create  index ES_CONCILIADO_FK on PAGO_B2C (
FK_ORDEN_COMPRA_B2C
);

/*==============================================================*/
/* Index: SE_VA_PAGAR_FK  REVISADO                                       */
/*==============================================================*/
create  index SE_VA_PAGAR_FK on PAGO_B2C (
FK_PAYPAL
);

/*==============================================================*/
/* Index: SE_UTILIZARA_FK     REVISADO                                  */
/*==============================================================*/
create  index SE_UTILIZARA_FK on PAGO_B2C (
FK_CRIPTOMONEDA
);

/*==============================================================*/
/* Index: SE_UTILIZA_FK     REVISADO                                    */
/*==============================================================*/
create  index SE_UTILIZA_FK on PAGO_B2C (
FK_TARJETA_CREDITO
);

/*==============================================================*/
/* Index: SE_PAGARA_FK   REVISADO                                       */
/*==============================================================*/
create  index SE_PAGARA_FK on PAGO_B2C (
FK_TARJETA_DEBITO
);

/*==============================================================*/
/* Index: ES_PAGADO_MEDIANTE2_FK  REVISADO                              */
/*==============================================================*/
create  index ES_PAGADO_MEDIANTE2_FK on PAGO_B2C (
FK_MONEDA
);

/*==============================================================*/
/* Table: DETALLE_ORDEN_B2B   REVISADO                                  */
/*==============================================================*/
create table DETALLE_ORDEN_B2B (
    ID_DETALLE_ORDEN_B2B SERIAL               not null,
   FK_PRODUCTO          INT4                 not null,
   FK_ORDEN_COMPRA_B2B  INT4                 not null,
   CANTIDADSOLICITAD_ORDEN_B2B INT4                 not null,
   CANTIDAD_DESPACHADA  INT4                 null,
   PRECIO_UNITARIO_DETALLE_B2B DECIMAL(20,2)        not null,
   constraint PK_DETALLE_ORDEN_B2B primary key (ID_DETALLE_ORDEN_B2B),
    constraint FK_DETALLE_ORDEN_B2B_ES_DETALLADA_POR FOREIGN KEY (FK_ORDEN_COMPRA_B2B) REFERENCES ORDEN_COMPRA_B2B(ID_ORDEN_COMPRA_B2B),
    constraint FK_DETALLE_ORDEN_B2B_SE_PIDE FOREIGN KEY (FK_PRODUCTO) REFERENCES PRODUCTO(ID_PRODUCTO)
);

/*==============================================================*/
/* Index: DETALLE_ORDEN_B2B_PK     REVISADO                             */
/*==============================================================*/
create unique index DETALLE_ORDEN_B2B_PK on DETALLE_ORDEN_B2B (
ID_DETALLE_ORDEN_B2B
);

/*==============================================================*/
/* Index: SE_PIDE_FK        REVISADO                                    */
/*==============================================================*/
create  index SE_PIDE_FK on DETALLE_ORDEN_B2B (
FK_PRODUCTO
);

/*==============================================================*/
/* Index: ESTA_DESCRITA_FK  REVISADO                                    */
/*==============================================================*/
create  index ESTA_DESCRITA_FK on DETALLE_ORDEN_B2B (
FK_ORDEN_COMPRA_B2B
);

/*==============================================================*/
/* Table: DETALLE_ORDEN_B2C     REVISADO                                */
/*==============================================================*/
create table DETALLE_ORDEN_B2C (
    ID_DETALLE_ORDEN_B2C SERIAL               not null,
   FK_PRODUCTO          INT4                 not null,
   FK_ORDEN_COMPRA_B2C  INT4                 not null,
   CANTIDAD_ORDEN_B2C   INT4                 not null,
   PRECIO_UNITARIO_B2C  DECIMAL(20,2)        not null,
   constraint PK_DETALLE_ORDEN_B2C primary key (ID_DETALLE_ORDEN_B2C),
   constraint FK_DETALLE_ORDEN_B2C_ES_DETALLADA_POR FOREIGN KEY (FK_ORDEN_COMPRA_B2C) REFERENCES ORDEN_COMPRA_B2C(ID_ORDEN_COMPRA_B2C),
    constraint FK_DETALLE_ORDEN_B2C_SE_PIDE FOREIGN KEY (FK_PRODUCTO) REFERENCES PRODUCTO(ID_PRODUCTO)
);

/*==============================================================*/
/* Index: DETALLE_ORDEN_B2C_PK  REVISADO                                */
/*==============================================================*/
create unique index DETALLE_ORDEN_B2C_PK on DETALLE_ORDEN_B2C (
ID_DETALLE_ORDEN_B2C
);

/*==============================================================*/
/* Index: SE_APARTA_FK        REVISADO                                  */
/*==============================================================*/
create  index SE_APARTA_FK on DETALLE_ORDEN_B2C (
FK_PRODUCTO
);

/*==============================================================*/
/* Index: ES_DETALLADA_POR_FK   REVISADO                                */
/*==============================================================*/
create  index ES_DETALLADA_POR_FK on DETALLE_ORDEN_B2C (
FK_ORDEN_COMPRA_B2C
);

/*==============================================================*/
/* Table: HISTORICO_INV_PRODUCTO    REVISADO                            */
/*==============================================================*/
create table HISTORICO_INV_PRODUCTO (
    ID_HISTORICO_INV_PRODUCTO SERIAL               not null,
    FK_PRODUCTO          INT4                 not null,
   FK_ESTATUS_INVENTARIO INT4                 not null,
   PRODUCTO_FECHA_INCIO DATE                 not null,
   PRODUCTO_FECHA_FIN   DATE                 null,
   constraint PK_HISTORICO_INV_PRODUCTO primary key (ID_HISTORICO_INV_PRODUCTO),
   CONSTRAINT FK_HISTORICO_INV_PRODUCTO_SE_DESCRITA_POR FOREIGN KEY (FK_ESTATUS_INVENTARIO) REFERENCES ESTATUS_INVENTARIO(ID_ESTATUS_INVENTARIO),
   CONSTRAINT FK_HISTORICO_INV_PRODUCTO_SE_REGISTRARA FOREIGN KEY (FK_PRODUCTO) REFERENCES PRODUCTO(ID_PRODUCTO)
);

/*==============================================================*/
/* Index: HISTORICO_INV_PRODUCTO_PK  REVISADO                           */
/*==============================================================*/
create unique index HISTORICO_INV_PRODUCTO_PK on HISTORICO_INV_PRODUCTO (
ID_HISTORICO_INV_PRODUCTO
);

/*==============================================================*/
/* Index: HISTORICO_INV_PRODUCTO_FK    REVISADO                         */
/*==============================================================*/
create  index HISTORICO_INV_PRODUCTO_FK on HISTORICO_INV_PRODUCTO (
FK_ESTATUS_INVENTARIO
);


/*==============================================================*/
/* Index: SE_CERTIFICA_FK   REVISADO                                    */
/*==============================================================*/
create  index SE_CERTIFICA_FK on HISTORICO_INV_PRODUCTO (
FK_PRODUCTO
);

/*==============================================================*/
/* Table: HISTORICO_PRECIO       REVISADO                               */
/*==============================================================*/
create table HISTORICO_PRECIO (
    ID_HISTORICO_PRECIO SERIAL               not null,
   FK_PRODUCTO          INT4                 not null,
   FK_ESTATUS_PRECIO    INT4                 not null,
   MONTO_PRECIO         DECIMAL(10,2)        not null,
   FECHAINICIO_HISTORICO_PRECIO DATE                 not null,
   TIPO_PRECIO          VARCHAR(50)          not null,
   FECHAFIN_HISTORICO_PRECIO DATE                 null,
   constraint PK_HISTORICO_PRECIO primary key (ID_HISTORICO_PRECIO),
    constraint CKC_TIPO_PRECIO_HISTORIC check (TIPO_PRECIO in ('DET','MAYOR','SUB')),
    CONSTRAINT FK_HISTORICO_PRECIO_SE_DESCRITA_POR FOREIGN KEY (FK_ESTATUS_PRECIO) REFERENCES ESTATUS_PRECIO(ID_ESTATUS_PRECIO),
    CONSTRAINT FK_HISTORICO_PRECIO_SE_REGISTRARA FOREIGN KEY (FK_PRODUCTO) REFERENCES PRODUCTO(ID_PRODUCTO)

);

/*==============================================================*/
/* Index: HISTORICO_PRECIO_PK      REVISADO                             */
/*==============================================================*/
create unique index HISTORICO_PRECIO_PK on HISTORICO_PRECIO (
ID_HISTORICO_PRECIO
);

/*==============================================================*/
/* Index: SE_VALUA_FK        REVISADO                                   */
/*==============================================================*/
create  index SE_VALUA_FK on HISTORICO_PRECIO (
FK_PRODUCTO
);

/*==============================================================*/
/* Index: ESTA_PAUTADO_FK  REVISADO                                     */
/*==============================================================*/
create  index ESTA_PAUTADO_FK on HISTORICO_PRECIO (
FK_ESTATUS_PRECIO
);

/*==============================================================*/
/* Table: SUBASTA   revisado                                            */
/*==============================================================*/
create table SUBASTA (
   ID_SUBASTA           SERIAL               not null,
   FK_PRODUCTO          INT4                 not null,
   NOMBRE_SUBASTA       VARCHAR(50)          not null,
   FECHAHORA_INICIO_SUBASTA TIMESTAMP                 not null,
   FECHAHORA_FIN_SUBASTA TIMESTAMP                 not null,
   PRECIO_BASE_SUBASTA  DECIMAL(20,2)        not null,
   INCREMENTO_MINIMO_SUBASTA DECIMAL(20,2)        not null,
   constraint PK_SUBASTA primary key (ID_SUBASTA),
    CONSTRAINT FK_SUBASTA_SE_REALIZA_PARA FOREIGN KEY (FK_PRODUCTO) REFERENCES PRODUCTO(ID_PRODUCTO)
);

/*==============================================================*/
/* Index: SUBASTA_PK    revisado                                        */
/*==============================================================*/
create unique index SUBASTA_PK on SUBASTA (
ID_SUBASTA
);

/*==============================================================*/
/* Index: SE_SUBASTA_FK  revisado                                       */
/*==============================================================*/
create  index SE_SUBASTA_FK on SUBASTA (
FK_PRODUCTO
);

/*==============================================================*/
/* Table: BACKORDER                                             */
/*==============================================================*/
create table BACKORDER (
   ID_BACKORDER         SERIAL               not null,
   FK_DETALLE_ORDEN_B2B INT4                 not null,
   CANTIDAD_PENDIENTE_BACK INT4                 not null,
   FECHAINICIO_BACKORDER DATE                 not null,
   constraint PK_BACKORDER primary key (ID_BACKORDER),
   CONSTRAINT FK_BACKORDER_DETALLE_ORDEN_B2B FOREIGN KEY (FK_DETALLE_ORDEN_B2B) REFERENCES DETALLE_ORDEN_B2B(ID_DETALLE_ORDEN_B2B)
);

/*==============================================================*/
/* Index: BACKORDER_PK                                          */
/*==============================================================*/
create unique index BACKORDER_PK on BACKORDER (
ID_BACKORDER
);

/*==============================================================*/
/* Index: SERA_PAGADA_FK                                        */
/*==============================================================*/
create  index SERA_PAGADA_FK on BACKORDER (
FK_DETALLE_ORDEN_B2B
);

/*==============================================================*/
/* Table: HISTORICO_SUBASTA REVISADO                                    */
/*==============================================================*/
create table HISTORICO_SUBASTA (
    ID_HISTORICO_SUBASTA SERIAL               not null,
   FK_ESTATUS_SUBASTA   INT4                 not null,
   FK_SUBASTA           INT4                 not null,
   FECHAINICIO_ESTATUS_SUBASTA DATE                 not null,
   FECHAFIN_ESTATUS_SUBASTA DATE                 null,
   constraint PK_HISTORICO_SUBASTA primary key (ID_HISTORICO_SUBASTA),
   CONSTRAINT FK_HISTORICO_SUBASTA_SE_DESCRITA_POR FOREIGN KEY (FK_ESTATUS_SUBASTA) REFERENCES ESTATUS_SUBASTA(ID_ESTATUS_SUBASTA),
    CONSTRAINT FK_HISTORICO_SUBASTA_SE_REGISTRARA FOREIGN KEY (FK_SUBASTA) REFERENCES SUBASTA(ID_SUBASTA)   
);

/*==============================================================*/
/* Index: HISTORICO_SUBASTA_PK    REVISADO                              */
/*==============================================================*/
create unique index HISTORICO_SUBASTA_PK on HISTORICO_SUBASTA (
ID_HISTORICO_SUBASTA
);

/*==============================================================*/
/* Index: TIENE_UN_ESTATUS_FK  REVISADO                                 */
/*==============================================================*/
create  index TIENE_UN_ESTATUS_FK on HISTORICO_SUBASTA (
FK_ESTATUS_SUBASTA
);

/*==============================================================*/
/* Index: ES_DETERMINADA_FK  REVISADO                                   */
/*==============================================================*/
create  index ES_DETERMINADA_FK on HISTORICO_SUBASTA (
FK_SUBASTA
);

/*==============================================================*/
/* Table: PUJA     revisado                                             */
/*==============================================================*/
create table PUJA (
   ID_PUJA              SERIAL               not null,
   FK_MONEDA            INT4                 not null,
   FK_USUARIO           INT4                 not null,
   FK_SUBASTA           INT4                 not null,
   MONTO_PUJA           DECIMAL(20,2)        not null,
   FECHAHORA_OFERTADA_PUJA TIMESTAMP            not null,
   constraint PK_PUJA primary key (ID_PUJA),
   CONSTRAINT FK_PUJA_SE_OFERTA_PARA FOREIGN KEY (FK_SUBASTA) REFERENCES SUBASTA(ID_SUBASTA),
   CONSTRAINT FK_PUJA_ES_REALIZADA_POR FOREIGN KEY (FK_USUARIO) REFERENCES USUARIO(ID_USUARIO),
   CONSTRAINT FK_PUJA_SE_REALIZA_EN FOREIGN KEY (FK_MONEDA) REFERENCES MONEDA(ID_MONEDA)
);

/*==============================================================*/
/* Index: PUJA_PK  revisado                                             */
/*==============================================================*/
create unique index PUJA_PK on PUJA (
ID_PUJA
);

/*==============================================================*/
/* Index: OFERTAN_FK   revisado                                         */
/*==============================================================*/
create  index OFERTAN_FK on PUJA (
FK_SUBASTA
);

/*==============================================================*/
/* Index: OFERTA_FK     revisado                                        */
/*==============================================================*/
create  index OFERTA_FK on PUJA (
FK_USUARIO
);

/*==============================================================*/
/* Index: NECESITA_FK   revisado                                        */
/*==============================================================*/
create  index NECESITA_FK on PUJA (
FK_MONEDA
);

/*==============================================================*/
/* Table: HISTORICO_BACKORDER  REVISADO                                 */
/*==============================================================*/
create table HISTORICO_BACKORDER (
    ID_HISTORICO_BACKORDER SERIAL               not null,
   FK_ESTATUS_BACKORDER INT4                 not null,
   FK_BACKORDER         INT4                 not null,
   FECHAHORA_INICIO_BACKORDER TIMESTAMP                 not null,
   FECHAHORA_FIN_BACKORDER TIMESTAMP                 null,
   constraint PK_HISTORICO_BACKORDER primary key (ID_HISTORICO_BACKORDER),
   constraint FK_HISTORICO_BACKORDER_SE_DESCRITA_POR FOREIGN KEY (FK_ESTATUS_BACKORDER) REFERENCES ESTATUS_BACKORDER(ID_ESTATUS_BACKORDER),
    constraint FK_HISTORICO_BACKORDER_SE_LE_REGISTRA FOREIGN KEY (FK_BACKORDER) REFERENCES BACKORDER(ID_BACKORDER)
);

/*==============================================================*/
/* Index: HISTORICO_BACKORDER_PK   REVISADO                             */
/*==============================================================*/
create unique index HISTORICO_BACKORDER_PK on HISTORICO_BACKORDER (
ID_HISTORICO_BACKORDER
);

/*==============================================================*/
/* Index: ES_REGISTRADO_FK  REVISADO                                    */
/*==============================================================*/
create  index ES_REGISTRADO_FK on HISTORICO_BACKORDER (
FK_ESTATUS_BACKORDER
);

/*==============================================================*/
/* Index: SE_LE_REGISTRA_FK REVISADO                                    */
/*==============================================================*/
create  index SE_LE_REGISTRA_FK on HISTORICO_BACKORDER (
FK_BACKORDER
);

/*==============================================================*/
/* Table: GANADOR        REVISADO                                       */
/*==============================================================*/
create table GANADOR (
   ID_GANADOR           SERIAL               not null,
   FK_PUJA              INT4                 not null,
   FK_PENALIZACION      INT4                 null,
   FECHAHORA_GANADOR    TIMESTAMP               not null,
   MONTO_FINAL_GANADOR  DECIMAL(20,2)        not null,
   constraint PK_GANADOR primary key (ID_GANADOR),
   CONSTRAINT FK_GANADOR_SE_GANA_POR FOREIGN KEY (FK_PUJA) REFERENCES PUJA(ID_PUJA),
   CONSTRAINT FK_GANADOR_SE_PENALIZA_POR FOREIGN KEY (FK_PENALIZACION) REFERENCES PENALIZACION(ID_PENALIZACION)
);

/*==============================================================*/
/* Index: GANADOR_PK REVISADO                                           */
/*==============================================================*/
create unique index GANADOR_PK on GANADOR (
ID_GANADOR
);

/*==============================================================*/
/* Index: ES_GANADOR2_FK  REVISADO                                      */
/*==============================================================*/
create  index ES_GANADOR2_FK on GANADOR (
FK_PUJA
);

/*==============================================================*/
/* Index: SE_PENALIZA_FK  REVISADO                                      */
/*==============================================================*/
create  index SE_PENALIZA_FK on GANADOR (
FK_PENALIZACION
);

/*==============================================================*/
/* Table: HISTORICO_EST_PUJA      REVISADO                              */
/*==============================================================*/
create table HISTORICO_EST_PUJA (
    ID_HISTORICO_EST_PUJA SERIAL               not null,
   FK_ESTATUS_PUJA      INT4                 not null,
   FK_PUJA              INT4                 not null,
   FECHAHORA_INICIO_PUJA TIMESTAMP                 not null,
   FECHAHORAFIN_PUJA    TIMESTAMP                 null,
   constraint PK_HISTORICO_EST_PUJA primary key (ID_HISTORICO_EST_PUJA),
   CONSTRAINT FK_HISTORICO_EST_PUJA_SE_DESCRITA_POR FOREIGN KEY (FK_ESTATUS_PUJA) REFERENCES ESTATUS_PUJA(ID_ESTATUS_PUJA),
    CONSTRAINT FK_HISTORICO_EST_PUJA_SE_REGISTRARA FOREIGN KEY (FK_PUJA) REFERENCES PUJA(ID_PUJA)
);

/*==============================================================*/
/* Index: HISTORICO_EST_PUJA_PK    REVISADO                             */
/*==============================================================*/
create unique index HISTORICO_EST_PUJA_PK on HISTORICO_EST_PUJA (
ID_HISTORICO_EST_PUJA
);

/*==============================================================*/
/* Index: SE_ADJUNTA_FK  REVISADO                                       */
/*==============================================================*/
create  index SE_ADJUNTA_FK on HISTORICO_EST_PUJA (
FK_ESTATUS_PUJA
);

/*==============================================================*/
/* Index: SE_REALIZA_FK  REVISADO                                       */
/*==============================================================*/
create  index SE_REALIZA_FK on HISTORICO_EST_PUJA (
FK_PUJA
);

/*==============================================================*/
/* Table: HISTORICO_EST_GANADOR  REVISADO                                 */
/*==============================================================*/
create table HISTORICO_EST_GANADOR (
    ID_HISTORICO_EST_GANADOR SERIAL               not null,
   FK_ESTATUS_GANADOR   INT4                 not null,
   FK_GANADOR           INT4                 not null,
   FECHAHORAINICIO_GANADOR TIMESTAMP                 not null,
   FECHAHORAFIN_GANADOR TIMESTAMP                 null,
   constraint PK_HISTORICO_EST_GANADOR primary key (ID_HISTORICO_EST_GANADOR),
   CONSTRAINT FK_HISTORICO_EST_GANADOR_SE_DESCRITA_POR FOREIGN KEY (FK_ESTATUS_GANADOR) REFERENCES ESTATUS_GANADOR(ID_ESTATUS_GANADOR),
    CONSTRAINT FK_HISTORICO_EST_GANADOR_SE_REGISTRARA FOREIGN KEY (FK_GANADOR) REFERENCES GANADOR(ID_GANADOR)
);

/*==============================================================*/
/* Index: HISTORICO_EST_GANADOR_PK   REVISADO                           */
/*==============================================================*/
create unique index HISTORICO_EST_GANADOR_PK on HISTORICO_EST_GANADOR (
ID_HISTORICO_EST_GANADOR
);

/*==============================================================*/
/* Index: ES_DESCRITA_FK    REVISADO                                    */
/*==============================================================*/
create  index ES_DESCRITA_FK on HISTORICO_EST_GANADOR (
FK_ESTATUS_GANADOR
);

/*==============================================================*/
/* Index: SE_REGISTRARA_FK    REVISADO                                  */
/*==============================================================*/
create  index SE_REGISTRARA_FK on HISTORICO_EST_GANADOR (
FK_GANADOR
);