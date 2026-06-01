/*==============================================================*/
/* Table: ADJUDICACION                                          */
/*==============================================================*/
create table ADJUDICACION (
   ID_ADJUDICACION      SERIAL               not null,
   ID_PUJA              INT4                 not null,
   ID_ORDEN_SUBASTA       INT4                 null,
   FECHAHORA_GANADOR    DATE                 not null,
   MONTO_FINAL_ADJUDICACION DECIMAL(20,2)        not null,
   constraint PK_ADJUDICACION primary key (ID_ADJUDICACION)
);

/*==============================================================*/
/* Index: ADJUDICACION_PK                                       */
/*==============================================================*/
create unique index ADJUDICACION_PK on ADJUDICACION (
ID_ADJUDICACION
);

/*==============================================================*/
/* Index: ES_GANADOR2_FK                                        */
/*==============================================================*/
create  index ES_GANADOR2_FK on ADJUDICACION (
ID_PUJA
);

/*==============================================================*/
/* Index: GENERA_FK                                             */
/*==============================================================*/
create  index GENERA_FK on ADJUDICACION (
ID_ORDEN_SUBASTA
);

/*==============================================================*/
/* Table: ASISTENCIA                                            */
/*==============================================================*/
create table ASISTENCIA (
   ID_ASISTENCIA        SERIAL               not null,
   ID_CONTRATO          INT4                 not null,
   FECHA_HORA_ENTRADA_ASISTENCIA DATE                 not null,
   FECHA_HORA_SALIDA_ASISTENCIA DATE                 not null,
   constraint PK_ASISTENCIA primary key (ID_ASISTENCIA)
);

/*==============================================================*/
/* Index: ASISTENCIA_PK                                         */
/*==============================================================*/
create unique index ASISTENCIA_PK on ASISTENCIA (
ID_ASISTENCIA
);

/*==============================================================*/
/* Index: ASISTE_FK                                             */
/*==============================================================*/
create  index ASISTE_FK on ASISTENCIA (
ID_CONTRATO
);

/*==============================================================*/
/* Table: BACKORDER                                             */
/*==============================================================*/
create table BACKORDER (
   ID_BACKORDER         SERIAL               not null,
   ID_PIEZA             INT4                 not null,
   ID_MOLDE             INT4                 not null,
   ID_MATERIAPRIMA      INT4                 not null,
   BAS_ID_BASEDISENO    INT4                 not null,
   ID_BASEDISENO        INT4                 not null,
   ID_PRODUCTO          INT4                 not null,
   ID_ORDEN_COMPRA_B2B  INT4                 not null,
   CANTIDAD_PENDIENTE_BACK INT4                 not null,
   FECHAINICIO_BACKORDER DATE                 not null,
   constraint PK_BACKORDER primary key (ID_BACKORDER)
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
ID_PIEZA,
ID_MOLDE,
ID_MATERIAPRIMA,
BAS_ID_BASEDISENO,
ID_BASEDISENO,
ID_PRODUCTO,
ID_ORDEN_COMPRA_B2B
);

/*==============================================================*/
/* Table: BANCO                                                 */
/*==============================================================*/
create table BANCO (
   ID_BANCO             SERIAL               not null,
   NOMBRE_BANCO         VARCHAR(50)          not null,
   constraint PK_BANCO primary key (ID_BANCO)
);

/*==============================================================*/
/* Index: BANCO_PK                                              */
/*==============================================================*/
create unique index BANCO_PK on BANCO (
ID_BANCO
);

/*==============================================================*/
/* Table: BASEDISENO_PRUEBA                                     */
/*==============================================================*/
create table BASEDISENO_PRUEBA (
   ID_BASEDISENO        INT4                 not null,
   ID_PRUEBA            INT4                 not null,
   constraint PK_BASEDISENO_PRUEBA primary key (ID_BASEDISENO, ID_PRUEBA)
);

/*==============================================================*/
/* Index: BASEDISENO_PRUEBA_PK                                  */
/*==============================================================*/
create unique index BASEDISENO_PRUEBA_PK on BASEDISENO_PRUEBA (
ID_BASEDISENO,
ID_PRUEBA
);

/*==============================================================*/
/* Index: ES_PROBADA_FK                                         */
/*==============================================================*/
create  index ES_PROBADA_FK on BASEDISENO_PRUEBA (
ID_BASEDISENO
);

/*==============================================================*/
/* Index: PRUEBA_FK                                             */
/*==============================================================*/
create  index PRUEBA_FK on BASEDISENO_PRUEBA (
ID_PRUEBA
);

/*==============================================================*/
/* Table: BASEDISENO_SETREGALO                                  */
/*==============================================================*/
create table BASEDISENO_SETREGALO (
   ID_BASEDISENO        INT4                 not null,
   ID_SET_REGALO        INT4                 not null,
   constraint PK_BASEDISENO_SETREGALO primary key (ID_BASEDISENO, ID_SET_REGALO)
);

/*==============================================================*/
/* Index: BASEDISENO_SETREGALO_PK                               */
/*==============================================================*/
create unique index BASEDISENO_SETREGALO_PK on BASEDISENO_SETREGALO (
ID_BASEDISENO,
ID_SET_REGALO
);

/*==============================================================*/
/* Index: SE_AGRUPA_FK                                          */
/*==============================================================*/
create  index SE_AGRUPA_FK on BASEDISENO_SETREGALO (
ID_BASEDISENO
);

/*==============================================================*/
/* Index: AGRUPA_FK                                             */
/*==============================================================*/
create  index AGRUPA_FK on BASEDISENO_SETREGALO (
ID_SET_REGALO
);

/*==============================================================*/
/* Table: BASE_DISENO                                           */
/*==============================================================*/
create table BASE_DISENO (
   ID_BASEDISENO        SERIAL               not null,
   ID_ERA               INT4                 not null,
   BAS_ID_BASEDISENO    INT4                 null,
   ID_COLOR_OJO         INT4                 null,
   ID_TONO_PIEL         INT4                 null,
   ID_TIPO_CUERPO       INT4                 null,
   ID_COLECCION         INT4                 not null,
   NOMBRE_BASEDISENO    VARCHAR(60)          not null,
   DESCRIPCION_BASEDISENO VARCHAR(300)         not null,
   ALTO_BASEDISENO      DECIMAL(3,2)         not null,
   ANCHO_BASEDISENO     DECIMAL(3,2)         not null,
   PROFUNDIDAD_BASEDISENO DECIMAL(3,2)         not null,
   constraint PK_BASE_DISENO primary key (ID_BASEDISENO)
);

/*==============================================================*/
/* Index: BASE_DISENO_PK                                        */
/*==============================================================*/
create unique index BASE_DISENO_PK on BASE_DISENO (
ID_BASEDISENO
);

/*==============================================================*/
/* Index: ES_PARTE_DE2_FK                                       */
/*==============================================================*/
create  index ES_PARTE_DE2_FK on BASE_DISENO (
ID_COLECCION
);

/*==============================================================*/
/* Index: PERTENECE2_FK                                         */
/*==============================================================*/
create  index PERTENECE2_FK on BASE_DISENO (
ID_ERA
);

/*==============================================================*/
/* Index: RELACIONA_FK                                          */
/*==============================================================*/
create  index RELACIONA_FK on BASE_DISENO (
BAS_ID_BASEDISENO
);

/*==============================================================*/
/* Index: SE_MOLDEA_FK                                          */
/*==============================================================*/
create  index SE_MOLDEA_FK on BASE_DISENO (
ID_TIPO_CUERPO
);

/*==============================================================*/
/* Index: TIENE_ASIGNADO_FK                                     */
/*==============================================================*/
create  index TIENE_ASIGNADO_FK on BASE_DISENO (
ID_TONO_PIEL
);

/*==============================================================*/
/* Index: SE_DEFINE_FK                                          */
/*==============================================================*/
create  index SE_DEFINE_FK on BASE_DISENO (
ID_COLOR_OJO
);

/*==============================================================*/
/* Table: BASE_DISENO_CONSTRUCCION                              */
/*==============================================================*/
create table BASE_DISENO_CONSTRUCCION (
   ID_PIEZA             INT4                 not null,
   ID_MOLDE             INT4                 not null,
   ID_MATERIAPRIMA      INT4                 not null,
   ID_BASEDISENO        INT4                 not null,
   CANTIDAD_MATERIAPRIMA INT4                 not null,
   constraint PK_BASE_DISENO_CONSTRUCCION primary key (ID_PIEZA, ID_MOLDE, ID_MATERIAPRIMA, ID_BASEDISENO)
);

/*==============================================================*/
/* Index: BASE_DISENO_CONSTRUCCION_PK                           */
/*==============================================================*/
create unique index BASE_DISENO_CONSTRUCCION_PK on BASE_DISENO_CONSTRUCCION (
ID_PIEZA,
ID_MOLDE,
ID_MATERIAPRIMA,
ID_BASEDISENO
);

/*==============================================================*/
/* Index: CONFORMA_FK                                           */
/*==============================================================*/
create  index CONFORMA_FK on BASE_DISENO_CONSTRUCCION (
ID_PIEZA
);

/*==============================================================*/
/* Index: MOLDEARA_FK                                           */
/*==============================================================*/
create  index MOLDEARA_FK on BASE_DISENO_CONSTRUCCION (
ID_MOLDE
);

/*==============================================================*/
/* Index: CONSTRUYE_FK                                          */
/*==============================================================*/
create  index CONSTRUYE_FK on BASE_DISENO_CONSTRUCCION (
ID_MATERIAPRIMA
);

/*==============================================================*/
/* Index: SE_CONFORMA_FK                                        */
/*==============================================================*/
create  index SE_CONFORMA_FK on BASE_DISENO_CONSTRUCCION (
ID_BASEDISENO
);

/*==============================================================*/
/* Table: BENEFICIO                                             */
/*==============================================================*/
create table BENEFICIO (
   ID_BENEFICIO         SERIAL               not null,
   NOMBRE_BENEFICIO     VARCHAR(50)          not null,
   DESCRIPCION_BENEFICIO VARCHAR(200)         not null,
   TIPO_BENEFICIO       VARCHAR(50)          not null,
   constraint PK_BENEFICIO primary key (ID_BENEFICIO)
);

/*==============================================================*/
/* Index: BENEFICIO_PK                                          */
/*==============================================================*/
create unique index BENEFICIO_PK on BENEFICIO (
ID_BENEFICIO
);

/*==============================================================*/
/* Table: CARACTERISTICA                                        */
/*==============================================================*/
create table CARACTERISTICA (
   ID_CARACTERISTICA    SERIAL               not null,
   NOMBRE_CARACTERISTICA VARCHAR(50)          not null,
   DESCRIPCION_CARACTERISTICA VARCHAR(200)         not null,
   constraint PK_CARACTERISTICA primary key (ID_CARACTERISTICA)
);

/*==============================================================*/
/* Index: CARACTERISTICA_PK                                     */
/*==============================================================*/
create unique index CARACTERISTICA_PK on CARACTERISTICA (
ID_CARACTERISTICA
);

/*==============================================================*/
/* Table: CARACTERISTICA_BASEDISENO                             */
/*==============================================================*/
create table CARACTERISTICA_BASEDISENO (
   ID_BASEDISENO        INT4                 not null,
   ID_CARACTERISTICA    INT4                 not null,
   constraint PK_CARACTERISTICA_BASEDISENO primary key (ID_BASEDISENO, ID_CARACTERISTICA)
);

/*==============================================================*/
/* Index: CARACTERISTICA_BASEDISENO_PK                          */
/*==============================================================*/
create unique index CARACTERISTICA_BASEDISENO_PK on CARACTERISTICA_BASEDISENO (
ID_BASEDISENO,
ID_CARACTERISTICA
);

/*==============================================================*/
/* Index: ES_CARACTERIZADA_FK                                   */
/*==============================================================*/
create  index ES_CARACTERIZADA_FK on CARACTERISTICA_BASEDISENO (
ID_BASEDISENO
);

/*==============================================================*/
/* Index: CARACTERIZA_FK                                        */
/*==============================================================*/
create  index CARACTERIZA_FK on CARACTERISTICA_BASEDISENO (
ID_CARACTERISTICA
);

/*==============================================================*/
/* Table: CARGO                                                 */
/*==============================================================*/
create table CARGO (
   ID_CARGO             SERIAL               not null,
   ID_TABULADOR_SALARIAL  INT4                 not null,
   ID_DEPARTAMENTO      INT4                 not null,
   NOMBRE_CARGO         VARCHAR(50)          not null,
   DESCRIPCION_CARGO    VARCHAR(200)         not null,
   constraint PK_CARGO primary key (ID_CARGO)
);

/*==============================================================*/
/* Index: CARGO_PK                                              */
/*==============================================================*/
create unique index CARGO_PK on CARGO (
ID_CARGO
);

/*==============================================================*/
/* Index: TRABAJA_FK                                            */
/*==============================================================*/
create  index TRABAJA_FK on CARGO (
ID_DEPARTAMENTO
);

/*==============================================================*/
/* Index: ES_ASIGNADO_POR_FK                                    */
/*==============================================================*/
create  index ES_ASIGNADO_POR_FK on CARGO (
ID_TABULADOR_SALARIAL
);

/*==============================================================*/
/* Table: CATEGORIA                                             */
/*==============================================================*/
create table CATEGORIA (
   ID_CATEGORIA         SERIAL               not null,
   CAT_ID_CATEGORIA     INT4                 null,
   NOMBRE_CATEGORIA     VARCHAR(50)          not null,
   DESCRIPCION_CATEGORIA VARCHAR(200)         not null,
   constraint PK_CATEGORIA primary key (ID_CATEGORIA)
);

/*==============================================================*/
/* Index: CATEGORIA_PK                                          */
/*==============================================================*/
create unique index CATEGORIA_PK on CATEGORIA (
ID_CATEGORIA
);

/*==============================================================*/
/* Index: SE_DIVIDE_FK                                          */
/*==============================================================*/
create  index SE_DIVIDE_FK on CATEGORIA (
CAT_ID_CATEGORIA
);

/*==============================================================*/
/* Table: CATEGORIA_BASEDISENO                                  */
/*==============================================================*/
create table CATEGORIA_BASEDISENO (
   ID_BASEDISENO        INT4                 not null,
   ID_CATEGORIA         INT4                 not null,
   constraint PK_CATEGORIA_BASEDISENO primary key (ID_BASEDISENO, ID_CATEGORIA)
);

/*==============================================================*/
/* Index: CATEGORIA_BASEDISENO_PK                               */
/*==============================================================*/
create unique index CATEGORIA_BASEDISENO_PK on CATEGORIA_BASEDISENO (
ID_BASEDISENO,
ID_CATEGORIA
);

/*==============================================================*/
/* Index: SE_VINCULA_FK                                         */
/*==============================================================*/
create  index SE_VINCULA_FK on CATEGORIA_BASEDISENO (
ID_BASEDISENO
);

/*==============================================================*/
/* Index: SE_RELACIONA_FK                                       */
/*==============================================================*/
create  index SE_RELACIONA_FK on CATEGORIA_BASEDISENO (
ID_CATEGORIA
);

/*==============================================================*/
/* Table: CATEGORIA_CATEGORIA                                   */
/*==============================================================*/
create table CATEGORIA_CATEGORIA (
   CAT_ID_CATEGORIA     INT4                 not null,
   ID_CATEGORIA         INT4                 not null,
   constraint PK_CATEGORIA_CATEGORIA primary key (CAT_ID_CATEGORIA)
);

/*==============================================================*/
/* Index: CATEGORIA_CATEGORIA_PK                                */
/*==============================================================*/
create unique index CATEGORIA_CATEGORIA_PK on CATEGORIA_CATEGORIA (
CAT_ID_CATEGORIA
);

/*==============================================================*/
/* Index: VINCULA_FK                                            */
/*==============================================================*/
create  index VINCULA_FK on CATEGORIA_CATEGORIA (
ID_CATEGORIA
);

/*==============================================================*/
/* Table: CHEQUE                                                */
/*==============================================================*/
create table CHEQUE (
   ID_METODO_PAGO       SERIAL               not null,
   ID_BANCO             INT4                 not null,
   NUMERO_CHEQUE        VARCHAR(8)           not null,
   constraint PK_CHEQUE primary key (ID_METODO_PAGO)
);

/*==============================================================*/
/* Index: CHEQUE_PK                                             */
/*==============================================================*/
create unique index CHEQUE_PK on CHEQUE (
ID_METODO_PAGO
);

/*==============================================================*/
/* Index: ES_EXPEDIDO_FK                                        */
/*==============================================================*/
create  index ES_EXPEDIDO_FK on CHEQUE (
ID_BANCO
);

