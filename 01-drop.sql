
drop index GENERA_FK;

drop index ES_GANADOR2_FK;

drop index ADJUDICACION_PK;

drop table ADJUDICACION;

drop index ASISTE_FK;

drop index ASISTENCIA_PK;

drop table ASISTENCIA;

drop index SERA_PAGADA_FK;

drop index BACKORDER_PK;

drop table BACKORDER;

drop index BANCO_PK;

drop table BANCO;

drop index PRUEBA_FK;

drop index ES_PROBADA_FK;

drop index BASEDISENO_PRUEBA_PK;

drop table BASEDISENO_PRUEBA;

drop index AGRUPA_FK;

drop index SE_AGRUPA_FK;

drop index BASEDISENO_SETREGALO_PK;

drop table BASEDISENO_SETREGALO;

drop index SE_DEFINE_FK;

drop index TIENE_ASIGNADO_FK;

drop index SE_MOLDEA_FK;

drop index RELACIONA_FK;

drop index PERTENECE2_FK;

drop index ES_PARTE_DE2_FK;

drop index BASE_DISENO_PK;

drop table BASE_DISENO;

drop index SE_CONFORMA_FK;

drop index CONSTRUYE_FK;

drop index MOLDEARA_FK;

drop index CONFORMA_FK;

drop index BASE_DISENO_CONSTRUCCION_PK;

drop table BASE_DISENO_CONSTRUCCION;

drop index BENEFICIO_PK;

drop table BENEFICIO;

drop index CARACTERISTICA_PK;

drop table CARACTERISTICA;

drop index CARACTERIZA_FK;

drop index ES_CARACTERIZADA_FK;

drop index CARACTERISTICA_BASEDISENO_PK;

drop table CARACTERISTICA_BASEDISENO;

drop index ES_ASIGNADO_POR_FK;

drop index TRABAJA_FK;

drop index CARGO_PK;

drop table CARGO;

drop index SE_DIVIDE_FK;

drop index CATEGORIA_PK;

drop table CATEGORIA;

drop index SE_RELACIONA_FK;

drop index SE_VINCULA_FK;

drop index CATEGORIA_BASEDISENO_PK;

drop table CATEGORIA_BASEDISENO;

drop index VINCULA_FK;

drop index CATEGORIA_CATEGORIA_PK;

drop table CATEGORIA_CATEGORIA;

drop index ES_EXPEDIDO_FK;

drop index CHEQUE_PK;

drop table CHEQUE;

drop index CLASIFICACION_PK;

drop table CLASIFICACION;

drop index CLASIFICA_FK;

drop index ES_CLASIFICADA_FK;

drop index CLASIFICACION_BASEDISENO_PK;

drop table CLASIFICACION_BASEDISENO;

drop index DIRECCION_FISICA_FK;

drop index CLIENTE_B2C_PK;

drop table CLIENTE_B2C;

drop index ES_PARTE_DE_FK;

drop index COLECCION_PK;

drop table COLECCION;

drop index COLOR_PK;

drop table COLOR;

drop index SE_EXPRESA_FK;

drop index COLOR_OJO_PK;

drop table COLOR_OJO;

drop index ES_GOZADO_FK;

drop index GOZA_FK;

drop index CONTRATO_BENEFICIO_PK;

drop table CONTRATO_BENEFICIO;

drop index SE_ENCARGARA_FK;

drop index ES_ENCARGADO_FK;

drop index CONTRATO_CARGO_PK;

drop table CONTRATO_CARGO;

drop index SE_ORGANIZA_FK;

drop index CUMPLE_FK;

drop index CONTRATO_HORARIO_PK;

drop table CONTRATO_HORARIO;

drop index SE_ESTABLECE_FK;

drop index LO_CONTRATAN2_FK;

drop index CONTRATO_PERSONAL_PK;

drop table CONTRATO_PERSONAL;

drop index POSEE_FK;

drop index POSEE2_FK;

drop index SE_USA_FK;

drop index COORDINA_FK;

drop index CORREO_PK;

drop table CORREO;

drop index COURIER_PK;

drop table COURIER;

drop index PERTENECE_A_LA_CADENA_FK;

drop index CRIPTOMONEDA_PK;

drop table CRIPTOMONEDA;

drop index DEPARTAMENTO_PK;

