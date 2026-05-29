alter table ADJUDICACION
   add constraint FK_ADJUDICA_ES_GANADO_PUJA foreign key (ID_PUJA)
      references PUJA (ID_PUJA)
      on delete restrict on update restrict;

alter table ADJUDICACION
   add constraint FK_ADJUDICA_GENERA_ORDEN_SU foreign key (ID_ORDEN_VENTA)
      references ORDEN_SUBASTA (ID_ORDEN_VENTA)
      on delete restrict on update restrict;

alter table ASISTENCIA
   add constraint FK_ASISTENC_ASISTE_CONTRATO foreign key (ID_CONTRATO)
      references CONTRATO_PERSONAL (ID_CONTRATO)
      on delete restrict on update restrict;

alter table BACKORDER
   add constraint FK_BACKORDE_SERA_PAGA_DETALLE_ foreign key (ID_PIEZA, ID_MOLDE, ID_MATERIAPRIMA, BAS_ID_BASEDISENO, ID_BASEDISENO, ID_PRODUCTO, ID_ORDEN_COMPRA_B2B)
      references DETALLE_ORDEN_B2B (ID_PIEZA, ID_MOLDE, ID_MATERIAPRIMA, BAS_ID_BASEDISENO, ID_BASEDISENO, ID_PRODUCTO, ID_ORDEN_COMPRA_B2B)
      on delete restrict on update restrict;

alter table BASEDISENO_PRUEBA
   add constraint FK_BASEDISE_ES_PROBAD_BASE_DIS foreign key (ID_BASEDISENO)
      references BASE_DISENO (ID_BASEDISENO)
      on delete restrict on update restrict;

alter table BASEDISENO_PRUEBA
   add constraint FK_BASEDISE_PRUEBA_PUEBRA foreign key (ID_PRUEBA)
      references PUEBRA (ID_PRUEBA)
      on delete restrict on update restrict;

alter table BASEDISENO_SETREGALO
   add constraint FK_BASEDISE_AGRUPA_SET_REGA foreign key (ID_SET_REGALO)
      references SET_REGALO (ID_SET_REGALO)
      on delete restrict on update restrict;

alter table BASEDISENO_SETREGALO
   add constraint FK_BASEDISE_SE_AGRUPA_BASE_DIS foreign key (ID_BASEDISENO)
      references BASE_DISENO (ID_BASEDISENO)
      on delete restrict on update restrict;

alter table BASE_DISENO
   add constraint FK_BASE_DIS_ES_PARTE__COLECCIO foreign key (ID_COLECCION)
      references COLECCION (ID_COLECCION)
      on delete restrict on update restrict;

alter table BASE_DISENO
   add constraint FK_BASE_DIS_PERTENECE_ERA foreign key (ID_ERA)
      references ERA (ID_ERA)
      on delete restrict on update restrict;

alter table BASE_DISENO
   add constraint FK_BASE_DIS_RELACIONA_BASE_DIS foreign key (BAS_ID_BASEDISENO)
      references BASE_DISENO (ID_BASEDISENO)
      on delete restrict on update restrict;

alter table BASE_DISENO
   add constraint FK_BASE_DIS_SE_DEFINE_COLOR_OJ foreign key (ID_COLOR_OJO)
      references COLOR_OJO (ID_COLOR_OJO)
      on delete restrict on update restrict;

alter table BASE_DISENO
   add constraint FK_BASE_DIS_SE_MOLDEA_TIPO_CUE foreign key (ID_TIPO_CUERPO)
      references TIPO_CUERPO (ID_TIPO_CUERPO)
      on delete restrict on update restrict;

alter table BASE_DISENO
   add constraint FK_BASE_DIS_TIENE_ASI_TONO_PIE foreign key (ID_TONO_PIEL)
      references TONO_PIEL (ID_TONO_PIEL)
      on delete restrict on update restrict;

alter table BASE_DISENO_CONSTRUCCION
   add constraint FK_BASE_DIS_CONFORMA_PIEZA foreign key (ID_PIEZA)
      references PIEZA (ID_PIEZA)
      on delete restrict on update restrict;

alter table BASE_DISENO_CONSTRUCCION
   add constraint FK_BASE_DIS_CONSTRUYE_MATERIAP foreign key (ID_MATERIAPRIMA)
      references MATERIAPRIMA (ID_MATERIAPRIMA)
      on delete restrict on update restrict;

alter table BASE_DISENO_CONSTRUCCION
   add constraint FK_BASE_DIS_MOLDEARA_MOLDE foreign key (ID_MOLDE)
      references MOLDE (ID_MOLDE)
      on delete restrict on update restrict;

alter table BASE_DISENO_CONSTRUCCION
   add constraint FK_BASE_DIS_SE_CONFOR_BASE_DIS foreign key (ID_BASEDISENO)
      references BASE_DISENO (ID_BASEDISENO)
      on delete restrict on update restrict;

alter table CARACTERISTICA_BASEDISENO
   add constraint FK_CARACTER_CARACTERI_CARACTER foreign key (ID_CARACTERISTICA)
      references CARACTERISTICA (ID_CARACTERISTICA)
      on delete restrict on update restrict;

alter table CARACTERISTICA_BASEDISENO
   add constraint FK_CARACTER_ES_CARACT_BASE_DIS foreign key (ID_BASEDISENO)
      references BASE_DISENO (ID_BASEDISENO)
      on delete restrict on update restrict;

alter table CARGO
   add constraint FK_CARGO_ES_ASIGNA_TABULADO foreign key (ID_TABULAR_SALARIAL)
      references TABULADOR_SALARIAL (ID_TABULAR_SALARIAL)
      on delete restrict on update restrict;

alter table CARGO
   add constraint FK_CARGO_TRABAJA_DEPARTAM foreign key (ID_DEPARTAMENTO)
      references DEPARTAMENTO (ID_DEPARTAMENTO)
      on delete restrict on update restrict;

alter table CATEGORIA
   add constraint FK_CATEGORI_SE_DIVIDE_CATEGORI foreign key (CAT_ID_CATEGORIA)
      references CATEGORIA (ID_CATEGORIA)
      on delete restrict on update restrict;

alter table CATEGORIA_BASEDISENO
   add constraint FK_CATEGORI_SE_RELACI_CATEGORI foreign key (ID_CATEGORIA)
      references CATEGORIA (ID_CATEGORIA)
      on delete restrict on update restrict;