/*==============================================================*/
/* Table: CLASIFICACION                                         */
/*==============================================================*/
create table CLASIFICACION (
   ID_CLASIFICACION     SERIAL               not null,
   NOMBRE_CLASIFICACION VARCHAR(50)          not null,
   DESCRIPCION_CLASIFICACION VARCHAR(200)         not null,
   constraint PK_CLASIFICACION primary key (ID_CLASIFICACION)
);

/*==============================================================*/
/* Index: CLASIFICACION_PK                                      */
/*==============================================================*/
create unique index CLASIFICACION_PK on CLASIFICACION (
ID_CLASIFICACION
);

/*==============================================================*/
/* Table: CLASIFICACION_BASEDISENO                              */
/*==============================================================*/
create table CLASIFICACION_BASEDISENO (
   ID_BASEDISENO        INT4                 not null,
   ID_CLASIFICACION     INT4                 not null,
   constraint PK_CLASIFICACION_BASEDISENO primary key (ID_BASEDISENO, ID_CLASIFICACION)
);

/*==============================================================*/
/* Index: CLASIFICACION_BASEDISENO_PK                           */
/*==============================================================*/
create unique index CLASIFICACION_BASEDISENO_PK on CLASIFICACION_BASEDISENO (
ID_BASEDISENO,
ID_CLASIFICACION
);

/*==============================================================*/
/* Index: ES_CLASIFICADA_FK                                     */
/*==============================================================*/
create  index ES_CLASIFICADA_FK on CLASIFICACION_BASEDISENO (
ID_BASEDISENO
);

/*==============================================================*/
/* Index: CLASIFICA_FK                                          */
/*==============================================================*/
create  index CLASIFICA_FK on CLASIFICACION_BASEDISENO (
ID_CLASIFICACION
);

/*==============================================================*/
/* Table: CLIENTE_B2C                                           */
/*==============================================================*/
create table CLIENTE_B2C (
   ID_PERSONA_NATURAL   SERIAL               not null,
   ID_LUGAR             INT4                 not null,
   RIF_PERSONA_NATURAL  VARCHAR(20)          not null unique,
   DIRECCION_PERSONA_NATURAL VARCHAR(100)         not null,
   CEDULA_PERSONA_NATURAL VARCHAR(20)          not null unique,
   P_NOMBRE_PERSONA_NATURAL VARCHAR(30)          not null,
   S_NOMBRE_PERSONA_NATURAL VARCHAR(30)          null,
   P_APELLIDO_PERSONA_NATURAL VARCHAR(30)          not null,
   S_APELLIDO_PERSONA_NATURAL VARCHAR(30)          null,
   FECHA_NAC_PERSONA_NATURAL DATE                 not null,
   constraint PK_CLIENTE_B2C primary key (ID_PERSONA_NATURAL)
);

/*==============================================================*/
/* Index: CLIENTE_B2C_PK                                        */
/*==============================================================*/
create unique index CLIENTE_B2C_PK on CLIENTE_B2C (
ID_PERSONA_NATURAL
);

/*==============================================================*/
/* Index: DIRECCION_FISICA_FK                                   */
/*==============================================================*/
create  index DIRECCION_FISICA_FK on CLIENTE_B2C (
ID_LUGAR
);

/*==============================================================*/
/* Table: COLECCION                                             */
/*==============================================================*/
create table COLECCION (
   ID_COLECCION         SERIAL               not null,
   ID_BASEDISENO        INT4                 null,
   NOMBRE_COLECCION     VARCHAR(50)          not null,
   DESCRIPCION_COLECCION VARCHAR(200)         not null,
   constraint PK_COLECCION primary key (ID_COLECCION)
);

/*==============================================================*/
/* Index: COLECCION_PK                                          */
/*==============================================================*/
create unique index COLECCION_PK on COLECCION (
ID_COLECCION
);

/*==============================================================*/
/* Index: ES_PARTE_DE_FK                                        */
/*==============================================================*/
create  index ES_PARTE_DE_FK on COLECCION (
ID_BASEDISENO
);

/*==============================================================*/
/* Table: COLOR                                                 */
/*==============================================================*/
create table COLOR (
   ID_COLOR             SERIAL               not null,
   NOMBRE_COLOR         VARCHAR(50)          not null,
   constraint PK_COLOR primary key (ID_COLOR)
);

/*==============================================================*/
/* Index: COLOR_PK                                              */
/*==============================================================*/
create unique index COLOR_PK on COLOR (
ID_COLOR
);

/*==============================================================*/
/* Table: COLOR_OJO                                             */
/*==============================================================*/
create table COLOR_OJO (
   ID_COLOR_OJO         SERIAL               not null,
   ID_COLOR             INT4                 not null,
   NOMBRE_COLOR_OJO     VARCHAR(50)          not null,
   constraint PK_COLOR_OJO primary key (ID_COLOR_OJO)
);

/*==============================================================*/
/* Index: COLOR_OJO_PK                                          */
/*==============================================================*/
create unique index COLOR_OJO_PK on COLOR_OJO (
ID_COLOR_OJO
);

/*==============================================================*/
/* Index: SE_EXPRESA_FK                                         */
/*==============================================================*/
create  index SE_EXPRESA_FK on COLOR_OJO (
ID_COLOR
);

/*==============================================================*/
/* Table: CONTRATO_BENEFICIO                                    */
/*==============================================================*/
create table CONTRATO_BENEFICIO (
   ID_CONTRATO          INT4                 not null,
   ID_BENEFICIO         INT4                 not null,
   MONTO_CONTRATO_BENEFICIO DECIMAL(10,2)    not null,
   CANTIDAD_INCIDENCIAS INT4                not null,
   constraint PK_CONTRATO_BENEFICIO primary key (ID_CONTRATO, ID_BENEFICIO)
);

/*==============================================================*/
/* Index: CONTRATO_BENEFICIO_PK                                 */
/*==============================================================*/
create unique index CONTRATO_BENEFICIO_PK on CONTRATO_BENEFICIO (
ID_CONTRATO,
ID_BENEFICIO
);

/*==============================================================*/
/* Index: GOZA_FK                                               */
/*==============================================================*/
create  index GOZA_FK on CONTRATO_BENEFICIO (
ID_CONTRATO
);

/*==============================================================*/
/* Index: ES_GOZADO_FK                                          */
/*==============================================================*/
create  index ES_GOZADO_FK on CONTRATO_BENEFICIO (
ID_BENEFICIO
);

/*==============================================================*/
/* Table: CONTRATO_CARGO                                        */
/*==============================================================*/
create table CONTRATO_CARGO (
   ID_CARGO             INT4                 not null,
   ID_CONTRATO          INT4                 not null,
   ID_CONTRATO_CARGO    SERIAL               not null,
   FECHA_INICIO_CONTRATO_CARGO DATE                 not null,
   FECHA_FIN_CONTRATO_CARGO DATE                 null,
   HORAS_SEMANALES_CC   INT4                 not null,
   MOTIVO_CAMBIO_CARGO  VARCHAR(200)         null,
   constraint PK_CONTRATO_CARGO primary key (ID_CARGO, ID_CONTRATO, ID_CONTRATO_CARGO)
);

/*==============================================================*/
/* Index: CONTRATO_CARGO_PK                                     */
/*==============================================================*/
create unique index CONTRATO_CARGO_PK on CONTRATO_CARGO (
ID_CARGO,
ID_CONTRATO,
ID_CONTRATO_CARGO
);

/*==============================================================*/
/* Index: ES_ENCARGADO_FK                                       */
/*==============================================================*/
create  index ES_ENCARGADO_FK on CONTRATO_CARGO (
ID_CARGO
);

/*==============================================================*/
/* Index: SE_ENCARGARA_FK                                       */
/*==============================================================*/
create  index SE_ENCARGARA_FK on CONTRATO_CARGO (
ID_CONTRATO
);

/*==============================================================*/
/* Table: CONTRATO_HORARIO                                      */
/*==============================================================*/
create table CONTRATO_HORARIO (
   ID_CONTRATO          INT4                 not null,
   ID_HORARIO           INT4                 not null,
   constraint PK_CONTRATO_HORARIO primary key (ID_CONTRATO, ID_HORARIO)
);

/*==============================================================*/
/* Index: CONTRATO_HORARIO_PK                                   */
/*==============================================================*/
create unique index CONTRATO_HORARIO_PK on CONTRATO_HORARIO (
ID_CONTRATO,
ID_HORARIO
);

/*==============================================================*/
/* Index: CUMPLE_FK                                             */
/*==============================================================*/
create  index CUMPLE_FK on CONTRATO_HORARIO (
ID_CONTRATO
);

/*==============================================================*/
/* Index: SE_ORGANIZA_FK                                        */
/*==============================================================*/
create  index SE_ORGANIZA_FK on CONTRATO_HORARIO (
ID_HORARIO
);

/*==============================================================*/
/* Table: CONTRATO_PERSONAL                                     */
/*==============================================================*/
create table CONTRATO_PERSONAL (
   ID_CONTRATO          SERIAL               not null,
   ID_META_MENSUAL      INT4                 null,
   ID_PERSONA_NATURAL   INT4                 not null,
   CONTRATO_FECHA_INICIO DATE                 not null,
   CONTRATO_FECHA_FIN   DATE                 null,
   constraint PK_CONTRATO_PERSONAL primary key (ID_CONTRATO)
);

/*==============================================================*/
/* Index: CONTRATO_PERSONAL_PK                                  */
/*==============================================================*/
create unique index CONTRATO_PERSONAL_PK on CONTRATO_PERSONAL (
ID_CONTRATO
);

/*==============================================================*/
/* Index: LO_CONTRATAN2_FK                                      */
/*==============================================================*/
create  index LO_CONTRATAN2_FK on CONTRATO_PERSONAL (
ID_PERSONA_NATURAL
);

/*==============================================================*/
/* Index: SE_ESTABLECE_FK                                       */
/*==============================================================*/
create  index SE_ESTABLECE_FK on CONTRATO_PERSONAL (
ID_META_MENSUAL
);

/*==============================================================*/
/* Table: CORREO                                                */
/*==============================================================*/
create table CORREO (
   ID_CORREO            SERIAL               not null,
   ID_PERSONA_JURIDICA  INT4                 null,
   ID_PERSONA_NATURAL   INT4                 null,
   PER_ID_PERSONA_NATURAL INT4                 null,
   ID_METODO_PAGO       INT4                 null,
   NOMBRE_CORREO        VARCHAR(50)          not null,
   constraint PK_CORREO primary key (ID_CORREO)
);

/*==============================================================*/
/* Index: CORREO_PK                                             */
/*==============================================================*/
create unique index CORREO_PK on CORREO (
ID_CORREO
);

/*==============================================================*/
/* Index: COORDINA_FK                                           */
/*==============================================================*/
create  index COORDINA_FK on CORREO (
ID_PERSONA_JURIDICA
);

/*==============================================================*/
/* Index: SE_USA_FK                                             */
/*==============================================================*/
create  index SE_USA_FK on CORREO (
ID_METODO_PAGO
);

/*==============================================================*/
/* Index: POSEE2_FK                                             */
/*==============================================================*/
create  index POSEE2_FK on CORREO (
ID_PERSONA_NATURAL
);

/*==============================================================*/
/* Index: POSEE_FK                                              */
/*==============================================================*/
create  index POSEE_FK on CORREO (
PER_ID_PERSONA_NATURAL
);

/*==============================================================*/
/* Table: COURIER                                               */
/*==============================================================*/
create table COURIER (
   ID_COURIER           SERIAL               not null,
   NOMBRE_COURIER       VARCHAR(50)          not null,
   constraint PK_COURIER primary key (ID_COURIER)
);

/*==============================================================*/
/* Index: COURIER_PK                                            */
/*==============================================================*/
create unique index COURIER_PK on COURIER (
ID_COURIER
);

/*==============================================================*/
/* Table: CRIPTOMONEDA                                          */
/*==============================================================*/
create table CRIPTOMONEDA (
   ID_METODO_PAGO       SERIAL               not null,
   ID_TIPO_CRIPTOMONEDA INT4                 not null,
   DIRECCION_WALLET_CRIPTOMONEDA VARCHAR(50)          not null,
   constraint PK_CRIPTOMONEDA primary key (ID_METODO_PAGO)
);

/*==============================================================*/
/* Index: CRIPTOMONEDA_PK                                       */
/*==============================================================*/
create unique index CRIPTOMONEDA_PK on CRIPTOMONEDA (
ID_METODO_PAGO
);

/*==============================================================*/
/* Index: PERTENECE_A_LA_CADENA_FK                              */
/*==============================================================*/
create  index PERTENECE_A_LA_CADENA_FK on CRIPTOMONEDA (
ID_TIPO_CRIPTOMONEDA
);

/*==============================================================*/
/* Table: DEPARTAMENTO                                          */
/*==============================================================*/
create table DEPARTAMENTO (
   ID_DEPARTAMENTO      SERIAL               not null,
   NOMBRE_DEPARTAMENTO  VARCHAR(50)          not null,
   constraint PK_DEPARTAMENTO primary key (ID_DEPARTAMENTO)
);

/*==============================================================*/
/* Index: DEPARTAMENTO_PK                                       */
/*==============================================================*/
create unique index DEPARTAMENTO_PK on DEPARTAMENTO (
ID_DEPARTAMENTO
);

/*==============================================================*/
/* Table: DESCUENTO                                             */
/*==============================================================*/
create table DESCUENTO (
   ID_DESCUENTO         SERIAL               not null,
   NOMBRE_DESCUENTO     VARCHAR(50)          not null,
   DESCRIPCION_DESCUENTO VARCHAR(200)         not null,
   PORCENTAJE_DESCUENTO DECIMAL(5,4)         not null,
   constraint PK_DESCUENTO primary key (ID_DESCUENTO)
);

/*==============================================================*/
/* Index: DESCUENTO_PK                                          */
/*==============================================================*/
create unique index DESCUENTO_PK on DESCUENTO (
ID_DESCUENTO
);

/*==============================================================*/
/* Table: DESCUENTO_ORDEN_B2B                                   */
/*==============================================================*/
create table DESCUENTO_ORDEN_B2B (
   ID_ORDEN_COMPRA_B2B  INT4                 not null,
   ID_DESCUENTO         INT4                 not null,
   constraint PK_DESCUENTO_ORDEN_B2B primary key (ID_ORDEN_COMPRA_B2B, ID_DESCUENTO)
);

/*==============================================================*/
/* Index: DESCUENTO_ORDEN_B2B_PK                                */
/*==============================================================*/
create unique index DESCUENTO_ORDEN_B2B_PK on DESCUENTO_ORDEN_B2B (
ID_ORDEN_COMPRA_B2B,
ID_DESCUENTO
);

/*==============================================================*/
/* Index: SE_LE_DESCUENTA_FK                                    */
/*==============================================================*/
create  index SE_LE_DESCUENTA_FK on DESCUENTO_ORDEN_B2B (
ID_ORDEN_COMPRA_B2B
);

/*==============================================================*/
/* Index: DESCUENTA_FK                                          */
/*==============================================================*/
create  index DESCUENTA_FK on DESCUENTO_ORDEN_B2B (
ID_DESCUENTO
);

/*==============================================================*/
/* Table: DESCUENTO_ORDEN_B2C                                   */
/*==============================================================*/
create table DESCUENTO_ORDEN_B2C (
   ID_ORDEN_COMPRA_B2C  INT4                 not null,
   ID_DESCUENTO         INT4                 not null,
   constraint PK_DESCUENTO_ORDEN_B2C primary key (ID_ORDEN_COMPRA_B2C, ID_DESCUENTO)
);

/*==============================================================*/
/* Index: DESCUENTO_ORDEN_B2C_PK                                */
/*==============================================================*/
create unique index DESCUENTO_ORDEN_B2C_PK on DESCUENTO_ORDEN_B2C (
ID_ORDEN_COMPRA_B2C,
ID_DESCUENTO
);

/*==============================================================*/
/* Index: ES_DESCONTADO_FK                                      */
/*==============================================================*/
create  index ES_DESCONTADO_FK on DESCUENTO_ORDEN_B2C (
ID_ORDEN_COMPRA_B2C
);

/*==============================================================*/
/* Index: SE_DESCUENTA_FK                                       */
/*==============================================================*/
create  index SE_DESCUENTA_FK on DESCUENTO_ORDEN_B2C (
ID_DESCUENTO
);