drop table DEPARTAMENTO;

drop index DESCUENTO_PK;

drop table DESCUENTO;

drop index DESCUENTA_FK;

drop index SE_LE_DESCUENTA_FK;

drop index DESCUENTO_ORDEN_B2B_PK;

drop table DESCUENTO_ORDEN_B2B;

drop index SE_DESCUENTA_FK;

drop index ES_DESCONTADO_FK;

drop index DESCUENTO_ORDEN_B2C_PK;

drop table DESCUENTO_ORDEN_B2C;

drop index SE_DESPACHA_FK;

drop index SE_DESPACHA_EN_FK;

drop index DETALLE_MANIFIESTO_CRAGO_PK;

drop table DETALLE_MANIFIESTO_CRAGO;

drop index ESTA_DESCRITA_FK;

drop index SE_PIDE_FK;

drop index DETALLE_ORDEN_B2B_PK;

drop table DETALLE_ORDEN_B2B;

drop index ES_DETALLADA_POR_FK;

drop index SE_APARTA_FK;

drop index DETALLE_ORDEN_B2C_PK;

drop table DETALLE_ORDEN_B2C;

drop index SE_REPARTE_FK;

drop index PAGAN_FK;

drop index DISTRIBUCION_PAGO_B2B_PK;

drop table DISTRIBUCION_PAGO_B2B;

drop index DIRECCION_FISICA2_FK;

drop index LO_CONTRATAN_FK;

drop index EMPLEADO_PK;

drop table EMPLEADO;

drop index DIR_ORIGEN_B2C_FK;

drop index DIR_ENVIO_B2C_FK;

drop index VA_A_ENTREGAR_FK;

drop index SERA_ENTREGADO2_FK;

drop index ENVIO_B2C_PK;

drop table ENVIO_B2C;

drop index PERTENECE_FK;

drop index ERA_PK;

drop table ERA;

drop index ESTATUS_BACKORDER_PK;

drop table ESTATUS_BACKORDER;

drop index ESTATUS_FASE_PRODUCCION_PK;

drop table ESTATUS_FASE_PRODUCCION;

drop index ESTATUS_INVENTARIO_PK;

drop table ESTATUS_INVENTARIO;

drop index ESTATUS_MEMBRESIA_PK;

drop table ESTATUS_MEMBRESIA;

drop index ESTATUS_ORDEN_B2B_PK;

drop table ESTATUS_ORDEN_B2B;

drop index ESTATUS_ORDEN_COMPRA_B2C_PK;

drop table ESTATUS_ORDEN_COMPRA_B2C;

drop index ESTATUS_ORDEN_SUBASTA_PK;

drop table ESTATUS_ORDEN_SUBASTA;

drop index ESTATUS_PAGO_MEMBRESIA_PK;

drop table ESTATUS_PAGO_MEMBRESIA;

drop index ESTATUS_PRECIO_PK;

drop table ESTATUS_PRECIO;

drop index ESTATUS_PUJA_PK;

drop table ESTATUS_PUJA;

drop index ESTATUS_SUBASTA_PK;

drop table ESTATUS_SUBASTA;

drop index MANEJAN_FK;

drop index SE_MANEJA_FK;

drop index FASE_CARGO_PK;

drop table FASE_CARGO;

drop index SE_PRUEBA_FK;

drop index TIENE_FK;

drop index FASE_DISENO_PK;

drop table FASE_DISENO;

drop index TRABAJA_EN_FK;

drop index SUJETO_A_FK;

drop index FASE_EMPLEADO_PK;

drop table FASE_EMPLEADO;

drop index LO_SIGUE_FK;

drop index SIGUE_FK;

drop index FASE_PRODUCCION_PK;

drop table FASE_PRODUCCION;

drop index SE_LE_REGISTRA_FK;

drop index ES_REGISTRADO_FK;

drop index HISTORICO_BACKORDER_PK;

drop table HISTORICO_BACKORDER;

drop index SE_DESCRIBE_FK;

drop index ES_DESCRITA_FK;

drop index HISTORICO_EST_ORD_SUBASTA_PK;

drop table HISTORICO_EST_ORD_SUBASTA;

drop index RESENA_FK;

drop index SE_REGISTRA_FK;

