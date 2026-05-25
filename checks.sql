ALTER TABLE horario
ADD CONSTRAINT chk_turnos CHECK (turno_horario IN ('Mañana', 'Tarde', 'Noche'));

ALTER TABLE horario
ADD CONSTRAINT chk_turnos CHECK (dia_horario IN ('Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Domingo'));