/*==============================================================*/
/* Table: DETALLE_MANIFIESTO_CRAGO                              */
/*==============================================================*/
create table DETALLE_MANIFIESTO_CRAGO (
   ID_MANIFIESTOCARGO   INT4                 not null,
   ID_ORDEN_COMPRA_B2B  INT4                 not null,
   CANTIDAD_DESPACHADA_MC INT4                 not null,
   constraint PK_DETALLE_MANIFIESTO_CRAGO primary key (ID_MANIFIESTOCARGO, ID_ORDEN_COMPRA_B2B)
);

/*==============================================================*/
/* Index: DETALLE_MANIFIESTO_CRAGO_PK                           */
/*==============================================================*/
create unique index DETALLE_MANIFIESTO_CRAGO_PK on DETALLE_MANIFIESTO_CRAGO (
ID_MANIFIESTOCARGO,
ID_ORDEN_COMPRA_B2B
);

/*==============================================================*/
/* Index: SE_DESPACHA_EN_FK                                     */
/*==============================================================*/
create  index SE_DESPACHA_EN_FK on DETALLE_MANIFIESTO_CRAGO (
ID_MANIFIESTOCARGO
);

/*==============================================================*/
/* Index: SE_DESPACHA_FK                                        */
/*==============================================================*/
create  index SE_DESPACHA_FK on DETALLE_MANIFIESTO_CRAGO (
ID_ORDEN_COMPRA_B2B
);

/*==============================================================*/
/* Table: DETALLE_ORDEN_B2B                                     */
/*==============================================================*/
create table DETALLE_ORDEN_B2B (
   ID_PIEZA             INT4                 not null,
   ID_MOLDE             INT4                 not null,
   ID_MATERIAPRIMA      INT4                 not null,
   BAS_ID_BASEDISENO    INT4                 not null,
   ID_BASEDISENO        INT4                 not null,
   ID_PRODUCTO          INT4                 not null,
   ID_ORDEN_COMPRA_B2B  INT4                 not null,
   CANTIDADSOLICITAD_ORDEN_B2B INT4                 not null,
   CANTIDAD_DESPACHADA  INT4                 null,
   PRECIO_UNITARIO_DETALLE_B2B DECIMAL(10,2)        not null,
   constraint PK_DETALLE_ORDEN_B2B primary key (ID_PIEZA, ID_MOLDE, ID_MATERIAPRIMA, BAS_ID_BASEDISENO, ID_BASEDISENO, ID_PRODUCTO, ID_ORDEN_COMPRA_B2B)
);

/*==============================================================*/
/* Index: DETALLE_ORDEN_B2B_PK                                  */
/*==============================================================*/
create unique index DETALLE_ORDEN_B2B_PK on DETALLE_ORDEN_B2B (
ID_PIEZA,
ID_MOLDE,
ID_MATERIAPRIMA,
BAS_ID_BASEDISENO,
ID_BASEDISENO,
ID_PRODUCTO,
ID_ORDEN_COMPRA_B2B
);

/*==============================================================*/
/* Index: SE_PIDE_FK                                            */
/*==============================================================*/
create  index SE_PIDE_FK on DETALLE_ORDEN_B2B (
ID_PIEZA,
ID_MOLDE,
ID_MATERIAPRIMA,
BAS_ID_BASEDISENO,
ID_BASEDISENO,
ID_PRODUCTO
);

/*==============================================================*/
/* Index: ESTA_DESCRITA_FK                                      */
/*==============================================================*/
create  index ESTA_DESCRITA_FK on DETALLE_ORDEN_B2B (
ID_ORDEN_COMPRA_B2B
);

/*==============================================================*/
/* Table: DETALLE_ORDEN_B2C                                     */
/*==============================================================*/
create table DETALLE_ORDEN_B2C (
   ID_PIEZA             INT4                 not null,
   ID_MOLDE             INT4                 not null,
   ID_MATERIAPRIMA      INT4                 not null,
   BAS_ID_BASEDISENO    INT4                 not null,
   ID_BASEDISENO        INT4                 not null,
   ID_PRODUCTO          INT4                 not null,
   ID_ORDEN_COMPRA_B2C  INT4                 not null,
   CANTIDAD_ORDEN_B2C   INT4                 not null,
   PRECIO_UNITARIO_B2C  DECIMAL(20,2)        not null,
   constraint PK_DETALLE_ORDEN_B2C primary key (ID_PIEZA, ID_MOLDE, ID_MATERIAPRIMA, BAS_ID_BASEDISENO, ID_BASEDISENO, ID_PRODUCTO, ID_ORDEN_COMPRA_B2C)
);

/*==============================================================*/
/* Index: DETALLE_ORDEN_B2C_PK                                  */
/*==============================================================*/
create unique index DETALLE_ORDEN_B2C_PK on DETALLE_ORDEN_B2C (
ID_PIEZA,
ID_MOLDE,
ID_MATERIAPRIMA,
BAS_ID_BASEDISENO,
ID_BASEDISENO,
ID_PRODUCTO,
ID_ORDEN_COMPRA_B2C
);

/*==============================================================*/
/* Index: SE_APARTA_FK                                          */
/*==============================================================*/
create  index SE_APARTA_FK on DETALLE_ORDEN_B2C (
ID_PIEZA,
ID_MOLDE,
ID_MATERIAPRIMA,
BAS_ID_BASEDISENO,
ID_BASEDISENO,
ID_PRODUCTO
);

/*==============================================================*/
/* Index: ES_DETALLADA_POR_FK                                   */
/*==============================================================*/
create  index ES_DETALLADA_POR_FK on DETALLE_ORDEN_B2C (
ID_ORDEN_COMPRA_B2C
);

/*==============================================================*/
/* Table: DISTRIBUCION_PAGO_B2B                                 */
/*==============================================================*/
create table DISTRIBUCION_PAGO_B2B (
   CHE_ID_METODO_PAGO   INT4                 not null,
   ID_METODO_PAGO       INT4                 not null,
   ID_ORDEN_COMPRA_B2B  INT4                 not null,
   MONTO_APLICADO       DECIMAL(10,2)        not null,
   constraint PK_DISTRIBUCION_PAGO_B2B primary key (CHE_ID_METODO_PAGO, ID_METODO_PAGO, ID_ORDEN_COMPRA_B2B)
);

/*==============================================================*/
/* Index: DISTRIBUCION_PAGO_B2B_PK                              */
/*==============================================================*/
create unique index DISTRIBUCION_PAGO_B2B_PK on DISTRIBUCION_PAGO_B2B (
CHE_ID_METODO_PAGO,
ID_METODO_PAGO,
ID_ORDEN_COMPRA_B2B
);

/*==============================================================*/
/* Index: PAGAN_FK                                              */
/*==============================================================*/
create  index PAGAN_FK on DISTRIBUCION_PAGO_B2B (
ID_ORDEN_COMPRA_B2B
);

/*==============================================================*/
/* Index: SE_REPARTE_FK                                         */
/*==============================================================*/
create  index SE_REPARTE_FK on DISTRIBUCION_PAGO_B2B (
CHE_ID_METODO_PAGO,
ID_METODO_PAGO
);

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   ID_PERSONA_NATURAL   SERIAL               not null,
   ID_CONTRATO          INT4                 null,
   ID_LUGAR             INT4                 not null,
   RIF_PERSONA_NATURAL  VARCHAR(20)          not null,
   DIRECCION_PERSONA_NATURAL VARCHAR(100)         not null,
   CEDULA_PERSONA_NATURAL VARCHAR(20)          not null,
   P_NOMBRE_PERSONA_NATURAL VARCHAR(30)          not null,
   S_NOMBRE_PERSONA_NATURAL VARCHAR(30)          null,
   P_APELLIDO_PERSONA_NATURAL VARCHAR(30)          not null,
   S_APELLIDO_PERSONA_NATURAL VARCHAR(30)          null,
   FECHA_NAC_PERSONA_NATURAL DATE                 not null,
   constraint PK_EMPLEADO primary key (ID_PERSONA_NATURAL)
);

/*==============================================================*/
/* Index: EMPLEADO_PK                                           */
/*==============================================================*/
create unique index EMPLEADO_PK on EMPLEADO (
ID_PERSONA_NATURAL
);

/*==============================================================*/
/* Index: LO_CONTRATAN_FK                                       */
/*==============================================================*/
create  index LO_CONTRATAN_FK on EMPLEADO (
ID_CONTRATO
);

/*==============================================================*/
/* Index: DIRECCION_FISICA2_FK                                  */
/*==============================================================*/
create  index DIRECCION_FISICA2_FK on EMPLEADO (
ID_LUGAR
);

/*==============================================================*/
/* Table: ENVIO_B2C                                             */
/*==============================================================*/
create table ENVIO_B2C (
   ID_ENVIO_B2C         SERIAL               not null,
   ID_COURIER           INT4                 not null,
   ID_ORDEN_COMPRA_B2C  INT4                 not null,
   ID_LUGAR             INT4                 not null,
   LUG_ID_LUGAR         INT4                 not null,
   NUMERO_TRACKING      INT4                 not null,
   FECHA_ENVIO_B2C      DATE                 not null,
   COSTO_ENVIO_B2C      DECIMAL(10,2)        not null,
   DIRECCION_ENVIO_B2C  VARCHAR(200)         not null,
   DIRECCION_ORIGEN_B2C VARCHAR(200)         not null,
   constraint PK_ENVIO_B2C primary key (ID_ENVIO_B2C)
);

/*==============================================================*/
/* Index: ENVIO_B2C_PK                                          */
/*==============================================================*/
create unique index ENVIO_B2C_PK on ENVIO_B2C (
ID_ENVIO_B2C
);

/*==============================================================*/
/* Index: SERA_ENTREGADO2_FK                                    */
/*==============================================================*/
create  index SERA_ENTREGADO2_FK on ENVIO_B2C (
ID_ORDEN_COMPRA_B2C
);

/*==============================================================*/
/* Index: VA_A_ENTREGAR_FK                                      */
/*==============================================================*/
create  index VA_A_ENTREGAR_FK on ENVIO_B2C (
ID_COURIER
);

/*==============================================================*/
/* Index: DIR_ENVIO_B2C_FK                                      */
/*==============================================================*/
create  index DIR_ENVIO_B2C_FK on ENVIO_B2C (
LUG_ID_LUGAR
);

/*==============================================================*/
/* Index: DIR_ORIGEN_B2C_FK                                     */
/*==============================================================*/
create  index DIR_ORIGEN_B2C_FK on ENVIO_B2C (
ID_LUGAR
);

/*==============================================================*/
/* Table: ERA                                                   */
/*==============================================================*/
create table ERA (
   ID_ERA               SERIAL               not null,
   ID_BASEDISENO        INT4                 null,
   NOMBRE_ERA           VARCHAR(50)          not null,
   DESCRIPCION_ERA      VARCHAR(200)         not null,
   constraint PK_ERA primary key (ID_ERA)
);

/*==============================================================*/
/* Index: ERA_PK                                                */
/*==============================================================*/
create unique index ERA_PK on ERA (
ID_ERA
);

/*==============================================================*/
/* Index: PERTENECE_FK                                          */
/*==============================================================*/
create  index PERTENECE_FK on ERA (
ID_BASEDISENO
);

/*==============================================================*/
/* Table: ESTATUS_BACKORDER                                     */
/*==============================================================*/
create table ESTATUS_BACKORDER (
   ID_ESTATUS_BACKORDER SERIAL               not null,
   NOMBRE_ESTATUS_BACKORDER VARCHAR(50)          not null,
   DESCRIPCION_ESTATUS_BACKORDER VARCHAR(200)         not null,
   constraint PK_ESTATUS_BACKORDER primary key (ID_ESTATUS_BACKORDER)
);

/*==============================================================*/
/* Index: ESTATUS_BACKORDER_PK                                  */
/*==============================================================*/
create unique index ESTATUS_BACKORDER_PK on ESTATUS_BACKORDER (
ID_ESTATUS_BACKORDER
);

/*==============================================================*/
/* Table: ESTATUS_FASE_PRODUCCION                               */
/*==============================================================*/
create table ESTATUS_FASE_PRODUCCION (
   ID_ESTATUS_FP        SERIAL               not null,
   NOMBRE_ESTATUS_FP    VARCHAR(50)          not null,
   DESCRIPCION_ESTATUS_FP VARCHAR(200)         not null,
   constraint PK_ESTATUS_FASE_PRODUCCION primary key (ID_ESTATUS_FP)
);

/*==============================================================*/
/* Index: ESTATUS_FASE_PRODUCCION_PK                            */
/*==============================================================*/
create unique index ESTATUS_FASE_PRODUCCION_PK on ESTATUS_FASE_PRODUCCION (
ID_ESTATUS_FP
);

/*==============================================================*/
/* Table: ESTATUS_INVENTARIO                                    */
/*==============================================================*/
create table ESTATUS_INVENTARIO (
   ID_ESTATUS_INVENTARIO SERIAL               not null,
   NOMBRE_ESTATUS_INVENTARIO VARCHAR(50)          not null,
   DESCRIPCION_ESTATUS_INVENTARIO VARCHAR(200)         not null,
   constraint PK_ESTATUS_INVENTARIO primary key (ID_ESTATUS_INVENTARIO)
);

/*==============================================================*/
/* Index: ESTATUS_INVENTARIO_PK                                 */
/*==============================================================*/
create unique index ESTATUS_INVENTARIO_PK on ESTATUS_INVENTARIO (
ID_ESTATUS_INVENTARIO
);

/*==============================================================*/
/* Table: ESTATUS_MEMBRESIA                                     */
/*==============================================================*/
create table ESTATUS_MEMBRESIA (
   ID_ESTATUS_MEMBRESIA SERIAL               not null,
   NOMBRE_ESTATUS_MEMBRESIA VARCHAR(20)          not null,
   DESCRIPCION_ESTATUS_MEMBRESIA VARCHAR(200)         not null,
   constraint PK_ESTATUS_MEMBRESIA primary key (ID_ESTATUS_MEMBRESIA)
);

/*==============================================================*/
/* Index: ESTATUS_MEMBRESIA_PK                                  */
/*==============================================================*/
create unique index ESTATUS_MEMBRESIA_PK on ESTATUS_MEMBRESIA (
ID_ESTATUS_MEMBRESIA
);

/*==============================================================*/
/* Table: ESTATUS_ORDEN_B2B                                     */
/*==============================================================*/
create table ESTATUS_ORDEN_B2B (
   ID_ESTATUS_ORDEN_B2B SERIAL               not null,
   NOMBRE_ESTATUS_ORDEN_B2B VARCHAR(50)          not null,
   DESCRIPCION_ORDEN_B2B VARCHAR(200)         not null,
   constraint PK_ESTATUS_ORDEN_B2B primary key (ID_ESTATUS_ORDEN_B2B)
);

/*==============================================================*/
/* Index: ESTATUS_ORDEN_B2B_PK                                  */
/*==============================================================*/
create unique index ESTATUS_ORDEN_B2B_PK on ESTATUS_ORDEN_B2B (
ID_ESTATUS_ORDEN_B2B
);

/*==============================================================*/
/* Table: ESTATUS_ORDEN_COMPRA_B2C                              */
/*==============================================================*/
create table ESTATUS_ORDEN_COMPRA_B2C (
   ID_ESTATUS_B2C       SERIAL               not null,
   NOMBRE_ESTATUS_ORDEN_B2C VARCHAR(50)          not null,
   DESCRIPCION_ESTATUS_ORDEN_B2C VARCHAR(200)         not null,
   constraint PK_ESTATUS_ORDEN_COMPRA_B2C primary key (ID_ESTATUS_B2C)
);

/*==============================================================*/
/* Index: ESTATUS_ORDEN_COMPRA_B2C_PK                           */
/*==============================================================*/
create unique index ESTATUS_ORDEN_COMPRA_B2C_PK on ESTATUS_ORDEN_COMPRA_B2C (
ID_ESTATUS_B2C
);

/*==============================================================*/
/* Table: ESTATUS_ORDEN_SUBASTA                                 */
/*==============================================================*/
create table ESTATUS_ORDEN_SUBASTA (
   ID_ESTATUS_ORDENSUB  SERIAL               not null,
   NOMBRE_ESTATUS_ORDENSUB VARCHAR(50)          not null,
   DESC_ESTATUS_ORDENSUB VARCHAR(200)         not null,
   constraint PK_ESTATUS_ORDEN_SUBASTA primary key (ID_ESTATUS_ORDENSUB)
);

/*==============================================================*/
/* Index: ESTATUS_ORDEN_SUBASTA_PK                              */
/*==============================================================*/
create unique index ESTATUS_ORDEN_SUBASTA_PK on ESTATUS_ORDEN_SUBASTA (
ID_ESTATUS_ORDENSUB
);