alter table CATEGORIA_BASEDISENO
   add constraint FK_CATEGORI_SE_VINCUL_BASE_DIS foreign key (ID_BASEDISENO)
      references BASE_DISENO (ID_BASEDISENO)
      on delete restrict on update restrict;

alter table CATEGORIA_CATEGORIA
   add constraint FK_CATEGORI_ES_VINCUL_CATEGORI foreign key (CAT_ID_CATEGORIA)
      references CATEGORIA (ID_CATEGORIA)
      on delete restrict on update restrict;

alter table CATEGORIA_CATEGORIA
   add constraint FK_CATEGORI_VINCULA_CATEGORI foreign key (ID_CATEGORIA)
      references CATEGORIA (ID_CATEGORIA)
      on delete restrict on update restrict;

alter table CHEQUE
   add constraint FK_CHEQUE_ES_EXPEDI_BANCO foreign key (ID_BANCO)
      references BANCO (ID_BANCO)
      on delete restrict on update restrict;

alter table CLASIFICACION_BASEDISENO
   add constraint FK_CLASIFIC_CLASIFICA_CLASIFIC foreign key (ID_CLASIFICACION)
      references CLASIFICACION (ID_CLASIFICACION)
      on delete restrict on update restrict;

alter table CLASIFICACION_BASEDISENO
   add constraint FK_CLASIFIC_ES_CLASIF_BASE_DIS foreign key (ID_BASEDISENO)
      references BASE_DISENO (ID_BASEDISENO)
      on delete restrict on update restrict;

alter table CLIENTE_B2C
   add constraint FK_CLIENTE__DIRECCION_LUGAR foreign key (ID_LUGAR)
      references LUGAR (ID_LUGAR)
      on delete restrict on update restrict;

alter table COLECCION
   add constraint FK_COLECCIO_ES_PARTE__BASE_DIS foreign key (ID_BASEDISENO)
      references BASE_DISENO (ID_BASEDISENO)
      on delete restrict on update restrict;

alter table COLOR_OJO
   add constraint FK_COLOR_OJ_SE_EXPRES_COLOR foreign key (ID_COLOR)
      references COLOR (ID_COLOR)
      on delete restrict on update restrict;

alter table CONTRATO_BENEFICIO
   add constraint FK_CONTRATO_ES_GOZADO_BENEFICI foreign key (ID_BENEFICIO)
      references BENEFICIO (ID_BENEFICIO)
      on delete restrict on update restrict;

alter table CONTRATO_BENEFICIO
   add constraint FK_CONTRATO_GOZA_CONTRATO foreign key (ID_CONTRATO)
      references CONTRATO_PERSONAL (ID_CONTRATO)
      on delete restrict on update restrict;

alter table CONTRATO_CARGO
   add constraint FK_CONTRATO_ES_ENCARG_CARGO foreign key (ID_CARGO)
      references CARGO (ID_CARGO)
      on delete restrict on update restrict;

alter table CONTRATO_CARGO
   add constraint FK_CONTRATO_SE_ENCARG_CONTRATO foreign key (ID_CONTRATO)
      references CONTRATO_PERSONAL (ID_CONTRATO)
      on delete restrict on update restrict;

alter table CONTRATO_HORARIO
   add constraint FK_CONTRATO_CUMPLE_CONTRATO foreign key (ID_CONTRATO)
      references CONTRATO_PERSONAL (ID_CONTRATO)
      on delete restrict on update restrict;

alter table CONTRATO_HORARIO
   add constraint FK_CONTRATO_SE_ORGANI_HORARIO foreign key (ID_HORARIO)
      references HORARIO (ID_HORARIO)
      on delete restrict on update restrict;

alter table CONTRATO_PERSONAL
   add constraint FK_CONTRATO_LO_CONTRA_EMPLEADO foreign key (ID_PERSONA_NATURAL)
      references EMPLEADO (ID_PERSONA_NATURAL)
      on delete restrict on update restrict;

alter table CONTRATO_PERSONAL
   add constraint FK_CONTRATO_SE_ESTABL_META_MEN foreign key (ID_META_MENSUAL)
      references META_MENSUAL (ID_META_MENSUAL)
      on delete restrict on update restrict;

alter table CORREO
   add constraint FK_CORREO_COORDINA_PERSONA_ foreign key (ID_PERSONA_JURIDICA)
      references PERSONA_JURIDICA (ID_PERSONA_JURIDICA)
      on delete restrict on update restrict;

alter table CORREO
   add constraint FK_CORREO_POSEE_CLIENTE_ foreign key (PER_ID_PERSONA_NATURAL)
      references CLIENTE_B2C (ID_PERSONA_NATURAL)
      on delete restrict on update restrict;

alter table CORREO
   add constraint FK_CORREO_POSEE2_EMPLEADO foreign key (ID_PERSONA_NATURAL)
      references EMPLEADO (ID_PERSONA_NATURAL)
      on delete restrict on update restrict;

alter table CORREO
   add constraint FK_CORREO_SE_USA_PAYPAL foreign key (ID_METODO_PAGO)
      references PAYPAL (ID_METODO_PAGO)
      on delete restrict on update restrict;

alter table CRIPTOMONEDA
   add constraint FK_CRIPTOMO_PERTENECE_TIPO_CRI foreign key (ID_TIPO_CRIPTOMONEDA)
      references TIPO_CRIPTOMONEDA (ID_TIPO_CRIPTOMONEDA)
      on delete restrict on update restrict;

alter table DESCUENTO_ORDEN_B2B
   add constraint FK_DESCUENT_DESCUENTA_DESCUENT foreign key (ID_DESCUENTO)
      references DESCUENTO (ID_DESCUENTO)
      on delete restrict on update restrict;

alter table DESCUENTO_ORDEN_B2B
   add constraint FK_DESCUENT_SE_LE_DES_ORDEN_CO foreign key (ID_ORDEN_COMPRA_B2B)
      references ORDEN_COMPRA_B2B (ID_ORDEN_COMPRA_B2B)
      on delete restrict on update restrict;

