ALTER TABLE horario
ADD CONSTRAINT chk_turnos CHECK (turno_horario IN ('Mañana', 'Tarde', 'Noche'));

ALTER TABLE horario
ADD CONSTRAINT chk_turnos CHECK (dia_horario IN ('Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo'));

ALTER TABLE orden_compra_b2b
ADD CONSTRAINT ck_condicion_pago CHECK (condicion_pago IN (30,60,90));

ALTER TABLE historico_precio
ADD CONSTRAINT ck_historico_precio CHECK (tipo_precio IN ('Subasta','Al detal','Al mayor'));