/*==============================================================*/
/* Table: ESTATUS_PAGO_MEMBRESIA                                */
/*==============================================================*/
create table ESTATUS_PAGO_MEMBRESIA (
   ID_ESTATUS_PAGO_MEMBRESIA SERIAL               not null,
   NOMBRE_ESTATUS_PAGO_MEMBRESIA VARCHAR(50)          not null,
   DESC_ESTATUS_PAGO_MEMB VARCHAR(200)         not null,
   constraint PK_ESTATUS_PAGO_MEMBRESIA primary key (ID_ESTATUS_PAGO_MEMBRESIA)
);

/*==============================================================*/
/* Index: ESTATUS_PAGO_MEMBRESIA_PK                             */
/*==============================================================*/
create unique index ESTATUS_PAGO_MEMBRESIA_PK on ESTATUS_PAGO_MEMBRESIA (
ID_ESTATUS_PAGO_MEMBRESIA
);

/*==============================================================*/
/* Table: ESTATUS_PRECIO                                        */
/*==============================================================*/
create table ESTATUS_PRECIO (
   ID_ESTATUS_PRECIO    SERIAL               not null,
   NOMBRE_ESTATUS_PRECIO VARCHAR(50)          not null,
   DESCRIPCION_ESTATUS_PRECIO VARCHAR(200)         not null,
   constraint PK_ESTATUS_PRECIO primary key (ID_ESTATUS_PRECIO)
);

/*==============================================================*/
/* Index: ESTATUS_PRECIO_PK                                     */
/*==============================================================*/
create unique index ESTATUS_PRECIO_PK on ESTATUS_PRECIO (
ID_ESTATUS_PRECIO
);

/*==============================================================*/
/* Table: ESTATUS_PUJA                                          */
/*==============================================================*/
create table ESTATUS_PUJA (
   ID_ESTATUS_PUJA      SERIAL               not null,
   NOMBRE_ESTATUS_PUJA  VARCHAR(20)          not null,
   DESCRIPCION_ESTATUS_PUJA VARCHAR(200)         not null,
   constraint PK_ESTATUS_PUJA primary key (ID_ESTATUS_PUJA)
);

/*==============================================================*/
/* Index: ESTATUS_PUJA_PK                                       */
/*==============================================================*/
create unique index ESTATUS_PUJA_PK on ESTATUS_PUJA (
ID_ESTATUS_PUJA
);

/*==============================================================*/
/* Table: ESTATUS_SUBASTA                                       */
/*==============================================================*/
create table ESTATUS_SUBASTA (
   ID_ESTATUS_SUBASTA   SERIAL               not null,
   NOMBRE_ESTATUS_SUBASTA VARCHAR(50)          not null,
   DESCRIPCION_ESTATUS_SUBASTA VARCHAR(200)         not null,
   constraint PK_ESTATUS_SUBASTA primary key (ID_ESTATUS_SUBASTA)
);

/*==============================================================*/
/* Index: ESTATUS_SUBASTA_PK                                    */
/*==============================================================*/
create unique index ESTATUS_SUBASTA_PK on ESTATUS_SUBASTA (
ID_ESTATUS_SUBASTA
);

/*==============================================================*/
/* Table: FASE_CARGO                                            */
/*==============================================================*/
create table FASE_CARGO (
   BAS_ID_BASEDISENO    INT4                 not null,
   ID_PRUEBA            INT4                 not null,
   ID_BASEDISENO        INT4                 not null,
   ID_CARGO             INT4                 not null,
   CANTIDAD_CARGO       INT4                 not null,
   constraint PK_FASE_CARGO primary key (BAS_ID_BASEDISENO, ID_PRUEBA, ID_BASEDISENO, ID_CARGO)
);

/*==============================================================*/
/* Index: FASE_CARGO_PK                                         */
/*==============================================================*/
create unique index FASE_CARGO_PK on FASE_CARGO (
BAS_ID_BASEDISENO,
ID_PRUEBA,
ID_BASEDISENO,
ID_CARGO
);

/*==============================================================*/
/* Index: SE_MANEJA_FK                                          */
/*==============================================================*/
create  index SE_MANEJA_FK on FASE_CARGO (
BAS_ID_BASEDISENO,
ID_PRUEBA,
ID_BASEDISENO
);

/*==============================================================*/
/* Index: MANEJAN_FK                                            */
/*==============================================================*/
create  index MANEJAN_FK on FASE_CARGO (
ID_CARGO
);

/*==============================================================*/
/* Table: FASE_DISENO                                           */
/*==============================================================*/
create table FASE_DISENO (
   BAS_ID_BASEDISENO    INT4                 not null,
   ID_PRUEBA            INT4                 not null,
   ID_BASEDISENO        INT4                 not null,
   constraint PK_FASE_DISENO primary key (BAS_ID_BASEDISENO, ID_PRUEBA, ID_BASEDISENO)
);

/*==============================================================*/
/* Index: FASE_DISENO_PK                                        */
/*==============================================================*/
create unique index FASE_DISENO_PK on FASE_DISENO (
BAS_ID_BASEDISENO,
ID_PRUEBA,
ID_BASEDISENO
);

/*==============================================================*/
/* Index: TIENE_FK                                              */
/*==============================================================*/
create  index TIENE_FK on FASE_DISENO (
ID_BASEDISENO
);

/*==============================================================*/
/* Index: SE_PRUEBA_FK                                          */
/*==============================================================*/
create  index SE_PRUEBA_FK on FASE_DISENO (
BAS_ID_BASEDISENO,
ID_PRUEBA
);

/*==============================================================*/
/* Table: FASE_EMPLEADO                                         */
/*==============================================================*/
create table FASE_EMPLEADO (
   FAS_BAS_ID_BASEDISENO INT4                 not null,
   ID_PRUEBA            INT4                 not null,
   FAS_ID_BASEDISENO    INT4                 not null,
   FAS_ID_CARGO         INT4                 not null,
   ID_PIEZA             INT4                 not null,
   ID_MOLDE             INT4                 not null,
   ID_MATERIAPRIMA      INT4                 not null,
   BAS_ID_BASEDISENO    INT4                 not null,
   ID_BASEDISENO        INT4                 not null,
   ID_PRODUCTO          INT4                 not null,
   ID_FASE_PRODUCCION   INT4                 not null,
   ID_CARGO             INT4                 not null,
   ID_CONTRATO          INT4                 not null,
   ID_CONTRATO_CARGO    INT4                 not null,
   ID_FASE_EMPLEADO     SERIAL               not null,
   constraint PK_FASE_EMPLEADO primary key (FAS_BAS_ID_BASEDISENO, ID_PRUEBA, FAS_ID_BASEDISENO, FAS_ID_CARGO, ID_PIEZA, ID_MOLDE, ID_CARGO, ID_CONTRATO, ID_MATERIAPRIMA, BAS_ID_BASEDISENO, ID_BASEDISENO, ID_PRODUCTO, ID_FASE_PRODUCCION, ID_CONTRATO_CARGO, ID_FASE_EMPLEADO)
);

/*==============================================================*/
/* Index: FASE_EMPLEADO_PK                                      */
/*==============================================================*/
create unique index FASE_EMPLEADO_PK on FASE_EMPLEADO (
FAS_BAS_ID_BASEDISENO,
ID_PRUEBA,
FAS_ID_BASEDISENO,
FAS_ID_CARGO,
ID_PIEZA,
ID_MOLDE,
ID_CARGO,
ID_CONTRATO,
ID_MATERIAPRIMA,
BAS_ID_BASEDISENO,
ID_BASEDISENO,
ID_PRODUCTO,
ID_FASE_PRODUCCION,
ID_CONTRATO_CARGO,
ID_FASE_EMPLEADO
);

/*==============================================================*/
/* Index: SUJETO_A_FK                                           */
/*==============================================================*/
create  index SUJETO_A_FK on FASE_EMPLEADO (
FAS_BAS_ID_BASEDISENO,
ID_PRUEBA,
FAS_ID_BASEDISENO,
FAS_ID_CARGO,
ID_PIEZA,
ID_MOLDE,
ID_MATERIAPRIMA,
BAS_ID_BASEDISENO,
ID_BASEDISENO,
ID_PRODUCTO,
ID_FASE_PRODUCCION
);

/*==============================================================*/
/* Index: TRABAJA_EN_FK                                         */
/*==============================================================*/
create  index TRABAJA_EN_FK on FASE_EMPLEADO (
ID_CARGO,
ID_CONTRATO,
ID_CONTRATO_CARGO
);

/*==============================================================*/
/* Table: FASE_PRODUCCION                                       */
/*==============================================================*/
create table FASE_PRODUCCION (
   FAS_BAS_ID_BASEDISENO INT4                 not null,
   ID_PRUEBA            INT4                 not null,
   FAS_ID_BASEDISENO    INT4                 not null,
   ID_CARGO             INT4                 not null,
   ID_PIEZA             INT4                 not null,
   ID_MOLDE             INT4                 not null,
   ID_MATERIAPRIMA      INT4                 not null,
   BAS_ID_BASEDISENO    INT4                 not null,
   ID_BASEDISENO        INT4                 not null,
   ID_PRODUCTO          INT4                 not null,
   ID_FASE_PRODUCCION   SERIAL               not null,
   constraint PK_FASE_PRODUCCION primary key (FAS_BAS_ID_BASEDISENO, ID_PRUEBA, FAS_ID_BASEDISENO, ID_CARGO, ID_PIEZA, ID_MOLDE, ID_MATERIAPRIMA, BAS_ID_BASEDISENO, ID_BASEDISENO, ID_PRODUCTO, ID_FASE_PRODUCCION)
);

/*==============================================================*/
/* Index: FASE_PRODUCCION_PK                                    */
/*==============================================================*/
create unique index FASE_PRODUCCION_PK on FASE_PRODUCCION (
FAS_BAS_ID_BASEDISENO,
ID_PRUEBA,
FAS_ID_BASEDISENO,
ID_CARGO,
ID_PIEZA,
ID_MOLDE,
ID_MATERIAPRIMA,
BAS_ID_BASEDISENO,
ID_BASEDISENO,
ID_PRODUCTO,
ID_FASE_PRODUCCION
);

/*==============================================================*/
/* Index: SIGUE_FK                                              */
/*==============================================================*/
create  index SIGUE_FK on FASE_PRODUCCION (
ID_PIEZA,
ID_MOLDE,
ID_MATERIAPRIMA,
BAS_ID_BASEDISENO,
ID_BASEDISENO,
ID_PRODUCTO
);

/*==============================================================*/
/* Index: LO_SIGUE_FK                                           */
/*==============================================================*/
create  index LO_SIGUE_FK on FASE_PRODUCCION (
FAS_BAS_ID_BASEDISENO,
ID_PRUEBA,
FAS_ID_BASEDISENO,
ID_CARGO
);

/*==============================================================*/
/* Table: HISTORICO_BACKORDER                                   */
/*==============================================================*/
create table HISTORICO_BACKORDER (
   ID_ESTATUS_BACKORDER INT4                 not null,
   ID_BACKORDER         INT4                 not null,
   FECHAHORA_INICIO_BACKORDER DATE                 not null,
   FECHAHORA_FIN_BACKORDER DATE                 null,
   constraint PK_HISTORICO_BACKORDER primary key (ID_ESTATUS_BACKORDER, ID_BACKORDER)
);

/*==============================================================*/
/* Index: HISTORICO_BACKORDER_PK                                */
/*==============================================================*/
create unique index HISTORICO_BACKORDER_PK on HISTORICO_BACKORDER (
ID_ESTATUS_BACKORDER,
ID_BACKORDER
);

/*==============================================================*/
/* Index: ES_REGISTRADO_FK                                      */
/*==============================================================*/
create  index ES_REGISTRADO_FK on HISTORICO_BACKORDER (
ID_ESTATUS_BACKORDER
);

/*==============================================================*/
/* Index: SE_LE_REGISTRA_FK                                     */
/*==============================================================*/
create  index SE_LE_REGISTRA_FK on HISTORICO_BACKORDER (
ID_BACKORDER
);

/*==============================================================*/
/* Table: HISTORICO_EST_ORD_SUBASTA                             */
/*==============================================================*/
create table HISTORICO_EST_ORD_SUBASTA (
   ID_ESTATUS_ORDENSUB  INT4                 not null,
   ID_ORDEN_SUBASTA       INT4                 not null,
   FECHAHORAINICIO_ORDSUBASTA DATE                 not null,
   FECHAHORAFIN_ORDSUBASTA DATE                 null,
   constraint PK_HISTORICO_EST_ORD_SUBASTA primary key (ID_ESTATUS_ORDENSUB, ID_ORDEN_SUBASTA)
);

/*==============================================================*/
/* Index: HISTORICO_EST_ORD_SUBASTA_PK                          */
/*==============================================================*/
create unique index HISTORICO_EST_ORD_SUBASTA_PK on HISTORICO_EST_ORD_SUBASTA (
ID_ESTATUS_ORDENSUB,
ID_ORDEN_SUBASTA
);

/*==============================================================*/
/* Index: ES_DESCRITA_FK                                        */
/*==============================================================*/
create  index ES_DESCRITA_FK on HISTORICO_EST_ORD_SUBASTA (
ID_ESTATUS_ORDENSUB
);

/*==============================================================*/
/* Index: SE_DESCRIBE_FK                                        */
/*==============================================================*/
create  index SE_DESCRIBE_FK on HISTORICO_EST_ORD_SUBASTA (
ID_ORDEN_SUBASTA
);

/*==============================================================*/
/* Table: HISTORICO_FASE_PRODUCCION                             */
/*==============================================================*/
create table HISTORICO_FASE_PRODUCCION (
   FAS_BAS_ID_BASEDISENO INT4                 not null,
   ID_PRUEBA            INT4                 not null,
   FAS_ID_BASEDISENO    INT4                 not null,
   FAS_ID_CARGO         INT4                 not null,
   ID_PIEZA             INT4                 not null,
   ID_MOLDE             INT4                 not null,
   ID_CARGO             INT4                 not null,
   ID_CONTRATO          INT4                 not null,
   ID_MATERIAPRIMA      INT4                 not null,
   BAS_ID_BASEDISENO    INT4                 not null,
   ID_BASEDISENO        INT4                 not null,
   ID_PRODUCTO          INT4                 not null,
   ID_FASE_PRODUCCION   INT4                 not null,
   ID_CONTRATO_CARGO    INT4                 not null,
   ID_FASE_EMPLEADO     INT4                 not null,
   ID_ESTATUS_FP        INT4                 not null,
   FECHAHORA_INICIO_FASEP DATE                 not null,
   FECHAHORA_FINAL_FASEP DATE                 null,
   constraint PK_HISTORICO_FASE_PRODUCCION primary key (FAS_BAS_ID_BASEDISENO, ID_PRUEBA, FAS_ID_BASEDISENO, FAS_ID_CARGO, ID_PIEZA, ID_MOLDE, ID_CARGO, ID_CONTRATO, ID_MATERIAPRIMA, BAS_ID_BASEDISENO, ID_BASEDISENO, ID_PRODUCTO, ID_FASE_PRODUCCION, ID_CONTRATO_CARGO, ID_FASE_EMPLEADO, ID_ESTATUS_FP)
);

/*==============================================================*/
/* Index: HISTORICO_FASE_PRODUCCION_PK                          */
/*==============================================================*/
create unique index HISTORICO_FASE_PRODUCCION_PK on HISTORICO_FASE_PRODUCCION (
FAS_BAS_ID_BASEDISENO,
ID_PRUEBA,
FAS_ID_BASEDISENO,
FAS_ID_CARGO,
ID_PIEZA,
ID_MOLDE,
ID_CARGO,
ID_CONTRATO,
ID_MATERIAPRIMA,
BAS_ID_BASEDISENO,
ID_BASEDISENO,
ID_PRODUCTO,
ID_FASE_PRODUCCION,
ID_CONTRATO_CARGO,
ID_FASE_EMPLEADO,
ID_ESTATUS_FP
);

/*==============================================================*/
/* Index: SE_REGISTRA_FK                                        */
/*==============================================================*/
create  index SE_REGISTRA_FK on HISTORICO_FASE_PRODUCCION (
FAS_BAS_ID_BASEDISENO,
ID_PRUEBA,
FAS_ID_BASEDISENO,
FAS_ID_CARGO,
ID_PIEZA,
ID_MOLDE,
ID_CARGO,
ID_CONTRATO,
ID_MATERIAPRIMA,
BAS_ID_BASEDISENO,
ID_BASEDISENO,
ID_PRODUCTO,
ID_FASE_PRODUCCION,
ID_CONTRATO_CARGO,
ID_FASE_EMPLEADO
);