alter table DESCUENTO_ORDEN_B2C
   add constraint FK_DESCUENT_ES_DESCON_ORDEN_CO foreign key (ID_ORDEN_COMPRA_B2C)
      references ORDEN_COMPRA_B2C (ID_ORDEN_COMPRA_B2C)
      on delete restrict on update restrict;

alter table DESCUENTO_ORDEN_B2C
   add constraint FK_DESCUENT_SE_DESCUE_DESCUENT foreign key (ID_DESCUENTO)
      references DESCUENTO (ID_DESCUENTO)
      on delete restrict on update restrict;

alter table DETALLE_MANIFIESTO_CRAGO
   add constraint FK_DETALLE__SE_DESPAC_ORDEN_CO foreign key (ID_ORDEN_COMPRA_B2B)
      references ORDEN_COMPRA_B2B (ID_ORDEN_COMPRA_B2B)
      on delete restrict on update restrict;

alter table DETALLE_MANIFIESTO_CRAGO
   add constraint FK_DETALLE__SE_DESPAC_MANIFIES foreign key (ID_MANIFIESTOCARGO)
      references MANIFIESTO_CARGO (ID_MANIFIESTOCARGO)
      on delete restrict on update restrict;

alter table DETALLE_ORDEN_B2B
   add constraint FK_DETALLE__ESTA_DESC_ORDEN_CO foreign key (ID_ORDEN_COMPRA_B2B)
      references ORDEN_COMPRA_B2B (ID_ORDEN_COMPRA_B2B)
      on delete restrict on update restrict;

alter table DETALLE_ORDEN_B2B
   add constraint FK_DETALLE__SE_PIDE_PRODUCTO foreign key (ID_PIEZA, ID_MOLDE, ID_MATERIAPRIMA, BAS_ID_BASEDISENO, ID_BASEDISENO, ID_PRODUCTO)
      references PRODUCTO (ID_PIEZA, ID_MOLDE, ID_MATERIAPRIMA, BAS_ID_BASEDISENO, ID_BASEDISENO, ID_PRODUCTO)
      on delete restrict on update restrict;

alter table DETALLE_ORDEN_B2C
   add constraint FK_DETALLE__ES_DETALL_ORDEN_CO foreign key (ID_ORDEN_COMPRA_B2C)
      references ORDEN_COMPRA_B2C (ID_ORDEN_COMPRA_B2C)
      on delete restrict on update restrict;

alter table DETALLE_ORDEN_B2C
   add constraint FK_DETALLE__SE_APARTA_PRODUCTO foreign key (ID_PIEZA, ID_MOLDE, ID_MATERIAPRIMA, BAS_ID_BASEDISENO, ID_BASEDISENO, ID_PRODUCTO)
      references PRODUCTO (ID_PIEZA, ID_MOLDE, ID_MATERIAPRIMA, BAS_ID_BASEDISENO, ID_BASEDISENO, ID_PRODUCTO)
      on delete restrict on update restrict;

alter table DISTRIBUCION_PAGO_B2B
   add constraint FK_DISTRIBU_PAGAN_ORDEN_CO foreign key (ID_ORDEN_COMPRA_B2B)
      references ORDEN_COMPRA_B2B (ID_ORDEN_COMPRA_B2B)
      on delete restrict on update restrict;

alter table DISTRIBUCION_PAGO_B2B
   add constraint FK_DISTRIBU_SE_REPART_PAGO_B2B foreign key (CHE_ID_METODO_PAGO, ID_METODO_PAGO)
      references PAGO_B2B (CHE_ID_METODO_PAGO, ID_METODO_PAGO)
      on delete restrict on update restrict;

alter table EMPLEADO
   add constraint FK_EMPLEADO_DIRECCION_LUGAR foreign key (ID_LUGAR)
      references LUGAR (ID_LUGAR)
      on delete restrict on update restrict;

alter table EMPLEADO
   add constraint FK_EMPLEADO_LO_CONTRA_CONTRATO foreign key (ID_CONTRATO)
      references CONTRATO_PERSONAL (ID_CONTRATO)
      on delete restrict on update restrict;

alter table ENVIO_B2C
   add constraint FK_ENVIO_B2_DIR_ENVIO_LUGAR foreign key (LUG_ID_LUGAR)
      references LUGAR (ID_LUGAR)
      on delete restrict on update restrict;

alter table ENVIO_B2C
   add constraint FK_ENVIO_B2_DIR_ORIGE_LUGAR foreign key (ID_LUGAR)
      references LUGAR (ID_LUGAR)
      on delete restrict on update restrict;

alter table ENVIO_B2C
   add constraint FK_ENVIO_B2_SERA_ENTR_ORDEN_CO foreign key (ID_ORDEN_COMPRA_B2C)
      references ORDEN_COMPRA_B2C (ID_ORDEN_COMPRA_B2C)
      on delete restrict on update restrict;

alter table ENVIO_B2C
   add constraint FK_ENVIO_B2_VA_A_ENTR_COURIER foreign key (ID_COURIER)
      references COURIER (ID_COURIER)
      on delete restrict on update restrict;

alter table ERA
   add constraint FK_ERA_PERTENECE_BASE_DIS foreign key (ID_BASEDISENO)
      references BASE_DISENO (ID_BASEDISENO)
      on delete restrict on update restrict;

alter table FASE_CARGO
   add constraint FK_FASE_CAR_MANEJAN_CARGO foreign key (ID_CARGO)
      references CARGO (ID_CARGO)
      on delete restrict on update restrict;

alter table FASE_CARGO
   add constraint FK_FASE_CAR_SE_MANEJA_FASE_DIS foreign key (BAS_ID_BASEDISENO, ID_PRUEBA, ID_BASEDISENO)
      references FASE_DISENO (BAS_ID_BASEDISENO, ID_PRUEBA, ID_BASEDISENO)
      on delete restrict on update restrict;

alter table FASE_DISENO
   add constraint FK_FASE_DIS_SE_PRUEBA_BASEDISE foreign key (BAS_ID_BASEDISENO, ID_PRUEBA)
      references BASEDISENO_PRUEBA (ID_BASEDISENO, ID_PRUEBA)
      on delete restrict on update restrict;

alter table FASE_DISENO
   add constraint FK_FASE_DIS_TIENE_BASE_DIS foreign key (ID_BASEDISENO)
      references BASE_DISENO (ID_BASEDISENO)
      on delete restrict on update restrict;