drop index HISTORICO_FASE_PRODUCCION_PK;

drop table HISTORICO_FASE_PRODUCCION;

drop index EXPLICA_FK;

drop index SE_CERTIFICA_FK;

drop index HISTORICO_INV_PRODUCTO_PK;

drop table HISTORICO_INV_PRODUCTO;

drop index ES_REGISTRADA_FK;

drop index DESCRIBE_FK;

drop index HISTORICO_MEMBRESIA_PK;

drop table HISTORICO_MEMBRESIA;

drop index VA_REGISTRADA_FK;

drop index HISTORICO_ORDEN_COMPRA_B2B_PK;

drop table HISTORICO_ORDEN_COMPRA_B2B;

drop index CONDICIONADO_FK;

drop index SUJETA_A_FK;

drop index HISTORICO_ORDEN_COMPRA_B2C_PK;

drop table HISTORICO_ORDEN_COMPRA_B2C;

drop index ESTA_PAUTADO_FK;

drop index SE_VALUA_FK;

drop index HISTORICO_PRECIO_PK;

drop table HISTORICO_PRECIO;

drop index ES_DETERMINADA_FK;

drop index TIENE_UN_ESTATUS_FK;

drop index HISTORICO_SUBASTA_PK;

drop table HISTORICO_SUBASTA;

drop index HORARIO_PK;

drop table HORARIO;

drop index ES_ALMACENADA_FK;

drop index ALMACENA_FK;

drop index INVENTARIO_MATERIAPRIMA_PK;

drop table INVENTARIO_MATERIAPRIMA;

drop index SE_SUBASTA_FK;

drop index SE_ALMACENA_FK;

drop index CONTIENE_FK;

drop index INVENTARIO_PRODUCTO_PK;

drop table INVENTARIO_PRODUCTO;

drop index ES_ASIGNADO2_FK;

drop index LINEA_CREDITO_PK;

drop table LINEA_CREDITO;

drop index DIVIDE_FK;

drop index LUGAR_PK;

drop table LUGAR;

drop index SU_ORIGEN_ES_FK;

drop index SE_ENTREGA_EN_FK;

drop index ES_TRANSPORTADA_FK;

drop index MANIFIESTO_CARGO_PK;

drop table MANIFIESTO_CARGO;

drop index MATERIAPRIMA_PK;

drop table MATERIAPRIMA;

drop index MEMBRESIA_PK;

drop table MEMBRESIA;

drop index COMPRA_FK;

drop index ES_ADQUIRIDA_FK;

drop index MEMBRESIA_CLIENTE_B2C_PK;

drop table MEMBRESIA_CLIENTE_B2C;

drop index META_MENSUAL_PK;

drop table META_MENSUAL;

drop index MOLDE_PK;

drop table MOLDE;

drop index SE_REALIZA_EL_PAGO_FK;

drop index ES_PAGADO_MEDIANTE_FK;

drop index SE_PAGA_MEDIANTE_FK;

drop index ES_REALIZADO_EL_PAGO_FK;

drop index MONEDA_PK;

drop table MONEDA;

drop index VENDE_FK;

drop index COMPRA_MASIVAMENTE_FK;

drop index ORDEN_COMPRA_B2B_PK;

drop table ORDEN_COMPRA_B2B;

drop index ES_VENDEDOR_FK;

drop index QUIERE_COMPRAR_FK;

drop index SERA_ENTREGADO_FK;

drop index ORDEN_COMPRA_B2C_PK;

drop table ORDEN_COMPRA_B2C;

drop index GENERA2_FK;

drop index ES_PENALIZADO_FK;

drop index ORDEN_SUBASTA_PK;

drop table ORDEN_SUBASTA;

drop index SE_REALIZA_EL_PAGO2_FK;

drop index ES_ABONADO_FK;

drop index ES_SALDADO_FK;

drop index PAGO_B2B_PK;

drop table PAGO_B2B;

drop index ES_PAGADO_MEDIANTE2_FK;

drop index SE_PAGARA_FK;

drop index SE_UTILIZA_FK;

drop index SE_UTILIZARA_FK;

drop index SE_VA_PAGAR_FK;

drop index ES_CONCILIADO_FK;

drop index PAGO_B2C_PK;

drop table PAGO_B2C;

drop index SE_PAGA_MEDIANTE2_FK;