/*==============================================================*/
/* Index: RESENA_FK                                             */
/*==============================================================*/
create  index RESENA_FK on HISTORICO_FASE_PRODUCCION (
ID_ESTATUS_FP
);

/*==============================================================*/
/* Table: HISTORICO_INV_PRODUCTO                                */
/*==============================================================*/
create table HISTORICO_INV_PRODUCTO (
   ID_PIEZA             INT4                 not null,
   ID_MOLDE             INT4                 not null,
   ID_SEDE              INT4                 not null,
   ID_MATERIAPRIMA      INT4                 not null,
   BAS_ID_BASEDISENO    INT4                 not null,
   ID_BASEDISENO        INT4                 not null,
   ID_PRODUCTO          INT4                 not null,
   ID_ESTATUS_INVENTARIO INT4                 not null,
   PRODUCTO_FECHA_INICIO DATE                 not null,
   PRODUCTO_FECHA_FIN   DATE                 null,
   constraint PK_HISTORICO_INV_PRODUCTO primary key (ID_PIEZA, ID_MOLDE, ID_SEDE, ID_MATERIAPRIMA, BAS_ID_BASEDISENO, ID_BASEDISENO, ID_PRODUCTO, ID_ESTATUS_INVENTARIO)
);

/*==============================================================*/
/* Index: HISTORICO_INV_PRODUCTO_PK                             */
/*==============================================================*/
create unique index HISTORICO_INV_PRODUCTO_PK on HISTORICO_INV_PRODUCTO (
ID_PIEZA,
ID_MOLDE,
ID_SEDE,
ID_MATERIAPRIMA,
BAS_ID_BASEDISENO,
ID_BASEDISENO,
ID_PRODUCTO,
ID_ESTATUS_INVENTARIO
);

/*==============================================================*/
/* Index: SE_CERTIFICA_FK                                       */
/*==============================================================*/
create  index SE_CERTIFICA_FK on HISTORICO_INV_PRODUCTO (
ID_PIEZA,
ID_MOLDE,
ID_SEDE,
ID_MATERIAPRIMA,
BAS_ID_BASEDISENO,
ID_BASEDISENO,
ID_PRODUCTO
);

/*==============================================================*/
/* Index: EXPLICA_FK                                            */
/*==============================================================*/
create  index EXPLICA_FK on HISTORICO_INV_PRODUCTO (
ID_ESTATUS_INVENTARIO
);

/*==============================================================*/
/* Table: HISTORICO_MEMBRESIA                                   */
/*==============================================================*/
create table HISTORICO_MEMBRESIA (
   ID_MEMBRESIA         INT4                 not null,
   ID_PERSONA_NATURAL   INT4                 not null,
   ID_ESTATUS_MEMBRESIA INT4                 not null,
   MEMBRESIA_FECHA_INICIO DATE                 not null,
   MEMBRESIA_FECHA_FIN  DATE                 null,
   constraint PK_HISTORICO_MEMBRESIA primary key (ID_MEMBRESIA, ID_PERSONA_NATURAL, ID_ESTATUS_MEMBRESIA)
);

/*==============================================================*/
/* Index: HISTORICO_MEMBRESIA_PK                                */
/*==============================================================*/
create unique index HISTORICO_MEMBRESIA_PK on HISTORICO_MEMBRESIA (
ID_MEMBRESIA,
ID_PERSONA_NATURAL,
ID_ESTATUS_MEMBRESIA
);

/*==============================================================*/
/* Index: DESCRIBE_FK                                           */
/*==============================================================*/
create  index DESCRIBE_FK on HISTORICO_MEMBRESIA (
ID_ESTATUS_MEMBRESIA
);

/*==============================================================*/
/* Index: ES_REGISTRADA_FK                                      */
/*==============================================================*/
create  index ES_REGISTRADA_FK on HISTORICO_MEMBRESIA (
ID_MEMBRESIA,
ID_PERSONA_NATURAL
);

/*==============================================================*/
/* Table: HISTORICO_ORDEN_COMPRA_B2B                            */
/*==============================================================*/
create table HISTORICO_ORDEN_COMPRA_B2B (
   ID_ESTATUS_ORDEN_B2B INT4                 not null,
   ID_ORDEN_COMPRA_B2B  INT4                 not null,
   FECHAHORA_INICIO_COMPRA_B2B DATE                 not null,
   FECHAHORA_FIN_COMPRA_B2B DATE                 null,
   constraint PK_HISTORICO_ORDEN_COMPRA_B2B primary key (ID_ESTATUS_ORDEN_B2B, ID_ORDEN_COMPRA_B2B)
);

/*==============================================================*/
/* Index: HISTORICO_ORDEN_COMPRA_B2B_PK                         */
/*==============================================================*/
create unique index HISTORICO_ORDEN_COMPRA_B2B_PK on HISTORICO_ORDEN_COMPRA_B2B (
ID_ESTATUS_ORDEN_B2B,
ID_ORDEN_COMPRA_B2B
);

/*==============================================================*/
/* Index: VA_REGISTRADA_FK                                      */
/*==============================================================*/
create  index VA_REGISTRADA_FK on HISTORICO_ORDEN_COMPRA_B2B (
ID_ORDEN_COMPRA_B2B
);

/*==============================================================*/
/* Table: HISTORICO_ORDEN_COMPRA_B2C                            */
/*==============================================================*/
create table HISTORICO_ORDEN_COMPRA_B2C (
   ID_ESTATUS_B2C       INT4                 not null,
   ID_ORDEN_COMPRA_B2C  INT4                 not null,
   FECHAHORA_INICIO_COMPRA_B2C DATE                 not null,
   FECHAHORA_FIN_COMPRA_B2C DATE                 null,
   constraint PK_HISTORICO_ORDEN_COMPRA_B2C primary key (ID_ESTATUS_B2C, ID_ORDEN_COMPRA_B2C)
);

/*==============================================================*/
/* Index: HISTORICO_ORDEN_COMPRA_B2C_PK                         */
/*==============================================================*/
create unique index HISTORICO_ORDEN_COMPRA_B2C_PK on HISTORICO_ORDEN_COMPRA_B2C (
ID_ESTATUS_B2C,
ID_ORDEN_COMPRA_B2C
);

/*==============================================================*/
/* Index: SUJETA_A_FK                                           */
/*==============================================================*/
create  index SUJETA_A_FK on HISTORICO_ORDEN_COMPRA_B2C (
ID_ESTATUS_B2C
);

/*==============================================================*/
/* Index: CONDICIONADO_FK                                       */
/*==============================================================*/
create  index CONDICIONADO_FK on HISTORICO_ORDEN_COMPRA_B2C (
ID_ORDEN_COMPRA_B2C
);

/*==============================================================*/
/* Table: HISTORICO_PRECIO                                      */
/*==============================================================*/
create table HISTORICO_PRECIO (
   ID_PIEZA             INT4                 not null,
   ID_MOLDE             INT4                 not null,
   ID_MATERIAPRIMA      INT4                 not null,
   BAS_ID_BASEDISENO    INT4                 not null,
   ID_BASEDISENO        INT4                 not null,
   ID_PRODUCTO          INT4                 not null,
   ID_ESTATUS_PRECIO    INT4                 not null,
   ID_PRECIO            SERIAL               not null,
   MONTO_PRECIO         DECIMAL(10,2)        not null,
   FECHAINICIO_HISTORICO_PRECIO DATE                 not null,
   TIPO_PRECIO          VARCHAR(50)          not null
      constraint CKC_TIPO_PRECIO_HISTORIC check (TIPO_PRECIO in ('DET','MAYOR','SUB')),
   FECHAFIN_HISTORICO_PRECIO DATE                 null,
   constraint PK_HISTORICO_PRECIO primary key (ID_PIEZA, ID_MOLDE, ID_MATERIAPRIMA, BAS_ID_BASEDISENO, ID_BASEDISENO, ID_PRODUCTO, ID_ESTATUS_PRECIO, ID_PRECIO)
);

/*==============================================================*/
/* Index: HISTORICO_PRECIO_PK                                   */
/*==============================================================*/
create unique index HISTORICO_PRECIO_PK on HISTORICO_PRECIO (
ID_PIEZA,
ID_MOLDE,
ID_MATERIAPRIMA,
BAS_ID_BASEDISENO,
ID_BASEDISENO,
ID_PRODUCTO,
ID_ESTATUS_PRECIO,
ID_PRECIO
);

/*==============================================================*/
/* Index: SE_VALUA_FK                                           */
/*==============================================================*/
create  index SE_VALUA_FK on HISTORICO_PRECIO (
ID_PIEZA,
ID_MOLDE,
ID_MATERIAPRIMA,
BAS_ID_BASEDISENO,
ID_BASEDISENO,
ID_PRODUCTO
);

/*==============================================================*/
/* Index: ESTA_PAUTADO_FK                                       */
/*==============================================================*/
create  index ESTA_PAUTADO_FK on HISTORICO_PRECIO (
ID_ESTATUS_PRECIO
);

/*==============================================================*/
/* Table: HISTORICO_SUBASTA                                     */
/*==============================================================*/
create table HISTORICO_SUBASTA (
   ID_ESTATUS_SUBASTA   INT4                 not null,
   ID_SUBASTA           INT4                 not null,
   FECHAINICIO_ESTATUS_SUBASTA DATE                 not null,
   FECHAFIN_ESTATUS_SUBASTA DATE                 null,
   constraint PK_HISTORICO_SUBASTA primary key (ID_ESTATUS_SUBASTA, ID_SUBASTA)
);

/*==============================================================*/
/* Index: HISTORICO_SUBASTA_PK                                  */
/*==============================================================*/
create unique index HISTORICO_SUBASTA_PK on HISTORICO_SUBASTA (
ID_ESTATUS_SUBASTA,
ID_SUBASTA
);

/*==============================================================*/
/* Index: TIENE_UN_ESTATUS_FK                                   */
/*==============================================================*/
create  index TIENE_UN_ESTATUS_FK on HISTORICO_SUBASTA (
ID_ESTATUS_SUBASTA
);

/*==============================================================*/
/* Index: ES_DETERMINADA_FK                                     */
/*==============================================================*/
create  index ES_DETERMINADA_FK on HISTORICO_SUBASTA (
ID_SUBASTA
);

/*==============================================================*/
/* Table: HORARIO                                               */
/*==============================================================*/
create table HORARIO (
   ID_HORARIO           SERIAL               not null,
   DIA_HORARIO          VARCHAR(50)          not null,
   HORA_ENTRADA_HORARIO TIME                 not null,
   HORA_ENTRADA_SALIDA  TIME                 not null,
   TURNO_HORARIO        VARCHAR(50)          not null,
   constraint PK_HORARIO primary key (ID_HORARIO)
);

/*==============================================================*/
/* Index: HORARIO_PK                                            */
/*==============================================================*/
create unique index HORARIO_PK on HORARIO (
ID_HORARIO
);

/*==============================================================*/
/* Table: INVENTARIO_MATERIAPRIMA                               */
/*==============================================================*/
create table INVENTARIO_MATERIAPRIMA (
   ID_SEDE              INT4                 not null,
   ID_MATERIAPRIMA      INT4                 not null,
   constraint PK_INVENTARIO_MATERIAPRIMA primary key (ID_SEDE, ID_MATERIAPRIMA)
);

/*==============================================================*/
/* Index: INVENTARIO_MATERIAPRIMA_PK                            */
/*==============================================================*/
create unique index INVENTARIO_MATERIAPRIMA_PK on INVENTARIO_MATERIAPRIMA (
ID_SEDE,
ID_MATERIAPRIMA
);

/*==============================================================*/
/* Index: ALMACENA_FK                                           */
/*==============================================================*/
create  index ALMACENA_FK on INVENTARIO_MATERIAPRIMA (
ID_SEDE
);

/*==============================================================*/
/* Index: ES_ALMACENADA_FK                                      */
/*==============================================================*/
create  index ES_ALMACENADA_FK on INVENTARIO_MATERIAPRIMA (
ID_MATERIAPRIMA
);

/*==============================================================*/
/* Table: INVENTARIO_PRODUCTO                                   */
/*==============================================================*/
create table INVENTARIO_PRODUCTO (
   ID_SEDE              INT4                 not null,
   ID_PIEZA             INT4                 not null,
   ID_MOLDE             INT4                 not null,
   ID_MATERIAPRIMA      INT4                 not null,
   BAS_ID_BASEDISENO    INT4                 not null,
   ID_BASEDISENO        INT4                 not null,
   ID_PRODUCTO          INT4                 not null,
   ID_SUBASTA           INT4                 null,
   constraint PK_INVENTARIO_PRODUCTO primary key (ID_PIEZA, ID_MOLDE, ID_SEDE, ID_MATERIAPRIMA, BAS_ID_BASEDISENO, ID_BASEDISENO, ID_PRODUCTO)
);

/*==============================================================*/
/* Index: INVENTARIO_PRODUCTO_PK                                */
/*==============================================================*/
create unique index INVENTARIO_PRODUCTO_PK on INVENTARIO_PRODUCTO (
ID_PIEZA,
ID_MOLDE,
ID_SEDE,
ID_MATERIAPRIMA,
BAS_ID_BASEDISENO,
ID_BASEDISENO,
ID_PRODUCTO
);

/*==============================================================*/
/* Index: CONTIENE_FK                                           */
/*==============================================================*/
create  index CONTIENE_FK on INVENTARIO_PRODUCTO (
ID_SEDE
);

/*==============================================================*/
/* Index: SE_ALMACENA_FK                                        */
/*==============================================================*/
create  index SE_ALMACENA_FK on INVENTARIO_PRODUCTO (
ID_PIEZA,
ID_MOLDE,
ID_MATERIAPRIMA,
BAS_ID_BASEDISENO,
ID_BASEDISENO,
ID_PRODUCTO
);

/*==============================================================*/
/* Index: SE_SUBASTA_FK                                         */
/*==============================================================*/
create  index SE_SUBASTA_FK on INVENTARIO_PRODUCTO (
ID_SUBASTA
);

/*==============================================================*/
/* Table: LINEA_CREDITO                                         */
/*==============================================================*/
create table LINEA_CREDITO (
   ID_LINEA_CREDITO     SERIAL               not null,
   ID_PERSONA_JURIDICA  INT4                 not null,
   TOTAL_LINEA_CREDITO  INT4                 not null,
   constraint PK_LINEA_CREDITO primary key (ID_LINEA_CREDITO)
);

/*==============================================================*/
/* Index: LINEA_CREDITO_PK                                      */
/*==============================================================*/
create unique index LINEA_CREDITO_PK on LINEA_CREDITO (
ID_LINEA_CREDITO
);

/*==============================================================*/
/* Index: ES_ASIGNADO2_FK                                       */
/*==============================================================*/
create  index ES_ASIGNADO2_FK on LINEA_CREDITO (
ID_PERSONA_JURIDICA
);

/*==============================================================*/
/* Table: LUGAR                                                 */
/*==============================================================*/
create table LUGAR (
   ID_LUGAR             SERIAL               not null,
   LUG_ID_LUGAR         INT4                 null,
   NOMBRE_LUGAR         VARCHAR(50)          not null,
   TIPO_LUGAR           VARCHAR(20)          not null,
   constraint PK_LUGAR primary key (ID_LUGAR)
);

/*==============================================================*/
/* Index: LUGAR_PK                                              */
/*==============================================================*/
create unique index LUGAR_PK on LUGAR (
ID_LUGAR
);

/*==============================================================*/
/* Index: DIVIDE_FK                                             */
/*==============================================================*/
create  index DIVIDE_FK on LUGAR (
LUG_ID_LUGAR
);

/*==============================================================*/
/* Table: MANIFIESTO_CARGO                                      */
/*==============================================================*/
create table MANIFIESTO_CARGO (
   ID_MANIFIESTOCARGO   SERIAL               not null,
   ID_TRANSPORTE        INT4                 not null,
   ID_LUGAR             INT4                 not null,
   LUG_ID_LUGAR         INT4                 not null,
   FECHAHORA_EMISION_MANIFIESTO DATE                 not null,
   DIR_DESTINO_MANIFIESTO VARCHAR(200)         not null,
   DIR_ORIGEN_MANIFIESTO VARCHAR(200)         not null,
   constraint PK_MANIFIESTO_CARGO primary key (ID_MANIFIESTOCARGO)
);

/*==============================================================*/
/* Index: MANIFIESTO_CARGO_PK                                   */
/*==============================================================*/
create unique index MANIFIESTO_CARGO_PK on MANIFIESTO_CARGO (
ID_MANIFIESTOCARGO
);