alter table FASE_EMPLEADO
   add constraint FK_FASE_EMP_SUJETO_A_FASE_PRO foreign key (FAS_BAS_ID_BASEDISENO, ID_PRUEBA, FAS_ID_BASEDISENO, FAS_ID_CARGO, ID_PIEZA, ID_MOLDE, ID_MATERIAPRIMA, BAS_ID_BASEDISENO, ID_BASEDISENO, ID_PRODUCTO, ID_FASE_PRODUCCION)
      references FASE_PRODUCCION (FAS_BAS_ID_BASEDISENO, ID_PRUEBA, FAS_ID_BASEDISENO, ID_CARGO, ID_PIEZA, ID_MOLDE, ID_MATERIAPRIMA, BAS_ID_BASEDISENO, ID_BASEDISENO, ID_PRODUCTO, ID_FASE_PRODUCCION)
      on delete restrict on update restrict;

alter table FASE_EMPLEADO
   add constraint FK_FASE_EMP_TRABAJA_E_CONTRATO foreign key (ID_CARGO, ID_CONTRATO, ID_CONTRATO_CARGO)
      references CONTRATO_CARGO (ID_CARGO, ID_CONTRATO, ID_CONTRATO_CARGO)
      on delete restrict on update restrict;

alter table FASE_PRODUCCION
   add constraint FK_FASE_PRO_LO_SIGUE_FASE_CAR foreign key (FAS_BAS_ID_BASEDISENO, ID_PRUEBA, FAS_ID_BASEDISENO, ID_CARGO)
      references FASE_CARGO (BAS_ID_BASEDISENO, ID_PRUEBA, ID_BASEDISENO, ID_CARGO)
      on delete restrict on update restrict;

alter table FASE_PRODUCCION
   add constraint FK_FASE_PRO_SIGUE_PRODUCTO foreign key (ID_PIEZA, ID_MOLDE, ID_MATERIAPRIMA, BAS_ID_BASEDISENO, ID_BASEDISENO, ID_PRODUCTO)
      references PRODUCTO (ID_PIEZA, ID_MOLDE, ID_MATERIAPRIMA, BAS_ID_BASEDISENO, ID_BASEDISENO, ID_PRODUCTO)
      on delete restrict on update restrict;

alter table HISTORICO_BACKORDER
   add constraint FK_HISTORIC_ES_REGIST_ESTATUS_ foreign key (ID_ESTATUS_BACKORDER)
      references ESTATUS_BACKORDER (ID_ESTATUS_BACKORDER)
      on delete restrict on update restrict;

alter table HISTORICO_BACKORDER
   add constraint FK_HISTORIC_SE_LE_REG_BACKORDE foreign key (ID_BACKORDER)
      references BACKORDER (ID_BACKORDER)
      on delete restrict on update restrict;

alter table HISTORICO_EST_ORD_SUBASTA
   add constraint FK_HISTORIC_ES_DESCRI_ESTATUS_ foreign key (ID_ESTATUS_ORDENSUB)
      references ESTATUS_ORDEN_SUBASTA (ID_ESTATUS_ORDENSUB)
      on delete restrict on update restrict;

alter table HISTORICO_EST_ORD_SUBASTA
   add constraint FK_HISTORIC_SE_DESCRI_ORDEN_SU foreign key (ID_ORDEN_VENTA)
      references ORDEN_SUBASTA (ID_ORDEN_VENTA)
      on delete restrict on update restrict;

alter table HISTORICO_FASE_PRODUCCION
   add constraint FK_HISTORIC_RESENA_ESTATUS_ foreign key (ID_ESTATUS_FP)
      references ESTATUS_FASE_PRODUCCION (ID_ESTATUS_FP)
      on delete restrict on update restrict;

alter table HISTORICO_FASE_PRODUCCION
   add constraint FK_HISTORIC_SE_REGIST_FASE_EMP foreign key (FAS_BAS_ID_BASEDISENO, ID_PRUEBA, FAS_ID_BASEDISENO, FAS_ID_CARGO, ID_PIEZA, ID_MOLDE, ID_CARGO, ID_CONTRATO, ID_MATERIAPRIMA, BAS_ID_BASEDISENO, ID_BASEDISENO, ID_PRODUCTO, ID_FASE_PRODUCCION, ID_CONTRATO_CARGO, ID_FASE_EMPLEADO)
      references FASE_EMPLEADO (FAS_BAS_ID_BASEDISENO, ID_PRUEBA, FAS_ID_BASEDISENO, FAS_ID_CARGO, ID_PIEZA, ID_MOLDE, ID_CARGO, ID_CONTRATO, ID_MATERIAPRIMA, BAS_ID_BASEDISENO, ID_BASEDISENO, ID_PRODUCTO, ID_FASE_PRODUCCION, ID_CONTRATO_CARGO, ID_FASE_EMPLEADO)
      on delete restrict on update restrict;

alter table HISTORICO_INV_PRODUCTO
   add constraint FK_HISTORIC_EXPLICA_ESTATUS_ foreign key (ID_ESTATUS_INVENTARIO)
      references ESTATUS_INVENTARIO (ID_ESTATUS_INVENTARIO)
      on delete restrict on update restrict;

alter table HISTORICO_INV_PRODUCTO
   add constraint FK_HISTORIC_SE_CERTIF_INVENTAR foreign key (ID_PIEZA, ID_MOLDE, ID_SEDE, ID_MATERIAPRIMA, BAS_ID_BASEDISENO, ID_BASEDISENO, ID_PRODUCTO)
      references INVENTARIO_PRODUCTO (ID_PIEZA, ID_MOLDE, ID_SEDE, ID_MATERIAPRIMA, BAS_ID_BASEDISENO, ID_BASEDISENO, ID_PRODUCTO)
      on delete restrict on update restrict;

alter table HISTORICO_MEMBRESIA
   add constraint FK_HISTORIC_DESCRIBE_ESTATUS_ foreign key (ID_ESTATUS_MEMBRESIA)
      references ESTATUS_MEMBRESIA (ID_ESTATUS_MEMBRESIA)
      on delete restrict on update restrict;

alter table HISTORICO_MEMBRESIA
   add constraint FK_HISTORIC_ES_REGIST_MEMBRESI foreign key (ID_MEMBRESIA, ID_PERSONA_NATURAL)
      references MEMBRESIA_CLIENTE_B2C (ID_MEMBRESIA, ID_PERSONA_NATURAL)
      on delete restrict on update restrict;