drop index ES_CLASIFICADA_POR_FK;

drop index SE_PAGA_FK;

drop index ES_REALIZADA_FK;

drop index PAGO_MEMBRESIA_PK;

drop table PAGO_MEMBRESIA;

drop index ES_REALIZADO_EL_PAGO2_FK;

drop index ES_VALIDA_FK;

drop index ES_PAGADO_FK;

drop index PAGO_SUBASTA_PK;

drop table PAGO_SUBASTA;

drop index SE_USA2_FK;

drop index PAYPAL_PK;

drop table PAYPAL;

drop index ES_PENALIZADO2_FK;

drop index PENALIZACION_PK;

drop table PENALIZACION;

drop index DIR_FISICA_JURIDICA_FK;

drop index ES_ASIGNADO_FK;

drop index DIR_FISCAL_JURIDICA_FK;

drop index PERSONA_JURIDICA_PK;

drop table PERSONA_JURIDICA;

drop index PIEZA_PK;

drop table PIEZA;

drop index PRIVILEGIO_PK;

drop table PRIVILEGIO;

drop index SE_DISENA_FK;

drop index SE_CARACTERIZA_FK;

drop index EJERCE_FK;

drop index SE_CLASIFICA_FK;

drop index SE_AGRUPARA_FK;

drop index SE_CATEGORIZA_FK;

drop index SE_CREARA_FK;

drop index PRODUCTO_PK;

drop table PRODUCTO;

drop index PROFESION_PK;

drop table PROFESION;

drop index EJERCIDA_FK;

drop index SE_EJERCE_FK;

drop index PROFESION_BASEDISENO_PK;

drop table PROFESION_BASEDISENO;

drop index PUEBRA_PK;

drop table PUEBRA;

drop index NECESITA_FK;

drop index SE_REALIZA_FK;

drop index OFERTA_FK;

drop index ES_GANADOR_FK;

drop index OFERTAN_FK;

drop index PUJA_PK;

drop table PUJA;

drop index ROL_PK;

drop table ROL;

drop index USA_FK;

drop index HACE_USO_FK;

drop index ROL_PRIVILEGIO_PK;

drop table ROL_PRIVILEGIO;

drop index ESTA_UBICADA_FK;

drop index SEDE_PK;

drop table SEDE;

drop index SET_REGALO_PK;

drop table SET_REGALO;

drop index SE_SUBASTA2_FK;

drop index SUBASTA_PK;

drop table SUBASTA;

drop index TABULADOR_SALARIAL_PK;

drop table TABULADOR_SALARIAL;

drop index EMITE_FK;

drop index TARJETA_CREDITO_PK;

drop table TARJETA_CREDITO;

drop index ES_EMITIDO_FK;

drop index TARJETA_DEBITO_PK;

drop table TARJETA_DEBITO;

drop index SE_JUSTIFICA_FK;

drop index TASA_CAMBIO_PK;

drop table TASA_CAMBIO;

drop index ADMINISTRA_FK;

drop index ADMINISTRA2_FK;

drop index CUENTA_CON_FK;

drop index TELEFONO_PK;

drop table TELEFONO;

drop index TIPO_CRIPTOMONEDA_PK;

drop table TIPO_CRIPTOMONEDA;

drop index TIPO_CUERPO_PK;

drop table TIPO_CUERPO;

drop index TIPO_TRANSPORTE_PK;

drop table TIPO_TRANSPORTE;

drop index SE_TINTA_FK;

drop index TONO_PIEL_PK;

drop table TONO_PIEL;

drop index ES_TRANSFERIDO_FK;

drop index TRANSFERENCIA_BANCARIA_PK;

drop table TRANSFERENCIA_BANCARIA;

drop index SE_IDENTIFICA_POR_FK;

drop index TRANSPORTE_PK;

drop table TRANSPORTE;

drop index CREA_FK;

drop index CREA2_FK;

drop index SE_CREA_FK;

drop index SE_LE_ASIGNA_FK;

drop index USUARIO_PK;

drop table USUARIO;

drop index ES_VALIDADA_FK;

drop index PERTENECE_A_FK;

drop index REGISTRA_FK;

drop index USUARIO_METODO_PAGO_PK;

drop table USUARIO_METODO_PAGO;