/*==============================================================*/
/* Index: ES_TRANSPORTADA_FK                                    */
/*==============================================================*/
create  index ES_TRANSPORTADA_FK on MANIFIESTO_CARGO (
ID_TRANSPORTE
);

/*==============================================================*/
/* Index: SE_ENTREGA_EN_FK                                      */
/*==============================================================*/
create  index SE_ENTREGA_EN_FK on MANIFIESTO_CARGO (
ID_LUGAR
);

/*==============================================================*/
/* Index: SU_ORIGEN_ES_FK                                       */
/*==============================================================*/
create  index SU_ORIGEN_ES_FK on MANIFIESTO_CARGO (
LUG_ID_LUGAR
);

/*==============================================================*/
/* Table: MATERIAPRIMA                                          */
/*==============================================================*/
create table MATERIAPRIMA (
   ID_MATERIAPRIMA      SERIAL               not null,
   NOMBRE_MATERIAPRIMA  VARCHAR(50)          not null,
   DESCRIPCION_MATERIAPRIMA VARCHAR(200)         not null,
   constraint PK_MATERIAPRIMA primary key (ID_MATERIAPRIMA)
);

/*==============================================================*/
/* Index: MATERIAPRIMA_PK                                       */
/*==============================================================*/
create unique index MATERIAPRIMA_PK on MATERIAPRIMA (
ID_MATERIAPRIMA
);

/*==============================================================*/
/* Table: MEMBRESIA                                             */
/*==============================================================*/
create table MEMBRESIA (
   ID_MEMBRESIA         SERIAL               not null,
   NOMBRE_MEMBRESIA     VARCHAR(50)          not null,
   DESCRIPCION_MEMBRESIA VARCHAR(200)         not null,
   PRECIO_MEMBRESIA     DECIMAL(20,2)        not null,
   constraint PK_MEMBRESIA primary key (ID_MEMBRESIA)
);

/*==============================================================*/
/* Index: MEMBRESIA_PK                                          */
/*==============================================================*/
create unique index MEMBRESIA_PK on MEMBRESIA (
ID_MEMBRESIA
);

/*==============================================================*/
/* Table: MEMBRESIA_CLIENTE_B2C                                 */
/*==============================================================*/
create table MEMBRESIA_CLIENTE_B2C (
   ID_MEMBRESIA         INT4                 not null,
   ID_PERSONA_NATURAL   INT4                 not null,
   constraint PK_MEMBRESIA_CLIENTE_B2C primary key (ID_MEMBRESIA, ID_PERSONA_NATURAL)
);

/*==============================================================*/
/* Index: MEMBRESIA_CLIENTE_B2C_PK                              */
/*==============================================================*/
create unique index MEMBRESIA_CLIENTE_B2C_PK on MEMBRESIA_CLIENTE_B2C (
ID_MEMBRESIA,
ID_PERSONA_NATURAL
);

/*==============================================================*/
/* Index: ES_ADQUIRIDA_FK                                       */
/*==============================================================*/
create  index ES_ADQUIRIDA_FK on MEMBRESIA_CLIENTE_B2C (
ID_MEMBRESIA
);

/*==============================================================*/
/* Index: COMPRA_FK                                             */
/*==============================================================*/
create  index COMPRA_FK on MEMBRESIA_CLIENTE_B2C (
ID_PERSONA_NATURAL
);

/*==============================================================*/
/* Table: META_MENSUAL                                          */
/*==============================================================*/
create table META_MENSUAL (
   ID_META_MENSUAL      SERIAL               not null,
   FECHAINICIO_META     DATE                 not null,
   FECHAFIN_META        DATE                 not null,
   MONTO_META           DECIMAL(20,2)        not null,
   constraint PK_META_MENSUAL primary key (ID_META_MENSUAL)
);

/*==============================================================*/
/* Index: META_MENSUAL_PK                                       */
/*==============================================================*/
create unique index META_MENSUAL_PK on META_MENSUAL (
ID_META_MENSUAL
);

/*==============================================================*/
/* Table: MOLDE                                                 */
/*==============================================================*/
create table MOLDE (
   ID_MOLDE             SERIAL               not null,
   NOMBRE_MOLDE         VARCHAR(50)          not null,
   DESCRIPCION_MOLDE    VARCHAR(200)         not null,
   constraint PK_MOLDE primary key (ID_MOLDE)
);

/*==============================================================*/
/* Index: MOLDE_PK                                              */
/*==============================================================*/
create unique index MOLDE_PK on MOLDE (
ID_MOLDE
);

/*==============================================================*/
/* Table: MONEDA                                                */
/*==============================================================*/
create table MONEDA (
   ID_MONEDA            SERIAL               not null,
   ID_ORDEN_SUBASTA       INT4                 null,
   ID_USUARIO           INT4                 null,
   PAG_TAR_ID_METODO_PAGO INT4                 null,
   PAG_ID_METODO_PAGO3  INT4                 null,
   PAG_ID_USUARIO_METODO_PAGO INT4                 null,
   ID_PAGO_SUBASTA      INT4                 null,
   PAG_ID_USUARIO       INT4                 null,
   PAG_TAR_ID_METODO_PAGO2 INT4                 null,
   PAG_ID_METODO_PAGO2  INT4                 null,
   ID_USUARIO_METODO_PAGO INT4                 null,
   ID_MEMBRESIA         INT4                 null,
   ID_PAGO_MEMBRESIA    INT4                 null,
   ID_ORDEN_COMPRA_B2C  INT4                 null,
   PAY_ID_METODO_PAGO   INT4                 null,
   ID_METODO_PAGO       INT4                 null,
   TAR_ID_METODO_PAGO   INT4                 null,
   TAR_ID_METODO_PAGO2  INT4                 null,
   CHE_ID_METODO_PAGO   INT4                 null,
   PAG_ID_METODO_PAGO   INT4                 null,
   NOMBRE_MONEDA        VARCHAR(20)          not null,
   SIMBOLO_MONEDA       VARCHAR(10)          not null,
   TIPO_MONEDA          VARCHAR(20)          not null,
   constraint PK_MONEDA primary key (ID_MONEDA)
);

/*==============================================================*/
/* Index: MONEDA_PK                                             */
/*==============================================================*/
create unique index MONEDA_PK on MONEDA (
ID_MONEDA
);

/*==============================================================*/
/* Index: ES_REALIZADO_EL_PAGO_FK                               */
/*==============================================================*/
create  index ES_REALIZADO_EL_PAGO_FK on MONEDA (
ID_ORDEN_SUBASTA,
ID_USUARIO,
PAG_TAR_ID_METODO_PAGO,
PAG_ID_METODO_PAGO3,
PAG_ID_USUARIO_METODO_PAGO,
ID_PAGO_SUBASTA
);

/*==============================================================*/
/* Index: SE_PAGA_MEDIANTE_FK                                   */
/*==============================================================*/
create  index SE_PAGA_MEDIANTE_FK on MONEDA (
PAG_ID_USUARIO,
PAG_TAR_ID_METODO_PAGO2,
PAG_ID_METODO_PAGO2,
ID_USUARIO_METODO_PAGO,
ID_MEMBRESIA,
ID_PAGO_MEMBRESIA
);

/*==============================================================*/
/* Index: ES_PAGADO_MEDIANTE_FK                                 */
/*==============================================================*/
create  index ES_PAGADO_MEDIANTE_FK on MONEDA (
ID_ORDEN_COMPRA_B2C,
PAY_ID_METODO_PAGO,
ID_METODO_PAGO,
TAR_ID_METODO_PAGO,
TAR_ID_METODO_PAGO2
);

/*==============================================================*/
/* Index: SE_REALIZA_EL_PAGO_FK                                 */
/*==============================================================*/
create  index SE_REALIZA_EL_PAGO_FK on MONEDA (
CHE_ID_METODO_PAGO,
PAG_ID_METODO_PAGO
);

/*==============================================================*/
/* Table: ORDEN_COMPRA_B2B                                      */
/*==============================================================*/
create table ORDEN_COMPRA_B2B (
   ID_ORDEN_COMPRA_B2B  SERIAL               not null,
   ID_USUARIO           INT4                 not null,
   ID_CONTRATO          INT4                 not null,
   FECHAHORA_ORDEN_COMPRA_B2B DATE                 not null,
   CONDICION_PAGO       INT4                 not null
      constraint CKC_CONDICION_PAGO_ORDEN_CO check (CONDICION_PAGO in (30,60,90)),
   N_FACTURA_COMPRA_B2B INT4                 not null,
   SUBTOTAL_ORDEN_COMPRA_B2B DECIMAL(20,2)        not null,
   TOTAL_ORDEN_COMPRA_B2B DECIMAL(20,2)        not null,
   constraint PK_ORDEN_COMPRA_B2B primary key (ID_ORDEN_COMPRA_B2B)
);

/*==============================================================*/
/* Index: ORDEN_COMPRA_B2B_PK                                   */
/*==============================================================*/
create unique index ORDEN_COMPRA_B2B_PK on ORDEN_COMPRA_B2B (
ID_ORDEN_COMPRA_B2B
);

/*==============================================================*/
/* Index: COMPRA_MASIVAMENTE_FK                                 */
/*==============================================================*/
create  index COMPRA_MASIVAMENTE_FK on ORDEN_COMPRA_B2B (
ID_USUARIO
);

/*==============================================================*/
/* Index: VENDE_FK                                              */
/*==============================================================*/
create  index VENDE_FK on ORDEN_COMPRA_B2B (
ID_CONTRATO
);

/*==============================================================*/
/* Table: ORDEN_COMPRA_B2C                                      */
/*==============================================================*/
create table ORDEN_COMPRA_B2C (
   ID_ORDEN_COMPRA_B2C  SERIAL               not null,
   ID_ENVIO_B2C         INT4                 null,
   ID_USUARIO           INT4                 not null,
   ID_CONTRATO          INT4                 not null,
   FECHAHORA_ORDEN_COMPRA_B2C DATE                 not null,
   N_FACTURA_COMPRA_B2C INT4                 not null,
   SUBTOTAL_ORDEN_COMPRA_B2C DECIMAL(20,2)        not null,
   TOTAL_ORDEN_COMPRA_B2C DECIMAL(20,2)        not null,
   constraint PK_ORDEN_COMPRA_B2C primary key (ID_ORDEN_COMPRA_B2C)
);

/*==============================================================*/
/* Index: ORDEN_COMPRA_B2C_PK                                   */
/*==============================================================*/
create unique index ORDEN_COMPRA_B2C_PK on ORDEN_COMPRA_B2C (
ID_ORDEN_COMPRA_B2C
);

/*==============================================================*/
/* Index: SERA_ENTREGADO_FK                                     */
/*==============================================================*/
create  index SERA_ENTREGADO_FK on ORDEN_COMPRA_B2C (
ID_ENVIO_B2C
);

/*==============================================================*/
/* Index: QUIERE_COMPRAR_FK                                     */
/*==============================================================*/
create  index QUIERE_COMPRAR_FK on ORDEN_COMPRA_B2C (
ID_USUARIO
);

/*==============================================================*/
/* Index: ES_VENDEDOR_FK                                        */
/*==============================================================*/
create  index ES_VENDEDOR_FK on ORDEN_COMPRA_B2C (
ID_CONTRATO
);

/*==============================================================*/
/* Table: ORDEN_SUBASTA                                         */
/*==============================================================*/
create table ORDEN_SUBASTA (
   ID_ORDEN_SUBASTA       SERIAL               not null,
   ID_PENALIZACION      INT4                 null,
   ID_ADJUDICACION      INT4                 not null,
   FECHAHORA_ORDEN_SUBASTA DATE                 not null,
   N_FACTURA_SUBASTA    VARCHAR(30)          not null,
   TOTAL_ORDEN_SUBASTA  DECIMAL(20,2)        not null,
   constraint PK_ORDEN_SUBASTA primary key (ID_ORDEN_SUBASTA)
);

/*==============================================================*/
/* Index: ORDEN_SUBASTA_PK                                      */
/*==============================================================*/
create unique index ORDEN_SUBASTA_PK on ORDEN_SUBASTA (
ID_ORDEN_SUBASTA
);

/*==============================================================*/
/* Index: ES_PENALIZADO_FK                                      */
/*==============================================================*/
create  index ES_PENALIZADO_FK on ORDEN_SUBASTA (
ID_PENALIZACION
);

/*==============================================================*/
/* Index: GENERA2_FK                                            */
/*==============================================================*/
create  index GENERA2_FK on ORDEN_SUBASTA (
ID_ADJUDICACION
);

/*==============================================================*/
/* Table: PAGO_B2B                                              */
/*==============================================================*/
create table PAGO_B2B (
   CHE_ID_METODO_PAGO   INT4                 not null,
   ID_METODO_PAGO       INT4                 not null,
   ID_MONEDA            INT4                 not null,
   MONTO_PAGO_B2B       DECIMAL(20,2)        not null,
   FECHAHORA_PAGO_B2B   DATE                 not null,
   constraint PK_PAGO_B2B primary key (CHE_ID_METODO_PAGO, ID_METODO_PAGO)
);

/*==============================================================*/
/* Index: PAGO_B2B_PK                                           */
/*==============================================================*/
create unique index PAGO_B2B_PK on PAGO_B2B (
CHE_ID_METODO_PAGO,
ID_METODO_PAGO
);

/*==============================================================*/
/* Index: ES_SALDADO_FK                                         */
/*==============================================================*/
create  index ES_SALDADO_FK on PAGO_B2B (
CHE_ID_METODO_PAGO
);

/*==============================================================*/
/* Index: ES_ABONADO_FK                                         */
/*==============================================================*/
create  index ES_ABONADO_FK on PAGO_B2B (
ID_METODO_PAGO
);

/*==============================================================*/
/* Index: SE_REALIZA_EL_PAGO2_FK                                */
/*==============================================================*/
create  index SE_REALIZA_EL_PAGO2_FK on PAGO_B2B (
ID_MONEDA
);

/*==============================================================*/
/* Table: PAGO_B2C                                              */
/*==============================================================*/
create table PAGO_B2C (
   ID_ORDEN_COMPRA_B2C  INT4                 not null,
   PAY_ID_METODO_PAGO   INT4                 not null,
   ID_METODO_PAGO       INT4                 not null,
   TAR_ID_METODO_PAGO   INT4                 not null,
   TAR_ID_METODO_PAGO2  INT4                 not null,
   ID_MONEDA            INT4                 not null,
   MONTO_PAGO_B2C       DECIMAL(20,2)        not null,
   FECHAHORA_PAGO_B2C   DATE                 not null,
   constraint PK_PAGO_B2C primary key (ID_ORDEN_COMPRA_B2C, PAY_ID_METODO_PAGO, ID_METODO_PAGO, TAR_ID_METODO_PAGO, TAR_ID_METODO_PAGO2)
);

/*==============================================================*/
/* Index: PAGO_B2C_PK                                           */
/*==============================================================*/
create unique index PAGO_B2C_PK on PAGO_B2C (
ID_ORDEN_COMPRA_B2C,
PAY_ID_METODO_PAGO,
ID_METODO_PAGO,
TAR_ID_METODO_PAGO,
TAR_ID_METODO_PAGO2
);

/*==============================================================*/
/* Index: ES_CONCILIADO_FK                                      */
/*==============================================================*/
create  index ES_CONCILIADO_FK on PAGO_B2C (
ID_ORDEN_COMPRA_B2C
);

/*==============================================================*/
/* Index: SE_VA_PAGAR_FK                                        */
/*==============================================================*/
create  index SE_VA_PAGAR_FK on PAGO_B2C (
PAY_ID_METODO_PAGO
);

/*==============================================================*/
/* Index: SE_UTILIZARA_FK                                       */
/*==============================================================*/
create  index SE_UTILIZARA_FK on PAGO_B2C (
ID_METODO_PAGO
);

/*==============================================================*/
/* Index: SE_UTILIZA_FK                                         */
/*==============================================================*/
create  index SE_UTILIZA_FK on PAGO_B2C (
TAR_ID_METODO_PAGO
);

/*==============================================================*/
/* Index: SE_PAGARA_FK                                          */
/*==============================================================*/
create  index SE_PAGARA_FK on PAGO_B2C (
TAR_ID_METODO_PAGO2
);

/*==============================================================*/
/* Index: ES_PAGADO_MEDIANTE2_FK                                */
/*==============================================================*/
create  index ES_PAGADO_MEDIANTE2_FK on PAGO_B2C (
ID_MONEDA
);