alter table HISTORICO_ORDEN_COMPRA_B2B
   add constraint FK_HISTORIC_VA_DESCRI_ESTATUS_ foreign key (ID_ESTATUS_ORDEN_B2B)
      references ESTATUS_ORDEN_B2B (ID_ESTATUS_ORDEN_B2B)
      on delete restrict on update restrict;

alter table HISTORICO_ORDEN_COMPRA_B2B
   add constraint FK_HISTORIC_VA_REGIST_ORDEN_CO foreign key (ID_ORDEN_COMPRA_B2B)
      references ORDEN_COMPRA_B2B (ID_ORDEN_COMPRA_B2B)
      on delete restrict on update restrict;

alter table HISTORICO_ORDEN_COMPRA_B2C
   add constraint FK_HISTORIC_CONDICION_ORDEN_CO foreign key (ID_ORDEN_COMPRA_B2C)
      references ORDEN_COMPRA_B2C (ID_ORDEN_COMPRA_B2C)
      on delete restrict on update restrict;

alter table HISTORICO_ORDEN_COMPRA_B2C
   add constraint FK_HISTORIC_SUJETA_A_ESTATUS_ foreign key (ID_ESTATUS_B2C)
      references ESTATUS_ORDEN_COMPRA_B2C (ID_ESTATUS_B2C)
      on delete restrict on update restrict;

alter table HISTORICO_PRECIO
   add constraint FK_HISTORIC_ESTA_PAUT_ESTATUS_ foreign key (ID_ESTATUS_PRECIO)
      references ESTATUS_PRECIO (ID_ESTATUS_PRECIO)
      on delete restrict on update restrict;

alter table HISTORICO_PRECIO
   add constraint FK_HISTORIC_SE_VALUA_PRODUCTO foreign key (ID_PIEZA, ID_MOLDE, ID_MATERIAPRIMA, BAS_ID_BASEDISENO, ID_BASEDISENO, ID_PRODUCTO)
      references PRODUCTO (ID_PIEZA, ID_MOLDE, ID_MATERIAPRIMA, BAS_ID_BASEDISENO, ID_BASEDISENO, ID_PRODUCTO)
      on delete restrict on update restrict;

alter table HISTORICO_SUBASTA
   add constraint FK_HISTORIC_ES_DETERM_SUBASTA foreign key (ID_SUBASTA)
      references SUBASTA (ID_SUBASTA)
      on delete restrict on update restrict;

alter table HISTORICO_SUBASTA
   add constraint FK_HISTORIC_TIENE_UN__ESTATUS_ foreign key (ID_ESTATUS_SUBASTA)
      references ESTATUS_SUBASTA (ID_ESTATUS_SUBASTA)
      on delete restrict on update restrict;

alter table INVENTARIO_MATERIAPRIMA
   add constraint FK_INVENTAR_ALMACENA_SEDE foreign key (ID_SEDE)
      references SEDE (ID_SEDE)
      on delete restrict on update restrict;

alter table INVENTARIO_MATERIAPRIMA
   add constraint FK_INVENTAR_ES_ALMACE_MATERIAP foreign key (ID_MATERIAPRIMA)
      references MATERIAPRIMA (ID_MATERIAPRIMA)
      on delete restrict on update restrict;

alter table INVENTARIO_PRODUCTO
   add constraint FK_INVENTAR_CONTIENE_SEDE foreign key (ID_SEDE)
      references SEDE (ID_SEDE)
      on delete restrict on update restrict;

alter table INVENTARIO_PRODUCTO
   add constraint FK_INVENTAR_SE_ALMACE_PRODUCTO foreign key (ID_PIEZA, ID_MOLDE, ID_MATERIAPRIMA, BAS_ID_BASEDISENO, ID_BASEDISENO, ID_PRODUCTO)
      references PRODUCTO (ID_PIEZA, ID_MOLDE, ID_MATERIAPRIMA, BAS_ID_BASEDISENO, ID_BASEDISENO, ID_PRODUCTO)
      on delete restrict on update restrict;

alter table INVENTARIO_PRODUCTO
   add constraint FK_INVENTAR_SE_SUBAST_SUBASTA foreign key (ID_SUBASTA)
      references SUBASTA (ID_SUBASTA)
      on delete restrict on update restrict;

alter table LINEA_CREDITO
   add constraint FK_LINEA_CR_ES_ASIGNA_PERSONA_ foreign key (ID_PERSONA_JURIDICA)
      references PERSONA_JURIDICA (ID_PERSONA_JURIDICA)
      on delete restrict on update restrict;

alter table LUGAR
   add constraint FK_LUGAR_DIVIDE_LUGAR foreign key (LUG_ID_LUGAR)
      references LUGAR (ID_LUGAR)
      on delete restrict on update restrict;

alter table MANIFIESTO_CARGO
   add constraint FK_MANIFIES_ES_TRANSP_TRANSPOR foreign key (ID_TRANSPORTE)
      references TRANSPORTE (ID_TRANSPORTE)
      on delete restrict on update restrict;

alter table MANIFIESTO_CARGO
   add constraint FK_MANIFIES_SE_ENTREG_LUGAR foreign key (ID_LUGAR)
      references LUGAR (ID_LUGAR)
      on delete restrict on update restrict;

alter table MANIFIESTO_CARGO
   add constraint FK_MANIFIES_SU_ORIGEN_LUGAR foreign key (LUG_ID_LUGAR)
      references LUGAR (ID_LUGAR)
      on delete restrict on update restrict;

alter table MEMBRESIA_CLIENTE_B2C
   add constraint FK_MEMBRESI_COMPRA_CLIENTE_ foreign key (ID_PERSONA_NATURAL)
      references CLIENTE_B2C (ID_PERSONA_NATURAL)
      on delete restrict on update restrict;

alter table MEMBRESIA_CLIENTE_B2C
   add constraint FK_MEMBRESI_ES_ADQUIR_MEMBRESI foreign key (ID_MEMBRESIA)
      references MEMBRESIA (ID_MEMBRESIA)
      on delete restrict on update restrict;