/*==============================================================*/
/* Table: PAGO_MEMBRESIA                                        */
/*==============================================================*/
create table PAGO_MEMBRESIA (
   ID_USUARIO           INT4                 not null,
   TAR_ID_METODO_PAGO   INT4                 null,
   ID_METODO_PAGO       INT4                 null,
   ID_USUARIO_METODO_PAGO INT4                 not null,
   ID_MEMBRESIA         INT4                 not null,
   ID_PAGO_MEMBRESIA    SERIAL               not null,
   ID_ESTATUS_PAGO_MEMBRESIA INT4                 not null,
   ID_MONEDA            INT4                 not null,
   FECHA_PAGO_MEMBRESIA DATE                 not null,
   MONTO_PAGO_MEMBRESIA DECIMAL(20,2)        not null,
   constraint PK_PAGO_MEMBRESIA primary key (ID_PAGO_MEMBRESIA)
);

/*==============================================================*/
/* Index: PAGO_MEMBRESIA_PK                                     */
/*==============================================================*/
create unique index PAGO_MEMBRESIA_PK on PAGO_MEMBRESIA (
ID_PAGO_MEMBRESIA
);

/*==============================================================*/
/* Index: ES_REALIZADA_FK                                       */
/*==============================================================*/
create  index ES_REALIZADA_FK on PAGO_MEMBRESIA (
ID_USUARIO,
TAR_ID_METODO_PAGO,
ID_METODO_PAGO,
ID_USUARIO_METODO_PAGO
);

/*==============================================================*/
/* Index: SE_PAGA_FK                                            */
/*==============================================================*/
create  index SE_PAGA_FK on PAGO_MEMBRESIA (
ID_MEMBRESIA
);

/*==============================================================*/
/* Index: ES_CLASIFICADA_POR_FK                                 */
/*==============================================================*/
create  index ES_CLASIFICADA_POR_FK on PAGO_MEMBRESIA (
ID_ESTATUS_PAGO_MEMBRESIA
);

/*==============================================================*/
/* Index: SE_PAGA_MEDIANTE2_FK                                  */
/*==============================================================*/
create  index SE_PAGA_MEDIANTE2_FK on PAGO_MEMBRESIA (
ID_MONEDA
);

/*==============================================================*/
/* Table: PAGO_SUBASTA                                          */
/*==============================================================*/
create table PAGO_SUBASTA (
   ID_ORDEN_SUBASTA       INT4                 not null,
   ID_USUARIO           INT4                 not null,
   TAR_ID_METODO_PAGO   INT4                 null,
   ID_METODO_PAGO       INT4                 null,
   ID_USUARIO_METODO_PAGO INT4                 not null,
   ID_PAGO_SUBASTA      SERIAL               not null,
   ID_MONEDA            INT4                 not null,
   MONTO_PAGO           DECIMAL(20,2)        not null,
   FECHAHORA_PAGO       DATE                 not null,
   constraint PK_PAGO_SUBASTA primary key (ID_PAGO_SUBASTA)
);

/*==============================================================*/
/* Index: PAGO_SUBASTA_PK                                       */
/*==============================================================*/
create unique index PAGO_SUBASTA_PK on PAGO_SUBASTA (
ID_PAGO_SUBASTA
);

/*==============================================================*/
/* Index: ES_PAGADO_FK                                          */
/*==============================================================*/
create  index ES_PAGADO_FK on PAGO_SUBASTA (
ID_ORDEN_SUBASTA
);

/*==============================================================*/
/* Index: ES_VALIDA_FK                                          */
/*==============================================================*/
create  index ES_VALIDA_FK on PAGO_SUBASTA (
ID_USUARIO,
TAR_ID_METODO_PAGO,
ID_METODO_PAGO,
ID_USUARIO_METODO_PAGO
);

/*==============================================================*/
/* Index: ES_REALIZADO_EL_PAGO2_FK                              */
/*==============================================================*/
create  index ES_REALIZADO_EL_PAGO2_FK on PAGO_SUBASTA (
ID_MONEDA
);

/*==============================================================*/
/* Table: PAYPAL                                                */
/*==============================================================*/
create table PAYPAL (
   ID_METODO_PAGO       SERIAL               not null,
   ID_CORREO            INT4                 not null,
   constraint PK_PAYPAL primary key (ID_METODO_PAGO)
);

/*==============================================================*/
/* Index: PAYPAL_PK                                             */
/*==============================================================*/
create unique index PAYPAL_PK on PAYPAL (
ID_METODO_PAGO
);

/*==============================================================*/
/* Index: SE_USA2_FK                                            */
/*==============================================================*/
create  index SE_USA2_FK on PAYPAL (
ID_CORREO
);

/*==============================================================*/
/* Table: PENALIZACION                                          */
/*==============================================================*/
create table PENALIZACION (
   ID_PENALIZACION      SERIAL               not null,
   ID_ORDEN_SUBASTA       INT4                 not null,
   NOMBRE_PENALIZACION  VARCHAR(50)          not null,
   DESCRIPCION_PENALIZACION VARCHAR(200)         not null,
   ESTADO_PENALIZACION  VARCHAR(50)          not null,
   FECHA_PENALIZACION   DATE                 not null,
   constraint PK_PENALIZACION primary key (ID_PENALIZACION)
);

/*==============================================================*/
/* Index: PENALIZACION_PK                                       */
/*==============================================================*/
create unique index PENALIZACION_PK on PENALIZACION (
ID_PENALIZACION
);

/*==============================================================*/
/* Index: ES_PENALIZADO2_FK                                     */
/*==============================================================*/
create  index ES_PENALIZADO2_FK on PENALIZACION (
ID_ORDEN_SUBASTA
);

/*==============================================================*/
/* Table: PERSONA_JURIDICA                                      */
/*==============================================================*/
create table PERSONA_JURIDICA (
   ID_PERSONA_JURIDICA  SERIAL               not null,
   ID_LINEA_CREDITO     INT4                 null,
   ID_LUGAR             INT4                 not null,
   LUG_ID_LUGAR         INT4                 not null,
   RIF_PERSONA_JURIDICA VARCHAR(20)          not null unique,
   DIR_FISCAL_PERSONA_JURIDICA VARCHAR(200)         not null,
   RAZON_SOCIAL_PERSONA_JURIDICA VARCHAR(100)         not null,
   DIR_FISICA_PERSONA_JURIDICA VARCHAR(200)         not null,
   DENOM_COMERCIAL_PERJUR VARCHAR(200)         not null,
   constraint PK_PERSONA_JURIDICA primary key (ID_PERSONA_JURIDICA)
);

/*==============================================================*/
/* Index: PERSONA_JURIDICA_PK                                   */
/*==============================================================*/
create unique index PERSONA_JURIDICA_PK on PERSONA_JURIDICA (
ID_PERSONA_JURIDICA
);

/*==============================================================*/
/* Index: DIR_FISCAL_JURIDICA_FK                                */
/*==============================================================*/
create  index DIR_FISCAL_JURIDICA_FK on PERSONA_JURIDICA (
LUG_ID_LUGAR
);

/*==============================================================*/
/* Index: ES_ASIGNADO_FK                                        */
/*==============================================================*/
create  index ES_ASIGNADO_FK on PERSONA_JURIDICA (
ID_LINEA_CREDITO
);

/*==============================================================*/
/* Index: DIR_FISICA_JURIDICA_FK                                */
/*==============================================================*/
create  index DIR_FISICA_JURIDICA_FK on PERSONA_JURIDICA (
ID_LUGAR
);

/*==============================================================*/
/* Table: PIEZA                                                 */
/*==============================================================*/
create table PIEZA (
   ID_PIEZA             SERIAL               not null,
   NOMBRE_PIEZA         VARCHAR(50)          not null,
   DESCRIPCION_PIEZA    VARCHAR(200)         not null,
   constraint PK_PIEZA primary key (ID_PIEZA)
);

/*==============================================================*/
/* Index: PIEZA_PK                                              */
/*==============================================================*/
create unique index PIEZA_PK on PIEZA (
ID_PIEZA
);

/*==============================================================*/
/* Table: PRIVILEGIO                                            */
/*==============================================================*/
create table PRIVILEGIO (
   ID_PRIVILEGIO        SERIAL               not null,
   DESCRIPCION_PRIVILEGIO VARCHAR(300)         not null,
   constraint PK_PRIVILEGIO primary key (ID_PRIVILEGIO)
);

/*==============================================================*/
/* Index: PRIVILEGIO_PK                                         */
/*==============================================================*/
create unique index PRIVILEGIO_PK on PRIVILEGIO (
ID_PRIVILEGIO
);

/*==============================================================*/
/* Table: PRODUCTO                                              */
/*==============================================================*/
create table PRODUCTO (
   ID_PIEZA             INT4                 not null,
   ID_MOLDE             INT4                 not null,
   ID_MATERIAPRIMA      INT4                 not null,
   BAS_ID_BASEDISENO    INT4                 not null,
   ID_BASEDISENO        INT4                 not null,
   ID_PRODUCTO          SERIAL               not null,
   CAT_ID_BASEDISENO    INT4                 not null,
   ID_CATEGORIA         INT4                 not null,
   BAS_ID_BASEDISENO2   INT4                 not null,
   ID_SET_REGALO        INT4                 not null,
   CLA_ID_BASEDISENO    INT4                 not null,
   ID_CLASIFICACION     INT4                 not null,
   CAR_ID_BASEDISENO    INT4                 not null,
   ID_CARACTERISTICA    INT4                 not null,
   ID_PROFESION         INT4                 not null,
   PRO_ID_BASEDISENO    INT4                 not null,
   CONDICION_PRODUCTO   VARCHAR(100)         not null,
   constraint PK_PRODUCTO primary key (ID_PIEZA, ID_MOLDE, ID_MATERIAPRIMA, BAS_ID_BASEDISENO, ID_BASEDISENO, ID_PRODUCTO)
);

/*==============================================================*/
/* Index: PRODUCTO_PK                                           */
/*==============================================================*/
create unique index PRODUCTO_PK on PRODUCTO (
ID_PIEZA,
ID_MOLDE,
ID_MATERIAPRIMA,
BAS_ID_BASEDISENO,
ID_BASEDISENO,
ID_PRODUCTO
);

/*==============================================================*/
/* Index: SE_CREARA_FK                                          */
/*==============================================================*/
create  index SE_CREARA_FK on PRODUCTO (
ID_PIEZA,
ID_MOLDE,
ID_MATERIAPRIMA,
BAS_ID_BASEDISENO
);

/*==============================================================*/
/* Index: SE_CATEGORIZA_FK                                      */
/*==============================================================*/
create  index SE_CATEGORIZA_FK on PRODUCTO (
CAT_ID_BASEDISENO,
ID_CATEGORIA
);

/*==============================================================*/
/* Index: SE_AGRUPARA_FK                                        */
/*==============================================================*/
create  index SE_AGRUPARA_FK on PRODUCTO (
BAS_ID_BASEDISENO2,
ID_SET_REGALO
);

/*==============================================================*/
/* Index: SE_CLASIFICA_FK                                       */
/*==============================================================*/
create  index SE_CLASIFICA_FK on PRODUCTO (
CLA_ID_BASEDISENO,
ID_CLASIFICACION
);

/*==============================================================*/
/* Index: EJERCE_FK                                             */
/*==============================================================*/
create  index EJERCE_FK on PRODUCTO (
ID_PROFESION,
PRO_ID_BASEDISENO
);

/*==============================================================*/
/* Index: SE_CARACTERIZA_FK                                     */
/*==============================================================*/
create  index SE_CARACTERIZA_FK on PRODUCTO (
CAR_ID_BASEDISENO,
ID_CARACTERISTICA
);

/*==============================================================*/
/* Index: SE_DISENA_FK                                          */
/*==============================================================*/
create  index SE_DISENA_FK on PRODUCTO (
ID_BASEDISENO
);

/*==============================================================*/
/* Table: PROFESION                                             */
/*==============================================================*/
create table PROFESION (
   ID_PROFESION         SERIAL               not null,
   NOMBRE_PROFESION     VARCHAR(50)          not null,
   DESCRIPCION_PROFESION VARCHAR(200)         not null,
   constraint PK_PROFESION primary key (ID_PROFESION)
);

/*==============================================================*/
/* Index: PROFESION_PK                                          */
/*==============================================================*/
create unique index PROFESION_PK on PROFESION (
ID_PROFESION
);

/*==============================================================*/
/* Table: PROFESION_BASEDISENO                                  */
/*==============================================================*/
create table PROFESION_BASEDISENO (
   ID_PROFESION         INT4                 not null,
   ID_BASEDISENO        INT4                 not null,
   constraint PK_PROFESION_BASEDISENO primary key (ID_PROFESION, ID_BASEDISENO)
);

/*==============================================================*/
/* Index: PROFESION_BASEDISENO_PK                               */
/*==============================================================*/
create unique index PROFESION_BASEDISENO_PK on PROFESION_BASEDISENO (
ID_PROFESION,
ID_BASEDISENO
);

/*==============================================================*/
/* Index: SE_EJERCE_FK                                          */
/*==============================================================*/
create  index SE_EJERCE_FK on PROFESION_BASEDISENO (
ID_PROFESION
);

/*==============================================================*/
/* Index: EJERCIDA_FK                                           */
/*==============================================================*/
create  index EJERCIDA_FK on PROFESION_BASEDISENO (
ID_BASEDISENO
);

/*==============================================================*/
/* Table: PRUEBA                                                */
/*==============================================================*/
create table PRUEBA (
   ID_PRUEBA            SERIAL               not null,
   NOMBRE_PRUEBA        VARCHAR(50)          not null,
   DESCRIPCION_PRUEBA   VARCHAR(200)         not null,
   constraint PK_PRUEBA primary key (ID_PRUEBA)
);

/*==============================================================*/
/* Index: PRUEBA_PK                                             */
/*==============================================================*/
create unique index PRUEBA_PK on PRUEBA (
ID_PRUEBA
);

/*==============================================================*/
/* Table: PUJA                                                  */
/*==============================================================*/
create table PUJA (
   ID_PUJA              SERIAL               not null,
   ID_ADJUDICACION      INT4                 null,
   ID_MONEDA            INT4                 not null,
   ID_ESTATUS_PUJA      INT4                 not null,
   ID_USUARIO           INT4                 not null,
   ID_SUBASTA           INT4                 not null,
   MONTO_PUJA           DECIMAL(20,2)        not null,
   FECHAHORA_OFERTADA_PUJA DATE                 not null,
   constraint PK_PUJA primary key (ID_PUJA)
);

/*==============================================================*/
/* Index: PUJA_PK                                               */
/*==============================================================*/
create unique index PUJA_PK on PUJA (
ID_PUJA
);

/*==============================================================*/
/* Index: OFERTAN_FK                                            */
/*==============================================================*/
create  index OFERTAN_FK on PUJA (
ID_SUBASTA
);

/*==============================================================*/
/* Index: ES_GANADOR_FK                                         */
/*==============================================================*/
create  index ES_GANADOR_FK on PUJA (
ID_ADJUDICACION
);

/*==============================================================*/
/* Index: OFERTA_FK                                             */
/*==============================================================*/
create  index OFERTA_FK on PUJA (
ID_USUARIO
);

/*==============================================================*/
/* Index: SE_REALIZA_FK                                         */
/*==============================================================*/
create  index SE_REALIZA_FK on PUJA (
ID_ESTATUS_PUJA
);

/*==============================================================*/
/* Index: NECESITA_FK                                           */
/*==============================================================*/
create  index NECESITA_FK on PUJA (
ID_MONEDA
);

/*==============================================================*/
/* Table: ROL                                                   */
/*==============================================================*/
create table ROL (
   ID_ROL               SERIAL               not null,
   NOMBRE_ROL           VARCHAR(50)          not null,
   DESCRIPCION_ROL      VARCHAR(300)         null,
   constraint PK_ROL primary key (ID_ROL)
);

/*==============================================================*/
/* Index: ROL_PK                                                */
/*==============================================================*/
create unique index ROL_PK on ROL (
ID_ROL
);

/*==============================================================*/
/* Table: ROL_PRIVILEGIO                                        */
/*==============================================================*/
create table ROL_PRIVILEGIO (
   ID_PRIVILEGIO        INT4                 not null,
   ID_ROL               INT4                 not null,
   constraint PK_ROL_PRIVILEGIO primary key (ID_PRIVILEGIO, ID_ROL)
);

/*==============================================================*/
/* Index: ROL_PRIVILEGIO_PK                                     */
/*==============================================================*/
create unique index ROL_PRIVILEGIO_PK on ROL_PRIVILEGIO (
ID_PRIVILEGIO,
ID_ROL
);