alter table MONEDA
   add constraint FK_MONEDA_ES_PAGADO_PAGO_B2C foreign key (ID_ORDEN_COMPRA_B2C, PAY_ID_METODO_PAGO, ID_METODO_PAGO, TAR_ID_METODO_PAGO, TAR_ID_METODO_PAGO2)
      references PAGO_B2C (ID_ORDEN_COMPRA_B2C, PAY_ID_METODO_PAGO, ID_METODO_PAGO, TAR_ID_METODO_PAGO, TAR_ID_METODO_PAGO2)
      on delete restrict on update restrict;

alter table MONEDA
   add constraint FK_MONEDA_ES_REALIZ_PAGO_SUB foreign key (ID_ORDEN_VENTA, ID_USUARIO, PAG_TAR_ID_METODO_PAGO, PAG_ID_METODO_PAGO3, PAG_ID_USUARIO_METODO_PAGO, ID_PAGO_SUBASTA)
      references PAGO_SUBASTA (ID_ORDEN_VENTA, ID_USUARIO, TAR_ID_METODO_PAGO, ID_METODO_PAGO, ID_USUARIO_METODO_PAGO, ID_PAGO_SUBASTA)
      on delete restrict on update restrict;

alter table MONEDA
   add constraint FK_MONEDA_SE_PAGA_M_PAGO_MEM foreign key (PAG_ID_USUARIO, PAG_TAR_ID_METODO_PAGO2, PAG_ID_METODO_PAGO2, ID_USUARIO_METODO_PAGO, ID_MEMBRESIA, ID_PAGO_MEMBRESIA)
      references PAGO_MEMBRESIA (ID_USUARIO, TAR_ID_METODO_PAGO, ID_METODO_PAGO, ID_USUARIO_METODO_PAGO, ID_MEMBRESIA, ID_PAGO_MEMBRESIA)
      on delete restrict on update restrict;

alter table MONEDA
   add constraint FK_MONEDA_SE_REALIZ_PAGO_B2B foreign key (CHE_ID_METODO_PAGO, PAG_ID_METODO_PAGO)
      references PAGO_B2B (CHE_ID_METODO_PAGO, ID_METODO_PAGO)
      on delete restrict on update restrict;

alter table ORDEN_COMPRA_B2B
   add constraint FK_ORDEN_CO_COMPRA_MA_USUARIO foreign key (ID_USUARIO)
      references USUARIO (ID_USUARIO)
      on delete restrict on update restrict;

alter table ORDEN_COMPRA_B2B
   add constraint FK_ORDEN_CO_VENDE_CONTRATO foreign key (ID_CONTRATO)
      references CONTRATO_PERSONAL (ID_CONTRATO)
      on delete restrict on update restrict;

alter table ORDEN_COMPRA_B2C
   add constraint FK_ORDEN_CO_ES_VENDED_CONTRATO foreign key (ID_CONTRATO)
      references CONTRATO_PERSONAL (ID_CONTRATO)
      on delete restrict on update restrict;

alter table ORDEN_COMPRA_B2C
   add constraint FK_ORDEN_CO_QUIERE_CO_USUARIO foreign key (ID_USUARIO)
      references USUARIO (ID_USUARIO)
      on delete restrict on update restrict;

alter table ORDEN_COMPRA_B2C
   add constraint FK_ORDEN_CO_SERA_ENTR_ENVIO_B2 foreign key (ID_ENVIO_B2C)
      references ENVIO_B2C (ID_ENVIO_B2C)
      on delete restrict on update restrict;

alter table ORDEN_SUBASTA
   add constraint FK_ORDEN_SU_ES_PENALI_PENALIZA foreign key (ID_PENALIZACION)
      references PENALIZACION (ID_PENALIZACION)
      on delete restrict on update restrict;

alter table ORDEN_SUBASTA
   add constraint FK_ORDEN_SU_GENERA2_ADJUDICA foreign key (ID_ADJUDICACION)
      references ADJUDICACION (ID_ADJUDICACION)
      on delete restrict on update restrict;

alter table PAGO_B2B
   add constraint FK_PAGO_B2B_ES_ABONAD_TRANSFER foreign key (ID_METODO_PAGO)
      references TRANSFERENCIA_BANCARIA (ID_METODO_PAGO)
      on delete restrict on update restrict;

alter table PAGO_B2B
   add constraint FK_PAGO_B2B_ES_SALDAD_CHEQUE foreign key (CHE_ID_METODO_PAGO)
      references CHEQUE (ID_METODO_PAGO)
      on delete restrict on update restrict;

alter table PAGO_B2B
   add constraint FK_PAGO_B2B_SE_REALIZ_MONEDA foreign key (ID_MONEDA)
      references MONEDA (ID_MONEDA)
      on delete restrict on update restrict;

alter table PAGO_B2C
   add constraint FK_PAGO_B2C_ES_CONCIL_ORDEN_CO foreign key (ID_ORDEN_COMPRA_B2C)
      references ORDEN_COMPRA_B2C (ID_ORDEN_COMPRA_B2C)
      on delete restrict on update restrict;

alter table PAGO_B2C
   add constraint FK_PAGO_B2C_ES_PAGADO_MONEDA foreign key (ID_MONEDA)
      references MONEDA (ID_MONEDA)
      on delete restrict on update restrict;

alter table PAGO_B2C
   add constraint FK_PAGO_B2C_SE_PAGARA_TARJETA_ foreign key (TAR_ID_METODO_PAGO2)
      references TARJETA_CREDITO (ID_METODO_PAGO)
      on delete restrict on update restrict;

alter table PAGO_B2C
   add constraint FK_PAGO_B2C_SE_UTILIZ_TARJETA_ foreign key (TAR_ID_METODO_PAGO)
      references TARJETA_DEBITO (ID_METODO_PAGO)
      on delete restrict on update restrict;

alter table PAGO_B2C
   add constraint FK_PAGO_B2C_SE_UTILIZ_CRIPTOMO foreign key (ID_METODO_PAGO)
      references CRIPTOMONEDA (ID_METODO_PAGO)
      on delete restrict on update restrict;

alter table PAGO_B2C
   add constraint FK_PAGO_B2C_SE_VA_PAG_PAYPAL foreign key (PAY_ID_METODO_PAGO)
      references PAYPAL (ID_METODO_PAGO)
      on delete restrict on update restrict;

alter table PAGO_MEMBRESIA
   add constraint FK_PAGO_MEM_ES_CLASIF_ESTATUS_ foreign key (ID_ESTATUS_PAGO_MEMBRESIA)
      references ESTATUS_PAGO_MEMBRESIA (ID_ESTATUS_PAGO_MEMBRESIA)
      on delete restrict on update restrict;

alter table PAGO_MEMBRESIA
   add constraint FK_PAGO_MEM_ES_REALIZ_USUARIO_ foreign key (ID_USUARIO, TAR_ID_METODO_PAGO, ID_METODO_PAGO, ID_USUARIO_METODO_PAGO)
      references USUARIO_METODO_PAGO (ID_USUARIO, TAR_ID_METODO_PAGO, ID_METODO_PAGO, ID_USUARIO_METODO_PAGO)
      on delete restrict on update restrict;

alter table PAGO_MEMBRESIA
   add constraint FK_PAGO_MEM_SE_PAGA_MEMBRESI foreign key (ID_MEMBRESIA)
      references MEMBRESIA (ID_MEMBRESIA)
      on delete restrict on update restrict;

alter table PAGO_MEMBRESIA
   add constraint FK_PAGO_MEM_SE_PAGA_M_MONEDA foreign key (ID_MONEDA)
      references MONEDA (ID_MONEDA)
      on delete restrict on update restrict;

alter table PAGO_SUBASTA
   add constraint FK_PAGO_SUB_ES_PAGADO_ORDEN_SU foreign key (ID_ORDEN_VENTA)
      references ORDEN_SUBASTA (ID_ORDEN_VENTA)
      on delete restrict on update restrict;

alter table PAGO_SUBASTA
   add constraint FK_PAGO_SUB_ES_REALIZ_MONEDA foreign key (ID_MONEDA)
      references MONEDA (ID_MONEDA)
      on delete restrict on update restrict;

alter table PAGO_SUBASTA
   add constraint FK_PAGO_SUB_ES_VALIDA_USUARIO_ foreign key (ID_USUARIO, TAR_ID_METODO_PAGO, ID_METODO_PAGO, ID_USUARIO_METODO_PAGO)
      references USUARIO_METODO_PAGO (ID_USUARIO, TAR_ID_METODO_PAGO, ID_METODO_PAGO, ID_USUARIO_METODO_PAGO)
      on delete restrict on update restrict;

alter table PAYPAL
   add constraint FK_PAYPAL_SE_USA2_CORREO foreign key (ID_CORREO)
      references CORREO (ID_CORREO)
      on delete restrict on update restrict;

alter table PENALIZACION
   add constraint FK_PENALIZA_ES_PENALI_ORDEN_SU foreign key (ID_ORDEN_VENTA)
      references ORDEN_SUBASTA (ID_ORDEN_VENTA)
      on delete restrict on update restrict;

alter table PERSONA_JURIDICA
   add constraint FK_PERSONA__DIR_FISCA_LUGAR foreign key (LUG_ID_LUGAR)
      references LUGAR (ID_LUGAR)
      on delete restrict on update restrict;

alter table PERSONA_JURIDICA
   add constraint FK_PERSONA__DIR_FISIC_LUGAR foreign key (ID_LUGAR)
      references LUGAR (ID_LUGAR)
      on delete restrict on update restrict;

alter table PERSONA_JURIDICA
   add constraint FK_PERSONA__ES_ASIGNA_LINEA_CR foreign key (ID_LINEA_CREDITO)
      references LINEA_CREDITO (ID_LINEA_CREDITO)
      on delete restrict on update restrict;

alter table PRODUCTO
   add constraint FK_PRODUCTO_EJERCE_PROFESIO foreign key (ID_PROFESION, PRO_ID_BASEDISENO)
      references PROFESION_BASEDISENO (ID_PROFESION, ID_BASEDISENO)
      on delete restrict on update restrict;

alter table PRODUCTO
   add constraint FK_PRODUCTO_SE_AGRUPA_BASEDISE foreign key (BAS_ID_BASEDISENO2, ID_SET_REGALO)
      references BASEDISENO_SETREGALO (ID_BASEDISENO, ID_SET_REGALO)
      on delete restrict on update restrict;

alter table PRODUCTO
   add constraint FK_PRODUCTO_SE_CARACT_CARACTER foreign key (CAR_ID_BASEDISENO, ID_CARACTERISTICA)
      references CARACTERISTICA_BASEDISENO (ID_BASEDISENO, ID_CARACTERISTICA)
      on delete restrict on update restrict;

alter table PRODUCTO
   add constraint FK_PRODUCTO_SE_CATEGO_CATEGORI foreign key (CAT_ID_BASEDISENO, ID_CATEGORIA)
      references CATEGORIA_BASEDISENO (ID_BASEDISENO, ID_CATEGORIA)
      on delete restrict on update restrict;

alter table PRODUCTO
   add constraint FK_PRODUCTO_SE_CLASIF_CLASIFIC foreign key (CLA_ID_BASEDISENO, ID_CLASIFICACION)
      references CLASIFICACION_BASEDISENO (ID_BASEDISENO, ID_CLASIFICACION)
      on delete restrict on update restrict;

alter table PRODUCTO
   add constraint FK_PRODUCTO_SE_CREARA_BASE_DIS foreign key (ID_PIEZA, ID_MOLDE, ID_MATERIAPRIMA, BAS_ID_BASEDISENO)
      references BASE_DISENO_CONSTRUCCION (ID_PIEZA, ID_MOLDE, ID_MATERIAPRIMA, ID_BASEDISENO)
      on delete restrict on update restrict;

alter table PRODUCTO
   add constraint FK_PRODUCTO_SE_DISENA_BASE_DIS foreign key (ID_BASEDISENO)
      references BASE_DISENO (ID_BASEDISENO)
      on delete restrict on update restrict;

alter table PROFESION_BASEDISENO
   add constraint FK_PROFESIO_EJERCIDA_BASE_DIS foreign key (ID_BASEDISENO)
      references BASE_DISENO (ID_BASEDISENO)
      on delete restrict on update restrict;

alter table PROFESION_BASEDISENO
   add constraint FK_PROFESIO_SE_EJERCE_PROFESIO foreign key (ID_PROFESION)
      references PROFESION (ID_PROFESION)
      on delete restrict on update restrict;