/*==============================================================*/
/* Index: HACE_USO_FK                                           */
/*==============================================================*/
create  index HACE_USO_FK on ROL_PRIVILEGIO (
ID_PRIVILEGIO
);

/*==============================================================*/
/* Index: USA_FK                                                */
/*==============================================================*/
create  index USA_FK on ROL_PRIVILEGIO (
ID_ROL
);

/*==============================================================*/
/* Table: SEDE                                                  */
/*==============================================================*/
create table SEDE (
   ID_SEDE              SERIAL               not null,
   ID_LUGAR             INT4                 not null,
   NOMBRE_SEDE          VARCHAR(50)          not null,
   DIRECCION_SEDE       VARCHAR(200)         not null,
   constraint PK_SEDE primary key (ID_SEDE)
);

/*==============================================================*/
/* Index: SEDE_PK                                               */
/*==============================================================*/
create unique index SEDE_PK on SEDE (
ID_SEDE
);

/*==============================================================*/
/* Index: ESTA_UBICADA_FK                                       */
/*==============================================================*/
create  index ESTA_UBICADA_FK on SEDE (
ID_LUGAR
);

/*==============================================================*/
/* Table: SET_REGALO                                            */
/*==============================================================*/
create table SET_REGALO (
   ID_SET_REGALO        SERIAL               not null,
   NOMBRE_SET_REGALO    VARCHAR(50)          not null,
   constraint PK_SET_REGALO primary key (ID_SET_REGALO)
);

/*==============================================================*/
/* Index: SET_REGALO_PK                                         */
/*==============================================================*/
create unique index SET_REGALO_PK on SET_REGALO (
ID_SET_REGALO
);

/*==============================================================*/
/* Table: SUBASTA                                               */
/*==============================================================*/
create table SUBASTA (
   ID_SUBASTA           SERIAL               not null,
   ID_PIEZA             INT4                 not null,
   ID_MOLDE             INT4                 not null,
   ID_SEDE              INT4                 not null,
   ID_MATERIAPRIMA      INT4                 not null,
   BAS_ID_BASEDISENO    INT4                 not null,
   ID_BASEDISENO        INT4                 not null,
   ID_PRODUCTO          INT4                 not null,
   NOMBRE_SUBASTA       VARCHAR(50)          not null,
   FECHAHORA_INICIO_SUBASTA DATE                 not null,
   FECHAHORA_FIN_SUBASTA DATE                 not null,
   PRECIO_BASE_SUBASTA  DECIMAL(20,2)        not null,
   INCREMENTO_MINIMO_SUBASTA DECIMAL(20,2)        not null,
   constraint PK_SUBASTA primary key (ID_SUBASTA)
);

/*==============================================================*/
/* Index: SUBASTA_PK                                            */
/*==============================================================*/
create unique index SUBASTA_PK on SUBASTA (
ID_SUBASTA
);

/*==============================================================*/
/* Index: SE_SUBASTA2_FK                                        */
/*==============================================================*/
create  index SE_SUBASTA2_FK on SUBASTA (
ID_PIEZA,
ID_MOLDE,
ID_SEDE,
ID_MATERIAPRIMA,
BAS_ID_BASEDISENO,
ID_BASEDISENO,
ID_PRODUCTO
);

/*==============================================================*/
/* Table: TABULADOR_SALARIAL                                    */
/*==============================================================*/
create table TABULADOR_SALARIAL (
   ID_TABULADOR_SALARIAL  SERIAL               not null,
   SUELDO_MENSUAL       DECIMAL(20,2)        not null,
   SUELDO_HORA          DECIMAL(20,2)        not null,
   constraint PK_TABULADOR_SALARIAL primary key (ID_TABULADOR_SALARIAL)
);

/*==============================================================*/
/* Index: TABULADOR_SALARIAL_PK                                 */
/*==============================================================*/
create unique index TABULADOR_SALARIAL_PK on TABULADOR_SALARIAL (
ID_TABULADOR_SALARIAL
);

/*==============================================================*/
/* Table: TARJETA_CREDITO                                       */
/*==============================================================*/
create table TARJETA_CREDITO (
   ID_METODO_PAGO       SERIAL               not null,
   ID_BANCO             INT4                 not null,
   NUMERO_TARJETA_TCREDITO VARCHAR(16)          not null,
   CVV_TARJETA_CREDITO  VARCHAR(3)           not null,
   FECHAVENC_TARJETA_CREDITO DATE                 not null,
   TARJETAHABIENTE_CREDITO VARCHAR(100)         not null,
   constraint PK_TARJETA_CREDITO primary key (ID_METODO_PAGO)
);

/*==============================================================*/
/* Index: TARJETA_CREDITO_PK                                    */
/*==============================================================*/
create unique index TARJETA_CREDITO_PK on TARJETA_CREDITO (
ID_METODO_PAGO
);

/*==============================================================*/
/* Index: EMITE_FK                                              */
/*==============================================================*/
create  index EMITE_FK on TARJETA_CREDITO (
ID_BANCO
);

/*==============================================================*/
/* Table: TARJETA_DEBITO                                        */
/*==============================================================*/
create table TARJETA_DEBITO (
   ID_METODO_PAGO       SERIAL               not null,
   ID_BANCO             INT4                 not null,
   NUMERO_TARJETA_DEBITO VARCHAR(16)          not null,
   CVV_TARJETA_DEBITO   VARCHAR(3)           not null,
   FECHAVENC_TARJETA_DEBITO DATE                 not null,
   TARJETAHABIENTE_DEBITO VARCHAR(100)         not null,
   constraint PK_TARJETA_DEBITO primary key (ID_METODO_PAGO)
);

/*==============================================================*/
/* Index: TARJETA_DEBITO_PK                                     */
/*==============================================================*/
create unique index TARJETA_DEBITO_PK on TARJETA_DEBITO (
ID_METODO_PAGO
);

/*==============================================================*/
/* Index: ES_EMITIDO_FK                                         */
/*==============================================================*/
create  index ES_EMITIDO_FK on TARJETA_DEBITO (
ID_BANCO
);

/*==============================================================*/
/* Table: TASA_CAMBIO                                           */
/*==============================================================*/
create table TASA_CAMBIO (
   ID_TASA_CAMBIO       SERIAL               not null,
   ID_MONEDA            INT4                 not null,
   VALOR_USD_TASA       DECIMAL(20,2)        not null,
   FECHA_EFECTIVA       DATE                 not null,
   FECHAFIN_PRECIO      DATE                 null,
   constraint PK_TASA_CAMBIO primary key (ID_TASA_CAMBIO)
);

/*==============================================================*/
/* Index: TASA_CAMBIO_PK                                        */
/*==============================================================*/
create unique index TASA_CAMBIO_PK on TASA_CAMBIO (
ID_TASA_CAMBIO
);

/*==============================================================*/
/* Index: SE_JUSTIFICA_FK                                       */
/*==============================================================*/
create  index SE_JUSTIFICA_FK on TASA_CAMBIO (
ID_MONEDA
);

/*==============================================================*/
/* Table: TELEFONO                                              */
/*==============================================================*/
create table TELEFONO (
   ID_TELEFONO          SERIAL               not null,
   ID_PERSONA_JURIDICA  INT4                 null,
   ID_PERSONA_NATURAL   INT4                 null,
   PER_ID_PERSONA_NATURAL INT4                 null,
   CODIGO_AREA_TELEFONO VARCHAR(5)           not null,
   NUMERO_TELEFONO      VARCHAR(9)           not null,
   constraint PK_TELEFONO primary key (ID_TELEFONO)
);

/*==============================================================*/
/* Index: TELEFONO_PK                                           */
/*==============================================================*/
create unique index TELEFONO_PK on TELEFONO (
ID_TELEFONO
);

/*==============================================================*/
/* Index: CUENTA_CON_FK                                         */
/*==============================================================*/
create  index CUENTA_CON_FK on TELEFONO (
ID_PERSONA_JURIDICA
);

/*==============================================================*/
/* Index: ADMINISTRA2_FK                                        */
/*==============================================================*/
create  index ADMINISTRA2_FK on TELEFONO (
ID_PERSONA_NATURAL
);

/*==============================================================*/
/* Index: ADMINISTRA_FK                                         */
/*==============================================================*/
create  index ADMINISTRA_FK on TELEFONO (
PER_ID_PERSONA_NATURAL
);

/*==============================================================*/
/* Table: TIPO_CRIPTOMONEDA                                     */
/*==============================================================*/
create table TIPO_CRIPTOMONEDA (
   ID_TIPO_CRIPTOMONEDA SERIAL               not null,
   RED_BLOCKCHAIN       VARCHAR(30)          not null,
   constraint PK_TIPO_CRIPTOMONEDA primary key (ID_TIPO_CRIPTOMONEDA)
);

/*==============================================================*/
/* Index: TIPO_CRIPTOMONEDA_PK                                  */
/*==============================================================*/
create unique index TIPO_CRIPTOMONEDA_PK on TIPO_CRIPTOMONEDA (
ID_TIPO_CRIPTOMONEDA
);

/*==============================================================*/
/* Table: TIPO_CUERPO                                           */
/*==============================================================*/
create table TIPO_CUERPO (
   ID_TIPO_CUERPO       SERIAL               not null,
   NOMBRE_TIPO_CUERPO   VARCHAR(50)          not null,
   DESCRIPCION_TIPO_CUERPO VARCHAR(200)         not null,
   constraint PK_TIPO_CUERPO primary key (ID_TIPO_CUERPO)
);

/*==============================================================*/
/* Index: TIPO_CUERPO_PK                                        */
/*==============================================================*/
create unique index TIPO_CUERPO_PK on TIPO_CUERPO (
ID_TIPO_CUERPO
);

/*==============================================================*/
/* Table: TIPO_TRANSPORTE                                       */
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
/* Table: TONO_PIEL                                             */
/*==============================================================*/
create table TONO_PIEL (
   ID_TONO_PIEL         SERIAL               not null,
   ID_COLOR             INT4                 not null,
   NOMBRE_TONO_PIEL     VARCHAR(50)          not null,
   constraint PK_TONO_PIEL primary key (ID_TONO_PIEL)
);

/*==============================================================*/
/* Index: TONO_PIEL_PK                                          */
/*==============================================================*/
create unique index TONO_PIEL_PK on TONO_PIEL (
ID_TONO_PIEL
);

/*==============================================================*/
/* Index: SE_TINTA_FK                                           */
/*==============================================================*/
create  index SE_TINTA_FK on TONO_PIEL (
ID_COLOR
);

/*==============================================================*/
/* Table: TRANSFERENCIA_BANCARIA                                */
/*==============================================================*/
create table TRANSFERENCIA_BANCARIA (
   ID_METODO_PAGO       SERIAL               not null,
   ID_BANCO             INT4                 not null,
   constraint PK_TRANSFERENCIA_BANCARIA primary key (ID_METODO_PAGO)
);

/*==============================================================*/
/* Index: TRANSFERENCIA_BANCARIA_PK                             */
/*==============================================================*/
create unique index TRANSFERENCIA_BANCARIA_PK on TRANSFERENCIA_BANCARIA (
ID_METODO_PAGO
);

/*==============================================================*/
/* Index: ES_TRANSFERIDO_FK                                     */
/*==============================================================*/
create  index ES_TRANSFERIDO_FK on TRANSFERENCIA_BANCARIA (
ID_BANCO
);

/*==============================================================*/
/* Table: TRANSPORTE                                            */
/*==============================================================*/
create table TRANSPORTE (
   ID_TRANSPORTE        SERIAL               not null,
   ID_TIPO_TRANSPORTE   INT4                 not null,
   NOMBRE_TRANSPORTE    VARCHAR(50)          not null,
   constraint PK_TRANSPORTE primary key (ID_TRANSPORTE)
);

/*==============================================================*/
/* Index: TRANSPORTE_PK                                         */
/*==============================================================*/
create unique index TRANSPORTE_PK on TRANSPORTE (
ID_TRANSPORTE
);

/*==============================================================*/
/* Index: SE_IDENTIFICA_POR_FK                                  */
/*==============================================================*/
create  index SE_IDENTIFICA_POR_FK on TRANSPORTE (
ID_TIPO_TRANSPORTE
);

/*==============================================================*/
/* Table: USUARIO                                               */
/*==============================================================*/
create table USUARIO (
   ID_USUARIO           SERIAL               not null,
   /* Las 3 FKs de actor son nullable: un usuario representa UN solo tipo de actor
      (persona juridica, empleado o cliente b2c). El CHECK CKC_USUARIO_TIPO_ACTOR
      garantiza que exactamente una este presente. Antes eran las 3 NOT NULL, lo que
      obligaba a que cada usuario fuera empresa + empleado + cliente a la vez. */
   ID_PERSONA_JURIDICA  INT4                 null,
   ID_ROL               INT4                 not null,
   ID_PERSONA_NATURAL   INT4                 null,
   PER_ID_PERSONA_NATURAL INT4                 null,
   NOMBRE_USUARIO       VARCHAR(50)          not null,
   CONTRASENA_USUARIO   VARCHAR(50)          not null,
   constraint CKC_USUARIO_TIPO_ACTOR check (
      (case when ID_PERSONA_JURIDICA    is not null then 1 else 0 end) +
      (case when ID_PERSONA_NATURAL     is not null then 1 else 0 end) +
      (case when PER_ID_PERSONA_NATURAL is not null then 1 else 0 end) = 1 ),
   constraint PK_USUARIO primary key (ID_USUARIO)
);

/*==============================================================*/
/* Index: USUARIO_PK                                            */
/*==============================================================*/
create unique index USUARIO_PK on USUARIO (
ID_USUARIO
);

/*==============================================================*/
/* Index: SE_LE_ASIGNA_FK                                       */
/*==============================================================*/
create  index SE_LE_ASIGNA_FK on USUARIO (
ID_ROL
);

/*==============================================================*/
/* Index: SE_CREA_FK                                            */
/*==============================================================*/
create  index SE_CREA_FK on USUARIO (
ID_PERSONA_JURIDICA
);

/*==============================================================*/
/* Index: CREA2_FK                                              */
/*==============================================================*/
create  index CREA2_FK on USUARIO (
ID_PERSONA_NATURAL
);

/*==============================================================*/
/* Index: CREA_FK                                               */
/*==============================================================*/
create  index CREA_FK on USUARIO (
PER_ID_PERSONA_NATURAL
);

/*==============================================================*/
/* Table: USUARIO_METODO_PAGO                                   */
/*==============================================================*/
create table USUARIO_METODO_PAGO (
   ID_USUARIO           INT4                 not null,
   /* TAR_ID_METODO_PAGO (->TARJETA_CREDITO) e ID_METODO_PAGO (->TARJETA_DEBITO) son
      nullable: un metodo de pago del usuario es de UN tipo (credito o debito), no ambos.
      El CHECK CKC_UMP_TIENE_METODO exige al menos uno. Antes ambos eran NOT NULL y parte
      del PK, obligando a tener tarjeta de credito Y debito en cada fila. El PK pasa a ser
      el surrogate ID_USUARIO_METODO_PAGO (SERIAL, ya unico). */
   TAR_ID_METODO_PAGO   INT4                 null,
   ID_METODO_PAGO       INT4                 null,
   ID_USUARIO_METODO_PAGO SERIAL               not null,
   ES_VALIDADO          BOOL                 not null,
   FECHA_REGISTRO       DATE                 not null,
   constraint CKC_UMP_TIENE_METODO check (
      TAR_ID_METODO_PAGO is not null or ID_METODO_PAGO is not null ),
   constraint PK_USUARIO_METODO_PAGO primary key (ID_USUARIO_METODO_PAGO)
);

/*==============================================================*/
/* Index: USUARIO_METODO_PAGO_PK                                */
/*==============================================================*/
create unique index USUARIO_METODO_PAGO_PK on USUARIO_METODO_PAGO (
ID_USUARIO_METODO_PAGO
);

/*==============================================================*/
/* Index: REGISTRA_FK                                           */
/*==============================================================*/
create  index REGISTRA_FK on USUARIO_METODO_PAGO (
ID_USUARIO
);

/*==============================================================*/
/* Index: PERTENECE_A_FK                                        */
/*==============================================================*/
create  index PERTENECE_A_FK on USUARIO_METODO_PAGO (
TAR_ID_METODO_PAGO
);

/*==============================================================*/
/* Index: ES_VALIDADA_FK                                        */
/*==============================================================*/
create  index ES_VALIDADA_FK on USUARIO_METODO_PAGO (
ID_METODO_PAGO
);