alter table PUJA
   add constraint FK_PUJA_ES_GANADO_ADJUDICA foreign key (ID_ADJUDICACION)
      references ADJUDICACION (ID_ADJUDICACION)
      on delete restrict on update restrict;

alter table PUJA
   add constraint FK_PUJA_NECESITA_MONEDA foreign key (ID_MONEDA)
      references MONEDA (ID_MONEDA)
      on delete restrict on update restrict;

alter table PUJA
   add constraint FK_PUJA_OFERTA_USUARIO foreign key (ID_USUARIO)
      references USUARIO (ID_USUARIO)
      on delete restrict on update restrict;

alter table PUJA
   add constraint FK_PUJA_OFERTAN_SUBASTA foreign key (ID_SUBASTA)
      references SUBASTA (ID_SUBASTA)
      on delete restrict on update restrict;

alter table PUJA
   add constraint FK_PUJA_SE_REALIZ_ESTATUS_ foreign key (ID_ESTATUS_PUJA)
      references ESTATUS_PUJA (ID_ESTATUS_PUJA)
      on delete restrict on update restrict;

alter table ROL_PRIVILEGIO
   add constraint FK_ROL_PRIV_HACE_USO_PRIVILEG foreign key (ID_PRIVILEGIO)
      references PRIVILEGIO (ID_PRIVILEGIO)
      on delete restrict on update restrict;

alter table ROL_PRIVILEGIO
   add constraint FK_ROL_PRIV_USA_ROL foreign key (ID_ROL)
      references ROL (ID_ROL)
      on delete restrict on update restrict;

alter table SEDE
   add constraint FK_SEDE_ESTA_UBIC_LUGAR foreign key (ID_LUGAR)
      references LUGAR (ID_LUGAR)
      on delete restrict on update restrict;

alter table SUBASTA
   add constraint FK_SUBASTA_SE_SUBAST_INVENTAR foreign key (ID_PIEZA, ID_MOLDE, ID_SEDE, ID_MATERIAPRIMA, BAS_ID_BASEDISENO, ID_BASEDISENO, ID_PRODUCTO)
      references INVENTARIO_PRODUCTO (ID_PIEZA, ID_MOLDE, ID_SEDE, ID_MATERIAPRIMA, BAS_ID_BASEDISENO, ID_BASEDISENO, ID_PRODUCTO)
      on delete restrict on update restrict;

alter table TARJETA_CREDITO
   add constraint FK_TARJETA__EMITE_BANCO foreign key (ID_BANCO)
      references BANCO (ID_BANCO)
      on delete restrict on update restrict;

alter table TARJETA_DEBITO
   add constraint FK_TARJETA__ES_EMITID_BANCO foreign key (ID_BANCO)
      references BANCO (ID_BANCO)
      on delete restrict on update restrict;

alter table TASA_CAMBIO
   add constraint FK_TASA_CAM_SE_JUSTIF_MONEDA foreign key (ID_MONEDA)
      references MONEDA (ID_MONEDA)
      on delete restrict on update restrict;

alter table TELEFONO
   add constraint FK_TELEFONO_ADMINISTR_CLIENTE_ foreign key (PER_ID_PERSONA_NATURAL)
      references CLIENTE_B2C (ID_PERSONA_NATURAL)
      on delete restrict on update restrict;

alter table TELEFONO
   add constraint FK_TELEFONO_ADMINISTR_EMPLEADO foreign key (ID_PERSONA_NATURAL)
      references EMPLEADO (ID_PERSONA_NATURAL)
      on delete restrict on update restrict;

alter table TELEFONO
   add constraint FK_TELEFONO_CUENTA_CO_PERSONA_ foreign key (ID_PERSONA_JURIDICA)
      references PERSONA_JURIDICA (ID_PERSONA_JURIDICA)
      on delete restrict on update restrict;

alter table TONO_PIEL
   add constraint FK_TONO_PIE_SE_TINTA_COLOR foreign key (ID_COLOR)
      references COLOR (ID_COLOR)
      on delete restrict on update restrict;

alter table TRANSFERENCIA_BANCARIA
   add constraint FK_TRANSFER_ES_TRANSF_BANCO foreign key (ID_BANCO)
      references BANCO (ID_BANCO)
      on delete restrict on update restrict;

alter table TRANSPORTE
   add constraint FK_TRANSPOR_SE_IDENTI_TIPO_TRA foreign key (ID_TIPO_TRANSPORTE)
      references TIPO_TRANSPORTE (ID_TIPO_TRANSPORTE)
      on delete restrict on update restrict;

alter table USUARIO
   add constraint FK_USUARIO_CREA_CLIENTE_ foreign key (PER_ID_PERSONA_NATURAL)
      references CLIENTE_B2C (ID_PERSONA_NATURAL)
      on delete restrict on update restrict;

alter table USUARIO
   add constraint FK_USUARIO_CREA2_EMPLEADO foreign key (ID_PERSONA_NATURAL)
      references EMPLEADO (ID_PERSONA_NATURAL)
      on delete restrict on update restrict;

alter table USUARIO
   add constraint FK_USUARIO_SE_CREA_PERSONA_ foreign key (ID_PERSONA_JURIDICA)
      references PERSONA_JURIDICA (ID_PERSONA_JURIDICA)
      on delete restrict on update restrict;

alter table USUARIO
   add constraint FK_USUARIO_SE_LE_ASI_ROL foreign key (ID_ROL)
      references ROL (ID_ROL)
      on delete restrict on update restrict;

alter table USUARIO_METODO_PAGO
   add constraint FK_USUARIO__ES_VALIDA_TARJETA_ foreign key (ID_METODO_PAGO)
      references TARJETA_DEBITO (ID_METODO_PAGO)
      on delete restrict on update restrict;

alter table USUARIO_METODO_PAGO
   add constraint FK_USUARIO__PERTENECE_TARJETA_ foreign key (TAR_ID_METODO_PAGO)
      references TARJETA_CREDITO (ID_METODO_PAGO)
      on delete restrict on update restrict;

alter table USUARIO_METODO_PAGO
   add constraint FK_USUARIO__REGISTRA_USUARIO foreign key (ID_USUARIO)
      references USUARIO (ID_USUARIO)
      on delete restrict on update restrict;
