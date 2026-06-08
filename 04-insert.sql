--TABLA LUGAR

-- Estados de Venezuela
INSERT INTO Lugar (
	nombre_lugar, tipo_lugar, fk_lugar)
	VALUES
	('Amazonas', 'estado', null),
	('Anzoátegui', 'estado', null),
	('Apure', 'estado', null),
	('Aragua', 'estado', null),
	('Barinas', 'estado', null),
	('Bolívar', 'estado', null),
	('Carabobo', 'estado', null),
	('Cojedes', 'estado', null),
	('Delta Amacuro', 'estado', null),
        ('Distrito Capital', 'estado', null),
	('Falcón', 'estado', null),
	('Guárico', 'estado', null),
	('Lara', 'estado', null),
        ('La Guaira', 'estado', null),
	('Mérida', 'estado', null),
	('Miranda', 'estado', null),
	('Monagas', 'estado', null),
	('Nueva Esparta', 'estado', null),
	('Portuguesa', 'estado', null),
	('Sucre', 'estado', null),
	('Táchira', 'estado', null),
	('Trujillo', 'estado', null),
	('Yaracuy', 'estado', null),
	('Zulia', 'estado', null);

--Municipios del Estado Amazonas
INSERT INTO Lugar (
	nombre_lugar, tipo_lugar, fk_lugar)
	VALUES
	('Alto Orinoco', 'municipio', 1), 
	('Atabapo', 'municipio', 1),
	('Atures', 'municipio', 1),
	('Autana', 'municipio', 1),
	('Manapiare', 'municipio', 1),
	('Maroa', 'municipio', 1),
	('Río Negro', 'municipio', 1);

-- Municipios del Estado Anzoátegui
INSERT INTO Lugar (
	nombre_lugar, tipo_lugar, fk_lugar)
	VALUES
	('Anaco', 'municipio', 2),
	('Aragua', 'municipio', 2),
	('Bolívar', 'municipio', 2),
	('Bruzual', 'municipio', 2), 
	('Cajigal', 'municipio', 2),
	('Carvajal', 'municipio', 2),
	('Freites', 'municipio', 2),
	('Guanipa', 'municipio', 2),
	('Guanta', 'municipio', 2),
	('Independencia', 'municipio', 2),
	('Libertad', 'municipio', 2),
	('Sir Arthur McGregor', 'municipio', 2),
	('Miranda', 'municipio', 2),
	('Monagas', 'municipio', 2),
	('Peñalver', 'municipio', 2),
	('Píritu', 'municipio', 2),
	('San Juan de Capistrano', 'municipio', 2),
	('Santa Ana', 'municipio', 2),
	('Simón Rodríguez', 'municipio', 2),
	('Sotillo', 'municipio', 2),
	('Turístico Diego Bautista Urbaneja', 'municipio', 2);

-- Municipios del Estado Apure
INSERT INTO Lugar (
	nombre_lugar, tipo_lugar, fk_lugar)
	VALUES
	('Achaguas', 'municipio', 3),
	('Biruaca', 'municipio', 3),
	('Pedro Camejo', 'municipio', 3),
	('Muñoz', 'municipio', 3),
	('Páez', 'municipio', 3),
	('Rómulo Gallegos', 'municipio', 3),
	('San Fernando', 'municipio', 3);

-- Municipios del Estado Aragua
INSERT INTO Lugar (
    nombre_lugar, tipo_lugar, fk_lugar)
    VALUES
    ('Alcántara', 'municipio', 4),
    ('Bolívar', 'municipio', 4),
    ('Camatagua', 'municipio', 4),
    ('Maracay', 'municipio', 4),
    ('Iragorry', 'municipio', 4),
    ('Lamas', 'municipio', 4),
    ('Libertador', 'municipio', 4),
    ('Mariño', 'municipio', 4),
    ('Michelena', 'municipio', 4),
    ('Ocumare de la Costa de Oro', 'municipio', 4),
    ('Revenga', 'municipio', 4),
    ('Ribas', 'municipio', 4),  
    ('San Casimiro', 'municipio', 4),
    ('San Sebastián', 'municipio', 4),
    ('Sucre', 'municipio', 4),
    ('Tovar', 'municipio', 4),
    ('Urdaneta', 'municipio', 4),
    ('Zamora', 'municipio', 4);

-- Municipios del Estado Barinas
INSERT INTO Lugar (
    nombre_lugar, tipo_lugar, fk_lugar)
    VALUES
    ('Alberto Arvelo Torrealba', 'municipio', 5),
    ('Andrés Eloy Blanco', 'municipio', 5),
    ('Antonio José de Sucre', 'municipio', 5),
    ('Arismendi', 'municipio', 5),
    ('Barinas', 'municipio', 5),
    ('Bolívar', 'municipio', 5),
    ('Cruz Paredes', 'municipio', 5),
    ('Ezequiel Zamora', 'municipio', 5),
    ('Obispos', 'municipio', 5),
    ('Pedraza', 'municipio', 5),
    ('Rojas', 'municipio', 5),
    ('Sosa', 'municipio', 5);

-- Municipios del Estado Bolívar
INSERT INTO Lugar (
    nombre_lugar, tipo_lugar, fk_lugar)
    VALUES
    ('Angostura', 'municipio', 6),
    ('Angostura del Orinoco', 'municipio', 6),
    ('Caroní', 'municipio', 6),
    ('Cedeño', 'municipio', 6),
    ('Chien', 'municipio', 6),
    ('El Callao', 'municipio', 6),
    ('Gran Sabana', 'municipio', 6),
    ('Piar', 'municipio', 6),
    ('Roscio', 'municipio', 6),
    ('Sifontes', 'municipio', 6),
    ('Sucre', 'municipio', 6);

-- Municipios del Estado Carabobo
INSERT INTO Lugar  (
    nombre_lugar, tipo_lugar, fk_lugar)
    VALUES
    ('Bejuma', 'municipio', 7),
    ('Carlos Arvelo', 'municipio', 7),
    ('Diego Ibarra', 'municipio', 7),
    ('Guacara', 'municipio', 7),
    ('Juan José Mora', 'municipio', 7),
    ('Libertador', 'municipio', 7),
    ('Los Guayos', 'municipio', 7),
    ('Miranda', 'municipio', 7),
    ('Montalbán', 'municipio', 7),
    ('Naguanagua', 'municipio', 7),
    ('Puerto Cabello', 'municipio', 7),
    ('San Diego', 'municipio', 7),
    ('San Joaquín', 'municipio', 7),
    ('Valencia', 'municipio', 7);

-- Municipios del Estado Cojedes
INSERT INTO Lugar (
    nombre_lugar, tipo_lugar, fk_lugar)
    VALUES
    ('Anzoátegui', 'municipio', 8),
    ('San Carlos', 'municipio', 8),
    ('Girardot', 'municipio', 8),
    ('Lima Blanco', 'municipio', 8),
    ('Pao de San Juan Bautista', 'municipio', 8),
    ('Ricaurte', 'municipio', 8),
    ('Rómulo Gallegos', 'municipio', 8),
    ('Tinaco', 'municipio', 8),
    ('Tinaquillo', 'municipio', 8);

-- Municipios del Estado Delta Amacuro
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('Antonio Díaz', 'municipio', 9),
  ('Casacoima', 'municipio', 9),
  ('Pedernales', 'municipio', 9),
  ('Tucupita', 'municipio', 9);

-- Municipios del Distrito Capital
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('Caracas', 'municipio', 10);

-- Municipios del Estado Falcón
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('Acosta', 'municipio', 11),
  ('Bolívar', 'municipio', 11),
  ('Buchivacoa', 'municipio', 11),
  ('Carirubana', 'municipio', 11),
  ('Colina', 'municipio', 11),
  ('Dabajuro', 'municipio', 11),
  ('Democracia', 'municipio', 11),
  ('Falcón', 'municipio', 11),
  ('Federación', 'municipio', 11),
  ('Iturriza', 'municipio', 11),
  ('Jacura', 'municipio', 11),
  ('Los Taques', 'municipio', 11),
  ('Manaure', 'municipio', 11),
  ('Mauroa', 'municipio', 11),
  ('Miranda', 'municipio', 11),
  ('Palmasola', 'municipio', 11),
  ('Petit', 'municipio', 11),
  ('Píritu', 'municipio', 11),
  ('San Francisco', 'municipio', 11),
  ('Sucre', 'municipio', 11),
  ('Silva', 'municipio', 11),
  ('Tocópero', 'municipio', 11),
  ('Unión', 'municipio', 11),
  ('Urumaco', 'municipio', 11),
  ('Zamora', 'municipio', 11);

-- Municipios del Estado Guárico
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('Camaguán', 'municipio', 12),
  ('Chaguaramas', 'municipio', 12),
  ('El Socorro', 'municipio', 12),
  ('Francisco de Miranda', 'municipio', 12),
  ('José Félix Ribas', 'municipio', 12),
  ('José Tadeo Monagas', 'municipio', 12),
  ('Juan Germán Roscio', 'municipio', 12),
  ('Juan José Rondón', 'municipio', 12),
  ('Julián Mellado', 'municipio', 12),
  ('Leonardo Infante', 'municipio', 12),
  ('Ortiz', 'municipio', 12),
  ('San Gerónimo de Guayabal', 'municipio', 12),
  ('San José de Guaribe', 'municipio', 12),
  ('Santa María de Ipire', 'municipio', 12),
  ('Zaraza', 'municipio', 12);

-- Municipios del Estado Lara
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('Andrés Eloy Blanco', 'municipio', 13),
  ('Crespo', 'municipio', 13),
  ('Iribarren', 'municipio', 13),
  ('Jiménez', 'municipio', 13),
  ('Morán', 'municipio', 13),
  ('Palavecino', 'municipio', 13),
  ('Simón Planas', 'municipio', 13),
  ('Torres', 'municipio', 13),
  ('Urdaneta', 'municipio', 13);

-- Municipios del Estado La Guaira
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('Vargas', 'municipio', 14);

-- Municipios del Estado Mérida
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('Alberto Adriani', 'municipio', 15),
  ('Andrés Bello', 'municipio', 15),
  ('Antonio Pinto Salinas', 'municipio', 15),
  ('Aricagua', 'municipio', 15),
  ('Arzobispo Chacón', 'municipio', 15),
  ('Campo Elías', 'municipio', 15),
  ('Caracciolo Parra Olmedo', 'municipio', 15),
  ('Cardenal Quintero', 'municipio', 15),
  ('Guaraque', 'municipio', 15),
  ('Julio César Salas', 'municipio', 15),
  ('Justo Briceño', 'municipio', 15),
  ('Libertador', 'municipio', 15),
  ('Miranda', 'municipio', 15),
  ('Obispo Ramos de Lora', 'municipio', 15),
  ('Padre Noguera', 'municipio', 15),
  ('Pueblo Llano', 'municipio', 15),
  ('Rangel', 'municipio', 15),
  ('Rivas Dávila', 'municipio', 15),
  ('Santos Marquina', 'municipio', 15),
  ('Sucre', 'municipio', 15),
  ('Tovar', 'municipio', 15),
  ('Tulio Febres Cordero', 'municipio', 15),
  ('Zea', 'municipio', 15);

-- Municipios del Estado Miranda
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('Acevedo', 'municipio', 16),
  ('Andrés Bello', 'municipio', 16),
  ('Baruta', 'municipio', 16),
  ('Bolívar', 'municipio', 16),
  ('Brión', 'municipio', 16),
  ('Buroz', 'municipio', 16),
  ('Carrizal', 'municipio', 16),
  ('Chacao', 'municipio', 16),
  ('Cristóbal Rojas', 'municipio', 16),
  ('El Hatillo', 'municipio', 16),
  ('Guaicaipuro', 'municipio', 16),
  ('Gual', 'municipio', 16),
  ('Independencia', 'municipio', 16),
  ('Lander', 'municipio', 16),
  ('Los Salias', 'municipio', 16),
  ('Páez', 'municipio', 16),
  ('Paz Castillo', 'municipio', 16),
  ('Plaza', 'municipio', 16),
  ('Sucre', 'municipio', 16),
  ('Urdaneta', 'municipio', 16),
  ('Zamora', 'municipio', 16);

-- Municipios del Estado Monagas
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('Acosta', 'municipio', 17),
  ('Aguasay', 'municipio', 17),
  ('Bolívar', 'municipio', 17),
  ('Caripe', 'municipio', 17),
  ('Cedeño', 'municipio', 17),
  ('Libertador', 'municipio', 17),
  ('Maturín', 'municipio', 17),
  ('Piar', 'municipio', 17),
  ('Punceres', 'municipio', 17),
  ('Santa Bárbara', 'municipio', 17),
  ('Sotillo', 'municipio', 17),
  ('Uracoa', 'municipio', 17),
  ('Zamora', 'municipio', 17);

-- Municipios del Estado Nueva Esparta
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('Antolín del Campo', 'municipio', 18),
  ('Antonio Díaz', 'municipio', 18),
  ('Arismendi', 'municipio', 18),
  ('García', 'municipio', 18),
  ('Gómez', 'municipio', 18),
  ('Macanao', 'municipio', 18),
  ('Maneiro', 'municipio', 18),
  ('Marcano', 'municipio', 18),
  ('Mariño', 'municipio', 18),
  ('Tubores', 'municipio', 18),
  ('Villalba', 'municipio', 18);

-- Municipios del Estado Portuguesa
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('Agua Blanca', 'municipio', 19),
  ('Araure', 'municipio', 19),
  ('Esteller', 'municipio', 19),
  ('Guanare', 'municipio', 19),
  ('Guanarito', 'municipio', 19),
  ('José Vicente de Unda', 'municipio', 19),
  ('Ospino', 'municipio', 19),
  ('Páez', 'municipio', 19),
  ('Papelón', 'municipio', 19),
  ('San Genaro de Boconoíto', 'municipio', 19),
  ('San Rafael de Onoto', 'municipio', 19),
  ('Santa Rosalía', 'municipio', 19),
  ('Sucre', 'municipio', 19),
  ('Turén', 'municipio', 19);

-- Municipios del Estado Sucre
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('Andrés Eloy Blanco', 'municipio', 20),
  ('Andrés Mata', 'municipio', 20),
  ('Arismendi', 'municipio', 20),
  ('Benítez', 'municipio', 20),
  ('Bermúdez', 'municipio', 20),
  ('Bolívar', 'municipio', 20),
  ('Cajigal', 'municipio', 20),
  ('Cruz Salmerón Acosta', 'municipio', 20),
  ('Libertador', 'municipio', 20),
  ('Mariño', 'municipio', 20),
  ('Mejía', 'municipio', 20),
  ('Montes', 'municipio', 20),
  ('Ribero', 'municipio', 20),
  ('Sucre', 'municipio', 20),
  ('Valdez', 'municipio', 20);

-- Municipios del Estado Táchira
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar) 
VALUES
  ('Andrés Bello', 'municipio', 21),
  ('Antonio Rómulo Costa', 'municipio', 21),
  ('Ayacucho', 'municipio', 21),
  ('Bolívar', 'municipio', 21),
  ('Cárdenas', 'municipio', 21),
  ('Córdoba', 'municipio', 21),
  ('Fernández', 'municipio', 21),
  ('Francisco de Miranda', 'municipio', 21),
  ('García de Hevia', 'municipio', 21),
  ('Guásimos', 'municipio', 21),
  ('Independencia', 'municipio', 21),
  ('Jáuregui', 'municipio', 21),
  ('José María Vargas', 'municipio', 21),
  ('Junín', 'municipio', 21),
  ('Libertad', 'municipio', 21),
  ('Libertador', 'municipio', 21),
  ('Lobatera', 'municipio', 21),
  ('Michelena', 'municipio', 21),
  ('Panamericano', 'municipio', 21),
  ('Pedro María Ureña', 'municipio', 21),
  ('Rafael Urdaneta', 'municipio', 21),
  ('Samuel Dario Maldonado', 'municipio', 21),
  ('San Cristóbal', 'municipio', 21),
  ('San Judas Tadeo', 'municipio', 21),
  ('Seboruco', 'municipio', 21),
  ('Simón Rodríguez', 'municipio', 21),
  ('Sucre', 'municipio', 21),
  ('Torbes', 'municipio', 21),
  ('Uribante', 'municipio', 21);

-- Municipios del Estado Trujillo
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar) 
VALUES
  ('Andrés Bello', 'municipio', 22),
  ('Boconó', 'municipio', 22),
  ('Bolívar', 'municipio', 22),
  ('Candelaria', 'municipio', 22),
  ('Carache', 'municipio', 22),
  ('Carvajal', 'municipio', 22),
  ('Escuque', 'municipio', 22),
  ('Juan Vicente Campos Elías', 'municipio', 22),
  ('La Ceiba', 'municipio', 22),
  ('Márquez Cañizales', 'municipio', 22),
  ('Miranda', 'municipio', 22),
  ('Monte Carmelo', 'municipio', 22),
  ('Motatán', 'municipio', 22),
  ('Pampán', 'municipio', 22),
  ('Pampanito', 'municipio', 22),
  ('Rangel', 'municipio', 22),
  ('Sucre', 'municipio', 22),
  ('Trujillo', 'municipio', 22),
  ('Urdaneta', 'municipio', 22),
  ('Valera', 'municipio', 22);

-- Municipios del Estado Yaracuy
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar) 
VALUES
  ('Arístides Bastidas', 'municipio', 23),
  ('Bolívar', 'municipio', 23),
  ('Bruzual', 'municipio', 23),
  ('Cocorote', 'municipio', 23),
  ('Independencia', 'municipio', 23),
  ('José Antonio Páez', 'municipio', 23),
  ('La Trinidad', 'municipio', 23),
  ('Manuel Monge', 'municipio', 23),
  ('Nirgua', 'municipio', 23),
  ('Peña', 'municipio', 23),
  ('San Felipe', 'municipio', 23),
  ('Sucre', 'municipio', 23),
  ('Urachiche', 'municipio', 23),
  ('Veroes', 'municipio', 23);

-- Municipios del Estado Zulia
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar) 
VALUES
  ('Almirante Padilla', 'municipio', 24),
  ('Baralt', 'municipio', 24),
  ('Cabimas', 'municipio', 24),
  ('Catatumbo', 'municipio', 24),
  ('Colón', 'municipio', 24),
  ('Francisco Javier Pulgar', 'municipio', 24),
  ('Guajira', 'municipio', 24),
  ('Jesús Enrique Losada', 'municipio', 24),
  ('Jesús María Semprún', 'municipio', 24),
  ('La Cañada de Urdaneta', 'municipio', 24),
  ('Lagunillas', 'municipio', 24),
  ('Machiques de Perijá', 'municipio', 24),
  ('Mara', 'municipio', 24),
  ('Maracaibo', 'municipio', 24),
  ('Miranda', 'municipio', 24),
  ('Rosario de Perijá', 'municipio', 24),
  ('San Francisco', 'municipio', 24),
  ('Santa Rita', 'municipio', 24),
  ('Simón Bolívar', 'municipio', 24),
  ('Sucre', 'municipio', 24),
  ('Valmore Rodríguez', 'municipio', 24);
  
-- ##################  Parroquias  #########################

-- Parroquias del municipio Alto Orinoco, Amazonas
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. LA ESMERALDA', 'parroquia', 25),
  ('HUACHAMACARE', 'parroquia', 25),
  ('MARAWAKA', 'parroquia', 25),
  ('MAVACA', 'parroquia', 25),
  ('SIERRA PARIMA', 'parroquia', 25);

-- Parroquias del municipio Atabapo, Amazonas
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. SAN FERNANDO DE ATABA', 'parroquia', 26),
  ('UCATA', 'parroquia', 26),
  ('YAPACANA', 'parroquia', 26),
  ('CANAME', 'parroquia', 26);

-- Parroquias del municipio Atures, Amazonas
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('FERNANDO GIRON TOVAR', 'parroquia', 27),
  ('LUIS ALBERTO GOMEZ', 'parroquia', 27),
  ('PARHUEÑA', 'parroquia', 27),
  ('PLATANILLAL', 'parroquia', 27);

-- Parroquias del municipio Autana, Amazonas
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. ISLA DE RATON', 'parroquia', 28),
  ('SAMARIAPO', 'parroquia', 28),
  ('SIPAPO', 'parroquia', 28),
  ('MUNDUAPO', 'parroquia', 28),
  ('GUAYAPO', 'parroquia', 28);

-- Parroquias del municipio Manapiare, Amazonas
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. SAN JUAN DE MANAPIARE', 'parroquia', 29),
  ('ALTO VENTUARI', 'parroquia', 29),
  ('MEDIO VENTUARI', 'parroquia', 29),
  ('BAJO VENTUARI', 'parroquia', 29);

-- Parroquias del municipio Maroa, Amazonas
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. MAROA', 'parroquia', 30),
  ('VICTORINO', 'parroquia', 30),
  ('COMUNIDAD', 'parroquia', 30);

-- Parroquias del municipio Río Negro, Amazonas
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. SAN CARLOS DE RIO NEG', 'parroquia', 31),
  ('SOLANO', 'parroquia', 31),
  ('COCUY', 'parroquia', 31);

-- Parroquias del municipio Anaco, Anzoátegui
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('ANACO', 'parroquia', 32),
  ('SAN JOAQUIN', 'parroquia', 32),
  ('BUENA VISTA', 'parroquia', 32);

-- Parroquias del municipio Aragua, Anzoátegui
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. ARAGUA DE BARCELONA', 'parroquia', 33),
  ('CACHIPO', 'parroquia', 33);

-- Parroquias del municipio Bolívar, Anzoátegui
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('EL CARMEN', 'parroquia', 34),
  ('SAN CRISTOBAL', 'parroquia', 34),
  ('BERGANTIN', 'parroquia', 34),
  ('CAIGUA', 'parroquia', 34),
  ('EL PILAR', 'parroquia', 34),
  ('NARICUAL', 'parroquia', 34);

-- Parroquias del municipio Bruzual, Anzoátegui
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
  VALUES
  ('CM. CLARINES', 'parroquia', 35),
  ('GUANAPE', 'parroquia', 35),
  ('SABANA DE UCHIRE', 'parroquia', 35);

--Parroquias del municipio Cajigal, Anzoategui
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
  VALUES
  ('CM. ONOTO', 'parroquia', 36),
  ('SAN PABLO', 'parroquia', 36);

--Parroquias del municipio Carvajal, Anzoategui
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
  VALUES
  ('VALLE DE GUANAPE', 'parroquia', 37),
  ('SANTA BARBARA', 'parroquia', 37);

-- Parroquias del municipio Freites, Anzoategui
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
  VALUES
  ('CM. CANTAURA', 'parroquia', 38),
  ('LIBERTADOR', 'parroquia', 38),
  ('SANTA ROSA', 'parroquia', 38),
  ('URICA', 'parroquia', 38);

--Parroquia del municipio Guanipa, Anzoategui
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
  VALUES
  ('CM. SAN JOSE DE GUANIPA', 'parroquia', 39);

--Parroquias del municipio Guanta, Anzoategui
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
  VALUES
  ('GUANTA', 'parroquia', 40),
  ('CHORRERON', 'parroquia', 40);

--Parroquias del municipio Independencia, Anzoategui
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
  VALUES
  ('CM. SOLEDAD', 'parroquia', 41),
  ('MAMO', 'parroquia', 41);

--Parroquias del municipio Libertad, Anzoategui
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
  VALUES
  ('CM. SAN MATEO', 'parroquia', 42),
  ('EL CARITO', 'parroquia', 42),
  ('SANTA INES', 'parroquia', 42);

--Parroquias del municipio McGregor
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
  VALUES
  ('EL CHAPARRO', 'parroquia', 43),
  ('TOMAS ALFARO CALATRAVA', 'parroquia', 43);

--Parroquias del municicpio Miranda, Anzoategui
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
  VALUES
  ('CM. PARIAGUAN', 'parroquia', 44),
  ('ATAPIRIRE', 'parroquia', 44),
  ('BOCA DEL PAO', 'parroquia', 44),
  ('EL PAO', 'parroquia', 44);

--Parroquias del municipio Monagas, Anzoategui
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
  VALUES
  ('CM. MAPIRE', 'parroquia', 45),
  ('PIAR', 'parroquia', 45),
  ('SN DIEGO DE CABRUTICA', 'parroquia', 45),
  ('SANTA CLARA', 'parroquia', 45),
  ('UVERITO', 'parroquia', 45),
  ('ZUATA', 'parroquia', 45);

--Parroquias del municipio Peñalver, Anzoategui
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
  VALUES
  ('CM. PUERTO PIRITU', 'parroquia', 46),
  ('SAN MIGUEL', 'parroquia', 46),
  ('SUCRE', 'parroquia', 46);

--Parroquias del municipio Piritu, Anzoategui
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
  VALUES
  ('PIRITU', 'parroquia', 47),
  ('SAN FRANCISCO', 'parroquia', 47);

--Parroquias del municipio San Juan de Capistrano, Anzoategui
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
  VALUES
  ('BOCA UCHIRE', 'parroquia', 48),
  ('BOCA DE CHAVEZ', 'parroquia', 48);

--Parroquias del municicpio Santa Ana, Anzoategui
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
  VALUES
  ('SANTA ANA', 'parroquia', 49),
  ('PUEBLO NUEVO', 'parroquia', 49);

--Parroquias del municicpio Simon Rodriguez, Anzoategui
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
  VALUES
  ('EDMUNDO BARRIOS', 'parroquia', 50),
  ('MIGUEL OTERO SILVA', 'parroquia', 50),
  ('CM. EL TIGRE', 'parroquia', 50);

--Parroquias del municipio /sotillo, Anzoategui
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
  VALUES
  ('POZUELOS', 'parroquia', 51),
  ('CM PTO. LA CRUZ', 'parroquia', 51);

--Parroquias del municipio Diego Bautista Urdaneja, Anzoategui
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
  VALUES
  ('LECHERIAS', 'parroquia', 52),
  ('EL MORRO', 'parroquia', 52);

--Parroquias del municipio Achaguas, Apure
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
  VALUES
  ('ACHAGUAS', 'parroquia', 53),
  ('APURITO', 'parroquia', 53),
  ('EL YAGUAL', 'parroquia', 53),
  ('GUACHARA', 'parroquia', 53),
  ('MUCURITAS', 'parroquia', 53),
  ('QUESERAS DEL MEDIO', 'parroquia', 53);

-- Parroquia del municipio Biruaca, Apure
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('BIRUACA', 'parroquia', 54);

-- Parroquias del municipio Pedro Camejo, Apure
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('SAN JUAN DE PAYARA', 'parroquia', 55),
  ('CODAZZI', 'parroquia', 55),
  ('CUNAVICHE', 'parroquia', 55);

--PArroquias del municipio Bruzual, Apure
INSERT INTO Lugar (
  nombre_lugar, tipo_lugar, fk_lugar)
  VALUES
  ('BRUZUAL', 'parroquia', 56),
  ('MANTECAL', 'parroquia', 56),
  ('QUINTERO', 'parroquia', 56),
  ('SAN VICENTE', 'parroquia', 56),
  ('RINCON HONDO', 'parroquia', 56);

-- Parroquias del municipio Paez, Apure
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('GUASDUALITO', 'parroquia', 57),
  ('ARAMENDI', 'parroquia', 57),
  ('EL AMPARO', 'parroquia', 57),
  ('SAN CAMILO', 'parroquia', 57),
  ('URDANETA', 'parroquia', 57);

-- Parroquias del municipio Romulo GAllegos, Apure
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('ELORZA', 'parroquia', 58),
  ('LA TRINIDAD', 'parroquia', 58);

-- Parroquias del municipio San Fernando, Apure
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('SAN FERNANDO', 'parroquia', 59),
  ('PEÑALVER', 'parroquia', 59),
  ('EL RECREO', 'parroquia', 59),
  ('SN RAFAEL DE ATAMAICA', 'parroquia', 59);

-- Parroquias del municipio Alcantara, Aragua
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. SANTA RITA', 'parroquia', 60),
  ('FRANCISCO DE MIRANDA', 'parroquia', 60),
  ('MONS FELICIANO G', 'parroquia', 60);

-- Parroquia del municipio Bolivar, Aragua
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. SAN MATEO', 'parroquia', 61);

-- Parroquias del municipio Camatagua, Aragua
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. CAMATAGUA', 'parroquia', 62),
  ('CARMEN DE CURA', 'parroquia', 62);

-- Parroquias del municipio Girardot, Aragua
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. LAS DELICIAS', 'parroquia', 63),
  ('CHORONI', 'parroquia', 63),
  ('MADRE MA DE SAN JOSE', 'parroquia', 63),
  ('JOAQUIN CRESPO', 'parroquia', 63),
  ('PEDRO JOSE OVALLES', 'parroquia', 63),
  ('JOSE CASANOVA GODOY', 'parroquia', 63),
  ('ANDRES ELOY BLANCO', 'parroquia', 63),
  ('LOS TACARIGUAS', 'parroquia', 63);

-- Parroquias del municipio Iragorry, Aragua
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. EL LIMON', 'parroquia', 64),
  ('CA A DE AZUCAR', 'parroquia', 64);

--Parroquia del municipio Lamas, Aragua
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. SANTA CRUZ', 'parroquia', 65);

-- Parroquias del municipio Libertador
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. PALO NEGRO', 'parroquia', 66),
  ('SAN MARTIN DE PORRES', 'parroquia', 66);

-- Parroquias del municipio MAriño, Aragua
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. TURMERO', 'parroquia', 67),
  ('SAMAN DE GUERE', 'parroquia', 67),
  ('ALFREDO PACHECO M', 'parroquia', 67),
  ('CHUAO', 'parroquia', 67),
  ('AREVALO APONTE', 'parroquia', 67);

-- PArroquias del municipio Michelenas, Aragua
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. LAS TEJERIAS', 'parroquia', 68),
  ('TIARA', 'parroquia', 68);

-- Parroquia del municipio Ocumare de la costa de oro, Aragua
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('OCUMARE DE LA COSTA', 'parroquia', 69);

-- Parroquia del municipio Revenga, Aragua
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. EL CONSEJO', 'parroquia', 70);

-- Parroquias del municipio Ribas, Aragua
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. LA VICTORIA', 'parroquia', 71),
  ('ZUATA', 'parroquia', 71),
  ('PAO DE ZARATE', 'parroquia', 71),
  ('CASTOR NIEVES RIOS', 'parroquia', 71),
  ('LAS GUACAMAYAS', 'parroquia', 71);

-- Parroquias del municipio San Casimiro, Aragua
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. SAN CASIMIRO', 'parroquia', 72),
  ('VALLE MORIN', 'parroquia', 72),
  ('GUIRIPA', 'parroquia', 72),
  ('OLLAS DE CARAMACATE', 'parroquia', 72);

-- Parroquia del municipio San Sebastian, Aragua
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. SAN SEBASTIAN', 'parroquia', 73);

-- Parroquias del municipio Sucre, Aragua
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. CAGUA', 'parroquia', 74),
  ('BELLA VISTA', 'parroquia', 74);

-- Parroquia del municipio Tovar, Aragua
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. COLONIA TOVAR', 'parroquia', 75);

-- PArroquias del municipio Urdaneta, Aragua
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. BARBACOAS', 'parroquia', 76),
  ('SAN FRANCISCO DE CARA', 'parroquia', 76),
  ('TAGUAY', 'parroquia', 76),
  ('LAS PEÑITAS', 'parroquia', 76);

-- Parroquias del municipio Zamora, Aragua
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. VILLA DE CURA', 'parroquia', 77),
  ('MAGDALENO', 'parroquia', 77),
  ('SAN FRANCISCO DE ASIS', 'parroquia', 77),
  ('VALLES DE TUCUTUNEMO', 'parroquia', 77),
  ('PQ AUGUSTO MIJARES', 'parroquia', 77);

-- Parroquias del municipio Alberto Arvelo Torrealba, Barinas
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('RODRIGUEZ DOMINGUEZ', 'parroquia', 78),
  ('SABANETA', 'parroquia', 78);

-- Parroquias del municipio Andres Eloy Blanco
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('EL CANTON', 'parroquia', 79),
  ('SANTA CRUZ DE GUACAS', 'parroquia', 79),
  ('PUERTO VIVAS', 'parroquia', 79);

-- Parroquias del municipio Antonio Jose de Sucre, Barinas
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('TICOPORO', 'parroquia', 80),
  ('NICOLAS PULIDO', 'parroquia', 80),
  ('ANDRES BELLO', 'parroquia', 80);

-- Parroquias del municipio Arismendi, Barinas
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('ARISMENDI', 'parroquia', 81),
  ('GUADARRAMA', 'parroquia', 81),
  ('LA UNION', 'parroquia', 81),
  ('SAN ANTONIO', 'parroquia', 81);

-- PArroquias del municipio Barinas, Barinas
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('Méndez', 'parroquia', 82),
  ('Alto Barinas', 'parroquia', 82),
  ('Corazón de Jesús', 'parroquia', 82),
  ('El Carmen', 'parroquia', 82),
  ('Betancourt', 'parroquia', 82),
  ('Barinas', 'parroquia', 82),
  ('Torunos', 'parroquia', 82),
  ('Fajardo', 'parroquia', 82),
  ('Larriva', 'parroquia', 82),
  ('Páez', 'parroquia', 82),
  ('San Silvestre', 'parroquia', 82),
  ('Santa Inés', 'parroquia', 82),
  ('Santa Lucía', 'parroquia', 82),
  ('Domínguez', 'parroquia', 82);

-- Parroquias del municipio Bolivar, Barinas
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('ALTAMIRA', 'parroquia', 83),
  ('BARINITAS', 'parroquia', 83),
  ('CALDERAS', 'parroquia', 83);

-- Parroquias de municipio Cruz Paredes, Barinas
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('BARRANCAS', 'parroquia', 84),
  ('EL SOCORRO', 'parroquia', 84),
  ('MASPARRITO', 'parroquia', 84);

-- Parroquias del municipio Ezequiel Zamora, Barinas
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('SANTA BARBARA', 'parroquia', 85),
  ('JOSE IGNACIO DEL PUMAR', 'parroquia', 85),
  ('RAMON IGNACIO MENDEZ', 'parroquia', 85),
  ('PEDRO BRICEÑO MENDEZ', 'parroquia', 85);

-- Parroquias del municipio Obispos, Barinas
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('EL REAL', 'parroquia', 86),
  ('LA LUZ', 'parroquia', 86),
  ('OBISPOS', 'parroquia', 86),
  ('LOS GUASIMITOS', 'parroquia', 86);

-- Parroquias del municipio Pedraza, Barinas
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CIUDAD BOLIVIA', 'parroquia', 87),
  ('IGNACIO BRICEÑO', 'parroquia', 87),
  ('PAEZ', 'parroquia', 87),
  ('JOSE FELIX RIBAS', 'parroquia', 87);

-- Parroquias del municipio Rojas, Barinas
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('DOLORES', 'parroquia', 88),
  ('LIBERTAD', 'parroquia', 88),
  ('PALACIO FAJARDO', 'parroquia', 88),
  ('SANTA ROSA', 'parroquia', 88);

-- Parroquias el municipio Sosa, Barinas
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CIUDAD DE NUTRIAS', 'parroquia', 89),
  ('EL REGALO', 'parroquia', 89),
  ('PUERTO DE NUTRIAS', 'parroquia', 89),
  ('SANTA CATALINA', 'parroquia', 89);

-- Parroquias del municipio Angostura, Bolivar
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. CIUDAD PIAR', 'parroquia', 90),
  ('SAN FRANCISCO', 'parroquia', 90),
  ('BARCELONETA', 'parroquia', 90),
  ('SANTA BARBARA', 'parroquia', 90);

-- PArroquias del municipio Angostura del orinoco, Bolivar
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CATEDRAL', 'parroquia', 91),
  ('AGUA SALADA', 'parroquia', 91),
  ('LA SABANITA', 'parroquia', 91),
  ('VISTA HERMOSA', 'parroquia', 91),
  ('MARHUANTA', 'parroquia', 91),
  ('JOSE ANTONIO PAEZ', 'parroquia', 91),
  ('ORINOCO', 'parroquia', 91),
  ('PANAPANA', 'parroquia', 91),
  ('ZEA', 'parroquia', 91);

-- Parroquias del municipio Caroni, Bolivar
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('SIMON BOLIVAR', 'parroquia', 92),
  ('ONCE DE ABRIL', 'parroquia', 92),
  ('VISTA AL SOL', 'parroquia', 92),
  ('CHIRICA', 'parroquia', 92),
  ('DALLA COSTA', 'parroquia', 92),
  ('CACHAMAY', 'parroquia', 92),
  ('UNIVERSIDAD', 'parroquia', 92),
  ('UNARE', 'parroquia', 92),
  ('YOCOIMA', 'parroquia', 92),
  ('POZO VERDE', 'parroquia', 92);

-- PArroquias del municipio cedeño, Bolivar
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. CAICARA DEL ORINOCO', 'parroquia', 93),
  ('ASCENSION FARRERAS', 'parroquia', 93),
  ('ALTAGRACIA', 'parroquia', 93),
  ('LA URBANA', 'parroquia', 93),
  ('GUANIAMO', 'parroquia', 93),
  ('PIJIGUAOS', 'parroquia', 93);

-- Parroquias del municipio Chien, Bolivar
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES  
  ('CM. EL PALMAR', 'parroquia', 94);

--PAroquia del municipio El Callao, Bolivar
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. EL CALLAO', 'parroquia', 95);

-- Parroquias del municipio Gran Sabana, Bolivar
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. SANTA ELENA DE UAIREN', 'parroquia', 96),
  ('IKABARU', 'parroquia', 96);

-- Parroquias del municipio Piar, Bolivar
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. UPATA', 'parroquia', 97),
  ('ANDRES ELOY BLANCO', 'parroquia', 97),
  ('PEDRO COVA', 'parroquia', 97);

-- Parroquias del municipio Roscio, Bolivar
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. GUASIPATI', 'parroquia', 98),
  ('SALOM', 'parroquia', 98);

-- Parroquias del municipio Sifontes, Bolivar
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. TUMEREMO', 'parroquia', 99),
  ('DALLA COSTA', 'parroquia', 99),
  ('SAN ISIDRO', 'parroquia', 99);

-- Parroquias del municipio Sucre, Bolivar
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. MARIPA', 'parroquia', 100),
  ('ARIPAO', 'parroquia', 100),
  ('LAS MAJADAS', 'parroquia', 100),
  ('MOITACO', 'parroquia', 100),
  ('GUARATARO', 'parroquia', 100);

-- Parroquias del municipio Bejuma, Carabobo
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('BEJUMA', 'parroquia', 101),
  ('CANOABO', 'parroquia', 101),
  ('SIMON BOLIVAR', 'parroquia', 101);

-- Parroquias del municipio Carlos Arvelo, Carabobo
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('GUIGUE', 'parroquia', 102),
  ('BELEN', 'parroquia', 102),
  ('TACARIGUA', 'parroquia', 102);

-- Parroquias del municipio Dieo IBarra, Carabobo
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('MARIARA', 'parroquia', 103),
  ('AGUAS CALIENTES', 'parroquia', 103);

-- Parroquias del municipio Guacara, Carabobo
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('GUACARA', 'parroquia', 104),
  ('CIUDAD ALIANZA', 'parroquia', 104),
  ('YAGUA', 'parroquia', 104);

-- Parroquias del municipio Juan Jose Mora, Carabobo  
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('MORON', 'parroquia', 105),
  ('URAMA', 'parroquia', 105);

--Parroquias del municipio Libertador, Carabobo
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('U TOCUYITO', 'parroquia', 106),
  ('U INDEPENDENCIA', 'parroquia', 106);

--Parroquias del municipio Los Guayos, Carabobo
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('U LOS GUAYOS', 'parroquia', 107);

-- Parroquia del municipio Miranda, Carabobo
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('MIRANDA', 'parroquia', 108);

--Parroquia del municipio Montalban, Carabobo
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('MONTALBAN', 'parroquia', 109);

--Parroquia del municipio NAguanagua, Carabobo
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('NAGUANAGUA', 'parroquia', 110);

-- Parroquias del municipio Puerto Cabello, Carabobo
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('DEMOCRACIA', 'parroquia', 111),
  ('FRATERNIDAD', 'parroquia', 111),
  ('GOAIGOAZA', 'parroquia', 111),
  ('JUAN JOSE FLORES', 'parroquia', 111),
  ('BARTOLOME SALOM', 'parroquia', 111),
  ('UNION', 'parroquia', 111),
  ('BORBURATA', 'parroquia', 111),
  ('PATANEMO', 'parroquia', 111);

-- Parroquia del municipio San Diego, Carabobo
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('URB SAN DIEGO', 'parroquia', 112);

--PArroquia del municipio San Joaquin, Carabobo
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('SAN JOAQUIN', 'parroquia', 113);

--PArroquias del municipio Valencia, Carabobo
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CANDELARIA', 'parroquia', 114),
  ('CATEDRAL', 'parroquia', 114),
  ('EL SOCORRO', 'parroquia', 114),
  ('MIGUEL PEÑA', 'parroquia', 114),
  ('SAN BLAS', 'parroquia', 114),
  ('SAN JOSE', 'parroquia', 114),
  ('SANTA ROSA', 'parroquia', 114),
  ('RAFAEL URDANETA', 'parroquia', 114),
  ('NEGRO PRIMERO', 'parroquia', 114);

-- Parroquias del municipio Anzoategui, Cojedes
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('COJEDES', 'parroquia', 115),
  ('JUAN DE MATA SUAREZ', 'parroquia', 115);

--PArroquias del municipio San Carlos, Cojedes
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('SAN CARLOS DE AUSTRIA', 'parroquia', 116),
  ('JUAN ANGEL BRAVO', 'parroquia', 116),
  ('MANUEL MANRIQUE', 'parroquia', 116);

--PArroquias del municipio Girardot, Cojedes
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('EL BAUL', 'parroquia', 117),
  ('SUCRE', 'parroquia', 117);

--Parroquias del municipio Lima Blanco, Cojedes
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('MACAPO', 'parroquia', 118),
  ('LA AGUADITA', 'parroquia', 118);

--PArroquias del municipio PAo de San Juan Bautista, Cojedes
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('EL PAO', 'parroquia', 119);

--Parroquias del municipio Ricaurte, Cojedes
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('LIBERTAD DE COJEDES', 'parroquia', 120),
  ('EL AMPARO', 'parroquia', 120);
  
--Parroquia del municipio Romulo Gallegos, Cojedes
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('ROMULO GALLEGOS', 'parroquia', 121);

-- Parroquia del municipio Tinaco, Cojedes
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('GRL/JEFE JOSE L SILVA', 'parroquia', 122);

-- PArroquia del municipio Tinaquillo, Cojedes
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('TINAQUILLO', 'parroquia', 123);

-- Parroquias del municipio ANdres Diaz, Delta Amacura
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CURIAPO', 'parroquia', 124),
  ('SANTOS DE ABELGAS', 'parroquia', 124),
  ('MANUEL RENAUD', 'parroquia', 124),
  ('PADRE BARRAL', 'parroquia', 124),
  ('ANICETO LUGO', 'parroquia', 124),
  ('ALMIRANTE LUIS BRION', 'parroquia', 124);

-- Parroquias del municipio Casacoima, Delta Amacuro
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('IMATACA', 'parroquia', 125),
  ('ROMULO GALLEGOS', 'parroquia', 125),
  ('JUAN BAUTISTA ARISMEN', 'parroquia', 125),
  ('MANUEL PIAR', 'parroquia', 125),
  ('5 DE JULIO', 'parroquia', 125);

-- Parroquias del municipio Pedernales, Delta Amacuro
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('PEDERNALES', 'parroquia', 126),
  ('LUIS B PRIETO FIGUERO', 'parroquia', 126);

-- Parroquia del municipio Tucupita, Delta Amacuro
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('SAN JOSE', 'parroquia', 127),
  ('VIRGEN DEL VALLE', 'parroquia', 127),
  ('SAN RAFAEL', 'parroquia', 127),
  ('JOSE VIDAL MARCANO', 'parroquia', 127),
  ('LEONARDO RUIZ PINEDA', 'parroquia', 127),
  ('MONS. ARGIMIRO GARCIA', 'parroquia', 127),
  ('MCL.ANTONIO J DE SUCRE', 'parroquia', 127),
  ('JUAN MILLAN', 'parroquia', 127);

-- Parroquias del municipio Distrito Capital, Caracas
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('ALTAGRACIA', 'parroquia', 128),
  ('CANDELARIA', 'parroquia', 128),
  ('CATEDRAL', 'parroquia', 128),
  ('LA PASTORA', 'parroquia', 128),
  ('SAN AGUSTIN', 'parroquia', 128),
  ('SAN JOSE', 'parroquia', 128),
  ('SAN JUAN', 'parroquia', 128),
  ('SANTA ROSALIA', 'parroquia', 128),
  ('SANTA TERESA', 'parroquia', 128),
  ('SUCRE', 'parroquia', 128),
  ('23 DE ENERO', 'parroquia', 128),
  ('ANTIMANO', 'parroquia', 128),
  ('EL RECREO', 'parroquia', 128),
  ('EL VALLE', 'parroquia', 128),
  ('LA VEGA', 'parroquia', 128),
  ('MACARAO', 'parroquia', 128),
  ('CARICUAO', 'parroquia', 128),
  ('EL JUNQUITO', 'parroquia', 128),
  ('COCHE', 'parroquia', 128),
  ('SAN PEDRO', 'parroquia', 128),
  ('SAN BERNARDINO', 'parroquia', 128),
  ('EL PARAISO', 'parroquia', 128);

-- Parroquiasd el municipio Acosta, Falcon
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('SAN JUAN DE LOS CAYOS', 'parroquia', 129),
  ('CAPADARE', 'parroquia', 129),
  ('LA PASTORA', 'parroquia', 129),
  ('LIBERTADOR', 'parroquia', 129);

-- Parroquias del municipio Bolivar, Falcon
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('SAN LUIS', 'parroquia', 130),
  ('ARACUA', 'parroquia', 130),
  ('LA PEÑA', 'parroquia', 130);

-- Parroquias del municipio Buchivacoa, Falcon
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CAPATARIDA', 'parroquia', 131),
  ('BOROJO', 'parroquia', 131),
  ('SEQUE', 'parroquia', 131),
  ('ZAZARIDA', 'parroquia', 131),
  ('BARIRO', 'parroquia', 131),
  ('GUAJIRO', 'parroquia', 131);

-- Parroquias del municipio Carirubana, Falcon
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('NORTE', 'parroquia', 132),
  ('CARIRUBANA', 'parroquia', 132),
  ('PUNTA CARDON', 'parroquia', 132),
  ('SANTA ANA', 'parroquia', 132);

-- Parroquias del municipio COlina, Falcon
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('LA VELA DE CORO', 'parroquia', 133),
  ('ACURIGUA', 'parroquia', 133),
  ('GUAIBACOA', 'parroquia', 133),
  ('MACORUCA', 'parroquia', 133),
  ('LAS CALDERAS', 'parroquia', 133);

-- Parroquia del municipio Dabajuro, Falcon
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. DABAJURO', 'parroquia', 134);

-- Parroquias del municipio Democracia
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('PEDREGAL', 'parroquia', 135),
  ('AGUA CLARA', 'parroquia', 135),
  ('AVARIA', 'parroquia', 135),
  ('PIEDRA GRANDE', 'parroquia', 135),
  ('PURURECHE', 'parroquia', 135);

--Parroquias del municipio Falcon, Falcon
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('PUEBLO NUEVO', 'parroquia', 136),
  ('ADICORA', 'parroquia', 136),
  ('BARAIVED', 'parroquia', 136),
  ('BUENA VISTA', 'parroquia', 136),
  ('JADACAQUIVA', 'parroquia', 136),
  ('MORUY', 'parroquia', 136),
  ('EL VINCULO', 'parroquia', 136),
  ('EL HATO', 'parroquia', 136),
  ('ADAURE', 'parroquia', 136);

-- Parroquias del municipio Federacion, Falcon
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CHURUGUARA', 'parroquia', 137),
  ('AGUA LARGA', 'parroquia', 137),
  ('INDEPENDENCIA', 'parroquia', 137),
  ('MAPARARI', 'parroquia', 137),
  ('EL PAUJI', 'parroquia', 137);

--Parroquias del municipio Iturriza, Falcon
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CHICHIRIVICHE', 'parroquia', 138),
  ('BOCA DE TOCUYO', 'parroquia', 138),
  ('TOCUYO DE LA COSTA', 'parroquia', 138);

--Parroquias del municipio JAcura, Falcon
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('JACURA', 'parroquia', 139),
  ('AGUA LINDA', 'parroquia', 139),
  ('ARAURIMA', 'parroquia', 139);

-- Parroquias del municipio Los Taques, Falcon
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('LOS TAQUES', 'parroquia', 140),
  ('JUDIBANA', 'parroquia', 140);

-- Parroquia del minicipio Manaure, Falcon
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. YARACAL', 'parroquia', 141);

-- Parroquias del municipio Mauroa, Falcon
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('MENE DE MAUROA', 'parroquia', 142),
  ('CASIGUA', 'parroquia', 142),
  ('SAN FELIX', 'parroquia', 142);

-- Parroquias del municipio Miranda, Falcon
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('SAN ANTONIO', 'parroquia', 143),
  ('SAN GABRIEL', 'parroquia', 143),
  ('SANTA ANA', 'parroquia', 143),
  ('GUZMAN GUILLERMO', 'parroquia', 143),
  ('MITARE', 'parroquia', 143),
  ('SABANETA', 'parroquia', 143),
  ('RIO SECO', 'parroquia', 143);

--Parroquia del municipio Palmasola, Falcon
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. PALMA SOLA', 'parroquia', 144);

-- Parroquias del municipio Petit, Falcon
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CABURE', 'parroquia', 145),
  ('CURIMAGUA', 'parroquia', 145),
  ('COLINA', 'parroquia', 145);

--Parroquias del municipio Piritu, Falcon
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('PIRITU', 'parroquia', 146),
  ('SAN JOSE DE LA COSTA', 'parroquia', 146);

--PArroquia del municipio San Francisco, Falcon
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. MIRIMIRE', 'parroquia', 147);

--Parroquias del municipio Sucre, Falcon
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('SUCRE', 'parroquia', 148),
  ('PECAYA', 'parroquia', 148);

-- Parroquias del municipio Silva, Falcon
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('TUCACAS', 'parroquia', 149),
  ('BOCA DE AROA', 'parroquia', 149);

-- Parroquia del municipio Tocopero, Falcon
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. TOCOPERO', 'parroquia', 150);

-- Parroquias del municipio Union
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('STA.CRUZ DE BUCARAL', 'parroquia', 151),
  ('EL CHARAL', 'parroquia', 151),
  ('LAS VEGAS DEL TUY', 'parroquia', 151);

--PArroquias del municipio Urumaco, Falcon
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('URUMACO', 'parroquia', 152),
  ('BRUZUAL', 'parroquia', 152);

--PArroquias del municipio Zamora, Falcon
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('PUERTO CUMAREBO', 'parroquia', 153),
  ('LA CIENAGA', 'parroquia', 153),
  ('LA SOLEDAD', 'parroquia', 153),
  ('PUEBLO CUMAREBO', 'parroquia', 153),
  ('ZAZARIDA', 'parroquia', 153);

--Parroquias del municipio Camaguan, Guarico
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CAMAGUAN', 'parroquia', 154),
  ('PUERTO MIRANDA', 'parroquia', 154),
  ('UVERITO', 'parroquia', 154);

-- Parroquia del municipio Chaguaramas, Guarico
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CHAGUARAMAS', 'parroquia', 155);

--PArroquias del municipio El Socorro, Guarico
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('EL SOCORRO', 'parroquia', 156);

-- Parroquias del municipio Frnacisco de Miranda, Guarico
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CALABOZO', 'parroquia', 157),
  ('EL CALVARIO', 'parroquia', 157),
  ('EL RASTRO', 'parroquia', 157),
  ('GUARDATINAJAS', 'parroquia', 157);

-- Parroquias del municipio Jose Felix Ribas, Guarico
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('TUCUPIDO', 'parroquia', 158),
  ('SAN RAFAEL DE LAYA', 'parroquia', 158);
  
-- Parroquias del municicpio Jose Tadeo Monagas
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('ALTAGRACIA DE ORITUCO', 'parroquia', 161),
  ('LEZAMA', 'parroquia', 161),
  ('LIBERTAD DE ORITUCO', 'parroquia', 161),
  ('SAN FCO DE MACAIRA', 'parroquia', 161),
  ('SAN RAFAEL DE ORITUCO', 'parroquia', 161),
  ('SOUBLETTE', 'parroquia', 161),
  ('PASO REAL DE MACAIRA', 'parroquia', 161);

--Parroquias del municipio Juan Roman Roscio
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('SAN JUAN DE LOS MORROS', 'parroquia', 160),
  ('PARAPARA', 'parroquia', 160),
  ('CANTAGALLO', 'parroquia', 160);

--Parroquias del municipio Juan Jose Rondon, Guarico
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('LAS MERCEDES', 'parroquia', 161),
  ('STA RITA DE MANAPIRE', 'parroquia', 161),
  ('CABRUTA', 'parroquia', 161);

--Parroquias del municipio Julian Mellado, Guarico
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('EL SOMBRERO', 'parroquia', 162),
  ('SOSA', 'parroquia', 162);

--Parroquias del municipio Leonardo Infante, Guarico
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('VALLE DE LA PASCUA', 'parroquia', 163),
  ('ESPINO', 'parroquia', 163);

--Parroquias del municipio Ortiz, Guarico
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('ORTIZ', 'parroquia', 164),
  ('SAN FCO. DE TIZNADOS', 'parroquia', 164),
  ('SAN JOSE DE TIZNADOS', 'parroquia', 164),
  ('S LORENZO DE TIZNADOS', 'parroquia', 164);

-- Parroquias del municipio San Geronimo de Guayabal, Guarico
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('GUAYABAL', 'parroquia', 165),
  ('CAZORLA', 'parroquia', 165);

--Parroquias del municipio San Jose de Guaribe
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('SAN JOSE DE GUARIBE', 'parroquia', 166);

-- Parroquias del municipio Santa Maria de Ipire, Guarico
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('SANTA MARIA DE IPIRE', 'parroquia', 167),
  ('ALTAMIRA', 'parroquia', 167);

-- Parroquias del municipio Zaraza, Guarico
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('ZARAZA', 'parroquia', 168),
  ('SAN JOSE DE UNARE', 'parroquia', 168);

-- Parroquias del municipio Andres Eloy Blanco, Lara
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('PIO TAMAYO', 'parroquia', 169),
  ('YACAMBU', 'parroquia', 169),
  ('QBDA. HONDA DE GUACHE', 'parroquia', 169);

-- Parroquias del municipio Crespo, Lara
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('FREITEZ', 'parroquia', 170),
  ('JOSE MARIA BLANCO', 'parroquia', 170);

-- Parroquias del municipio Iribarren
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CATEDRAL', 'parroquia', 171),
  ('LA CONCEPCION', 'parroquia', 171),
  ('SANTA ROSA', 'parroquia', 171),
  ('UNION', 'parroquia', 171),
  ('EL CUJI', 'parroquia', 171),
  ('TAMACA', 'parroquia', 171),
  ('JUAN DE VILLEGAS', 'parroquia', 171),
  ('AGUEDO fk_lugar. ALVARADO', 'parroquia', 171),
  ('BUENA VISTA', 'parroquia', 171),
  ('JUAREZ', 'parroquia', 171);

-- Parroquias del municipio Jimenez, Lara
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('JUAN B RODRIGUEZ', 'parroquia', 172),
  ('DIEGO DE LOZADA', 'parroquia', 172),
  ('SAN MIGUEL', 'parroquia', 172),
  ('CUARA', 'parroquia', 172),
  ('PARAISO DE SAN JOSE', 'parroquia', 172),
  ('TINTORERO', 'parroquia', 172),
  ('JOSE BERNARDO DORANTE', 'parroquia', 172),
  ('CRNEL. MARIANO PERAZA', 'parroquia', 172);

-- Parroquias del municipio Moran, Lara
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('BOLIVAR', 'parroquia', 173),
  ('ANZOATEGUI', 'parroquia', 173),
  ('GUARICO', 'parroquia', 173),
  ('HUMOCARO ALTO', 'parroquia', 173),
  ('HUMOCARO BAJO', 'parroquia', 173),
  ('MORAN', 'parroquia', 173),
  ('HILARIO LUNA Y LUNA', 'parroquia', 173),
  ('LA CANDELARIA', 'parroquia', 173);

-- Parroquias del municipio Palavecino, Lara
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CABUDARE', 'parroquia', 174),
  ('JOSE G. BASTIDAS', 'parroquia', 174),
  ('AGUA VIVA', 'parroquia', 174);

-- Parroquias del municipio Simon Planas, Lara
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('SARARE', 'parroquia', 175),
  ('GUSTAVO VEGAS LEON', 'parroquia', 175),
  ('BURIA', 'parroquia', 175);

-- Parroquias del municipio Torres, Lara
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('TRINIDAD SAMUEL', 'parroquia', 176),
  ('ANTONIO DIAZ', 'parroquia', 176),
  ('CAMACARO', 'parroquia', 176),
  ('CASTAÑEDA', 'parroquia', 176),
  ('CHIQUINQUIRA', 'parroquia', 176),
  ('ESPINOZA LOS MONTEROS', 'parroquia', 176),
  ('LARA', 'parroquia', 176),
  ('MANUEL MORILLO', 'parroquia', 176),
  ('MONTES DE OCA', 'parroquia', 176),
  ('TORRES', 'parroquia', 176),
  ('EL BLANCO', 'parroquia', 176),
  ('MONTA A VERDE', 'parroquia', 176),
  ('HERIBERTO ARROYO', 'parroquia', 176),
  ('LAS MERCEDES', 'parroquia', 176),
  ('CECILIO ZUBILLAGA', 'parroquia', 176),
  ('REYES VARGAS', 'parroquia', 176),
  ('ALTAGRACIA', 'parroquia', 176);

-- Parroquias del municipio Urdaneta, Lara
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('SIQUISIQUE', 'parroquia', 177),
  ('SAN MIGUEL', 'parroquia', 177),
  ('XAGUAS', 'parroquia', 177),
  ('MOROTURO', 'parroquia', 177);

-- Parroquias del municipio Vargas, La Guaira
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CARABALLEDA', 'parroquia', 178),
  ('CARAYACA', 'parroquia', 178),
  ('CARUAO', 'parroquia', 178),
  ('CATIA LA MAR', 'parroquia', 178),
  ('LA GUAIRA', 'parroquia', 178),
  ('MACUTO', 'parroquia', 178),
  ('MAIQUETIA', 'parroquia', 178),
  ('NAIGUATA', 'parroquia', 178),
  ('EL JUNKO', 'parroquia', 178),
  ('PQ RAUL LEONI', 'parroquia', 178),
  ('PQ CARLOS SOUBLETTE', 'parroquia', 178);

-- Parroquias del municipio Alberto Adriani, Merida
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('GABRIEL PICON G.', 'parroquia', 179),
  ('HECTOR AMABLE MORA', 'parroquia', 179),
  ('JOSE NUCETE SARDI', 'parroquia', 179),
  ('PULIDO MENDEZ', 'parroquia', 179),
  ('PTE. ROMULO GALLEGOS', 'parroquia', 179),
  ('PRESIDENTE BETANCOURT', 'parroquia', 179),
  ('PRESIDENTE PAEZ', 'parroquia', 179);

-- Parroquia del municipio Andres Bello, Merida
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. LA AZULITA', 'parroquia', 180);

-- Parroquias del municipio Antonio pinto Salinas, Merida
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. STA CRUZ DE MORA', 'parroquia', 181),
  ('MESA BOLIVAR', 'parroquia', 181),
  ('MESA DE LAS PALMAS', 'parroquia', 181);

-- Parroquias del municipio Aricagua, Merida
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. ARICAGUA', 'parroquia', 182),
  ('SAN ANTONIO', 'parroquia', 182);

-- Parroquias del municipio Arzobispo Chacon, Merida
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. CANAGUA', 'parroquia', 183),
  ('CAPURI', 'parroquia', 183),
  ('CHACANTA', 'parroquia', 183),
  ('EL MOLINO', 'parroquia', 183),
  ('GUAIMARAL', 'parroquia', 183),
  ('MUCUTUY', 'parroquia', 183),
  ('MUCUCHACHI', 'parroquia', 183);

-- Parroquias del municipio Campo Elias, Merida
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('ACEQUIAS', 'parroquia', 184),
  ('JAJI', 'parroquia', 184),
  ('LA MESA', 'parroquia', 184),
  ('SAN JOSE', 'parroquia', 184),
  ('MONTALBAN', 'parroquia', 184),
  ('MATRIZ', 'parroquia', 184),
  ('FERNANDEZ PEÑA', 'parroquia', 184);

-- Parroquias del municipio Caracciolo Parra Olmedo, Merida
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. TUCANI', 'parroquia', 185),
  ('FLORENCIO RAMIREZ', 'parroquia', 185);

-- Parroquias del municipio Cardenal Quintero, Merida
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. SANTO DOMINGO', 'parroquia', 186),
  ('LAS PIEDRAS', 'parroquia', 186);

-- Parroquias del municipio Guaraque, Merida
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. GUARAQUE', 'parroquia', 187),
  ('MESA DE QUINTERO', 'parroquia', 187),
  ('RIO NEGRO', 'parroquia', 187);


-- Parroquias del municipio Julio Cesar Salas
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. ARAPUEY', 'parroquia', 188),
  ('PALMIRA', 'parroquia', 188);

-- Parroquias del municipio Justo Briceño, Merida
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. TORONDOY', 'parroquia', 189),
  ('SAN CRISTOBAL DE T', 'parroquia', 189);

-- Parroquias del municipio Libertador, Merida
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('ARIAS', 'parroquia', 190),
  ('SAGRARIO', 'parroquia', 190),
  ('MILLA', 'parroquia', 190),
  ('EL LLANO', 'parroquia', 190),
  ('JUAN RODRIGUEZ SUAREZ', 'parroquia', 190),
  ('JACINTO PLAZA', 'parroquia', 190),
  ('DOMINGO PEÑA', 'parroquia', 190),
  ('GONZALO PICON FEBRES', 'parroquia', 190),
  ('OSUNA RODRIGUEZ', 'parroquia', 190),
  ('LASSO DE LA VEGA', 'parroquia', 190),
  ('CARACCIOLO PARRA P', 'parroquia', 190),
  ('MARIANO PICON SALAS', 'parroquia', 190),
  ('ANTONIO SPINETTI DINI', 'parroquia', 190),
  ('EL MORRO', 'parroquia', 190),
  ('LOS NEVADOS', 'parroquia', 190);

--Parroquias del municipio Miranda, Merida
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. TIMOTES', 'parroquia', 191),
  ('ANDRES ELOY BLANCO', 'parroquia', 191),
  ('PIÑANGO', 'parroquia', 191),
  ('LA VENTA', 'parroquia', 191);

-- Parroquias del municipio Obispo Ramos de Lora, Merida
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. STA ELENA DE ARENALES', 'parroquia', 192),
  ('ELOY PAREDES', 'parroquia', 192),
  ('PQ R DE ALCAZAR', 'parroquia', 192);

-- Parroquias del municipio Padre Noguera, MErida
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. STA MARIA DE CAPARO', 'parroquia', 193);

-- PArroquia del municipio Pueblo Llano, Merida
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. PUEBLO LLANO', 'parroquia', 194);

-- Parroquias del municipio Rangel, Merida
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. MUCUCHIES', 'parroquia', 195),
  ('MUCURUBA', 'parroquia', 195),
  ('SAN RAFAEL', 'parroquia', 195),
  ('CACUTE', 'parroquia', 195),
  ('LA TOMA', 'parroquia', 195);

-- Parroquias del municipio Rivas Davila, Merida
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. BAILADORES', 'parroquia', 196),
  ('GERONIMO MALDONADO', 'parroquia', 196);

-- PArroquias del municipio Santos MArquina, MErida
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. TABAY', 'parroquia', 197);

-- Parroquias del municipio Sucre, Merida
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. LAGUNILLAS', 'parroquia', 198),
  ('CHIGUARA', 'parroquia', 198),
  ('ESTANQUES', 'parroquia', 198),
  ('SAN JUAN', 'parroquia', 198),
  ('PUEBLO NUEVO DEL SUR', 'parroquia', 198),
  ('LA TRAMPA', 'parroquia', 198);

-- PArroquias del municipio Tovar, Merida
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('EL LLANO', 'parroquia', 199),
  ('TOVAR', 'parroquia', 199),
  ('EL AMPARO', 'parroquia', 199),
  ('SAN FRANCISCO', 'parroquia', 199);

-- Parroquias del municipio Tulio Febres Cordero, Merida
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. NUEVA BOLIVIA', 'parroquia', 200),
  ('INDEPENDENCIA', 'parroquia', 200),
  ('MARIA C PALACIOS', 'parroquia', 200),
  ('SANTA APOLONIA', 'parroquia', 200);

-- Parroquias del municipio Zea, Merida
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. ZEA', 'parroquia', 201),
  ('CAÑO EL TIGRE', 'parroquia', 201);

-- PArroquias del municipio Acevedo, Miranda
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CAUCAGUA', 'parroquia', 202),
  ('ARAGUITA', 'parroquia', 202),
  ('AREVALO GONZALEZ', 'parroquia', 202),
  ('CAPAYA', 'parroquia', 202),
  ('PANAQUIRE', 'parroquia', 202),
  ('RIBAS', 'parroquia', 202),
  ('EL CAFE', 'parroquia', 202),
  ('MARIZAPA', 'parroquia', 202);

-- Parroquias del municipio Andres BEllo, Miranda
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('SAN JOSE DE BARLOVENTO', 'parroquia', 203),
  ('CUMBO', 'parroquia', 203);

-- PArroquias del municipio Baruta, Miranda
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('BARUTA', 'parroquia', 204),
  ('EL CAFETAL', 'parroquia', 204),
  ('LAS MINAS DE BARUTA', 'parroquia', 204);

-- Parroquias del municipio Bolivar, Miranda
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('SAN FCO DE YARE', 'parroquia', 205),
  ('S ANTONIO DE YARE', 'parroquia', 205);

-- Parroquias del municipio Brion, Miranda
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('HIGUEROTE', 'parroquia', 206),
  ('CURIEPE', 'parroquia', 206),
  ('TACARIGUA', 'parroquia', 206);

-- PArroquia del municipio Buroz, Miranda
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('MAMPORAL', 'parroquia', 207);

-- Parroquia del municipio Carrizal, Miranda
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CARRIZAL', 'parroquia', 208);

-- Parroquia del municipio Chacao, Miranda
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CHACAO', 'parroquia', 209);

-- Parroquias del municipio Cristobal Rojas, Miranda
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CHARALLAVE', 'parroquia', 210),
  ('LAS BRISAS', 'parroquia', 210);

-- Parroquia del municipio El Hatillo
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('EL HATILLO', 'parroquia', 211);

-- Parroquias del municipio Guaicaipuro, Miranda
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('LOS TEQUES', 'parroquia', 212),
  ('CECILIO ACOSTA', 'parroquia', 212),
  ('PARACOTOS', 'parroquia', 212),
  ('SAN PEDRO', 'parroquia', 212),
  ('TACATA', 'parroquia', 212),
  ('EL JARILLO', 'parroquia', 212),
  ('ALTAGRACIA DE LA M', 'parroquia', 212);

-- PArroquias del municipio Gual, Miranda
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CUPIRA', 'parroquia', 213),
  ('MACHURUCUTO', 'parroquia', 213);

-- Parroquias del municipio Independencia, Miranda
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('STA TERESA DEL TUY', 'parroquia', 214),
  ('EL CARTANAL', 'parroquia', 214);

-- Parroquias del municipio Lander, Miranda
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('OCUMARE DEL TUY', 'parroquia', 215),
  ('LA DEMOCRACIA', 'parroquia', 215),
  ('SANTA BARBARA', 'parroquia', 215);

-- Parroquia del municipio Los Salias, Miranda
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('SAN ANTONIO LOS ALTOS', 'parroquia', 216);

-- Parroquias del municipio Paez, Miranda
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('RIO CHICO', 'parroquia', 217),
  ('EL GUAPO', 'parroquia', 217),
  ('TACARIGUA DE LA LAGUNA', 'parroquia', 217),
  ('PAPARO', 'parroquia', 217),
  ('SN FERNANDO DEL GUAPO', 'parroquia', 217);

-- Parroquia del municipio Paz Castillo, Miranda
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('SANTA LUCIA', 'parroquia', 218);

-- PArroquia del municipio Plaza, Miranda
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('GUARENAS', 'parroquia', 219);

-- PArroquias del municipio Sucre, Miranda
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('PETARE', 'parroquia', 220),
  ('LEONCIO MARTINEZ', 'parroquia', 220),
  ('CAUCAGUITA', 'parroquia', 220),
  ('FILAS DE MARICHES', 'parroquia', 220),
  ('LA DOLORITA', 'parroquia', 220);

-- Parroquias del municipio Urdaneta, Miranda
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CUA', 'parroquia', 221),
  ('NUEVA CUA', 'parroquia', 221);

-- Parroquias del municipio Zamora, Miranda
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('GUATIRE', 'parroquia', 222),
  ('ARAIRA', 'parroquia', 222);

-- Parroquias del municipio Acosta, Monagas
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. SAN ANTONIO', 'parroquia', 223),
  ('SAN FRANCISCO', 'parroquia', 223);

-- Parroquia del municipio Aguasay
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. AGUASAY', 'parroquia', 224);

-- Parroquia del municipio Bolivar, Monagas
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. CARIPITO', 'parroquia', 225);

--PArroquias del municipio Caripe, Monagas
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. CARIPE', 'parroquia', 226),
  ('TERESEN', 'parroquia', 226),
  ('EL GUACHARO', 'parroquia', 226),
  ('SAN AGUSTIN', 'parroquia', 226),
  ('LA GUANOTA', 'parroquia', 226),
  ('SABANA DE PIEDRA', 'parroquia', 226);

-- Parroquias del municipio Cedeño, Monagas
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. CAICARA', 'parroquia', 227),
  ('AREO', 'parroquia', 227),
  ('SAN FELIX', 'parroquia', 227),
  ('VIENTO FRESCO', 'parroquia', 227);

-- Parroquias del municipio Libertador, Monagas
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. TEMBLADOR', 'parroquia', 228),
  ('TABASCA', 'parroquia', 228),
  ('LAS ALHUACAS', 'parroquia', 228),
  ('CHAGUARAMAS', 'parroquia', 228);

-- Parroquias del municipio MAturin, Monagas
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('EL FURRIAL', 'parroquia', 229),
  ('JUSEPIN', 'parroquia', 229),
  ('EL COROZO', 'parroquia', 229),
  ('SAN VICENTE', 'parroquia', 229),
  ('LA PICA', 'parroquia', 229),
  ('ALTO DE LOS GODOS', 'parroquia', 229),
  ('BOQUERON', 'parroquia', 229),
  ('LAS COCUIZAS', 'parroquia', 229),
  ('SANTA CRUZ', 'parroquia', 229),
  ('SAN SIMON', 'parroquia', 229);

-- Parroquias del municipio Piar
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. ARAGUA', 'parroquia', 230),
  ('CHAGUARAMAL', 'parroquia', 230),
  ('GUANAGUANA', 'parroquia', 230),
  ('APARICIO', 'parroquia', 230),
  ('TAGUAYA', 'parroquia', 230),
  ('EL PINTO', 'parroquia', 230),
  ('LA TOSCANA', 'parroquia', 230);

-- Parroquias del municipio Punceres, Monagas
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. QUIRIQUIRE', 'parroquia', 231),
  ('CACHIPO', 'parroquia', 231);

-- Parroquias del municipio Santa Barbara, Monagas
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('MORON', 'parroquia', 232),
  ('CM. SANTA BARBARA', 'parroquia', 232);

-- Parroquias del municipio Sotillo, Monagas
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. BARRANCAS', 'parroquia', 233),
  ('LOS BARRANCOS DE FAJARDO', 'parroquia', 233);

-- Parroquias del municipio Uracoa, Monagas
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. URACOA', 'parroquia', 234);

-- Parroquias del municipio Zamora, Monagas
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. PUNTA DE MATA', 'parroquia', 235),
  ('EL TEJERO', 'parroquia', 235);

-- Parroquia del municipio Antolin del CAmpo, Nueva esparta
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('ANTOLIN DEL CAMPO', 'parroquia', 236),
  ('CM.LA PLAZA DE PARAGUACHI', 'parroquia', 236);

-- Parroquias del municipio Antonio Diaz, Nueva Esparta
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. SAN JUAN BAUTISTA', 'parroquia', 237),
  ('ZABALA', 'parroquia', 237);

-- Parroquia del muncicipio Arismendi, Nueva Esparta
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('ARISMENDI', 'parroquia', 238),
  ('CM. LA ASUNCION', 'parroquia', 238);

-- PArroquias del municipio GArcia, Nueva Esparta
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. VALLE ESP SANTO', 'parroquia', 239),
  ('FRANCISCO FAJARDO', 'parroquia', 239);

-- Parroquias del municipio Gomez, Nueva Esparta
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. SANTA ANA', 'parroquia', 240),
  ('GUEVARA', 'parroquia', 240),
  ('MATASIETE', 'parroquia', 240),
  ('BOLIVAR', 'parroquia', 240),
  ('SUCRE', 'parroquia', 240);

-- Parroquias del municipio Macanao, Nueva Esparta
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. BOCA DEL RIO', 'parroquia', 241),
  ('SAN FRANCISCO', 'parroquia', 241);

-- Parroquias del municipio MAneiro, Nueva Esparta
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. PAMPATAR', 'parroquia', 242),
  ('AGUIRRE', 'parroquia', 242);

-- PArroquia del municipio Marcano, Nueva Esparta
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. JUAN GRIEGO', 'parroquia', 243),
  ('ADRIAN', 'parroquia', 243);

-- Parroquias del municipio Mariño, Nueva Esparta
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('MARIÑO', 'parroquia', 244),
  ('CM. PORLAMAR', 'parroquia', 244);

-- Parroquias del municipio Tubores, Nueva Esparta
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. PUNTA DE PIEDRAS', 'parroquia', 245),
  ('LOS BARALES', 'parroquia', 245);

-- Parroquias del municipio Villalba, Nueva Esparta
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. SAN PEDRO DE COCHE', 'parroquia', 246),
  ('VICENTE FUENTES', 'parroquia', 246);

-- Parroquia del municipio Agua Blanca, Portuguesa
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. AGUA BLANCA', 'parroquia', 247);

-- Parroquias del municipio Araure, Portuguesa
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. ARAURE', 'parroquia', 248),
  ('RIO ACARIGUA', 'parroquia', 248);

-- Parroquias del municipio Esteller, Portuguesa
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. PIRITU', 'parroquia', 249),
  ('UVERAL', 'parroquia', 249);

-- Parroquias del municipio Guanare, Portuguesa
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. GUANARE', 'parroquia', 250),
  ('CORDOBA', 'parroquia', 250),
  ('SAN JUAN GUANAGUANARE', 'parroquia', 250),
  ('VIRGEN DE LA COROMOTO', 'parroquia', 250),
  ('SAN JOSE DE LA MONTAÑA', 'parroquia', 250);

-- Parroquias del municipio Guanarito, Portuguesa
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. GUANARITO', 'parroquia', 251),
  ('TRINIDAD DE LA CAPILLA', 'parroquia', 251),
  ('DIVINA PASTORA', 'parroquia', 251);

-- Parroquias del municipio Jose Vicente de Unda, Portuguesa
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. CHABASQUEN', 'parroquia', 252),
  ('PEÑA BLANCA', 'parroquia', 252);

-- Parroquias del municipio OSpino, Portuguesa
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. OSPINO', 'parroquia', 253),
  ('APARICION', 'parroquia', 253),
  ('LA ESTACION', 'parroquia', 253);

-- Parroquias del municipio Paez, Portuguesa
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. ACARIGUA', 'parroquia', 254),
  ('PAYARA', 'parroquia', 254),
  ('PIMPINELA', 'parroquia', 254),
  ('RAMON PERAZA', 'parroquia', 254);

-- Parroquias del municipio Papelon, Portuguesa
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. PAPELON', 'parroquia', 255),
  ('CAÑO DELGADITO', 'parroquia', 255);

-- Parroquias del municipio San Genaro de Boconoito, Portuguesa
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. BOCONOITO', 'parroquia', 256),
  ('ANTOLIN TOVAR AQUINO', 'parroquia', 256);

-- Parroquias del municipio San Rafael de Onoto, Portuguesa
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. SAN RAFAEL DE ONOTO', 'parroquia', 257),
  ('SANTA FE', 'parroquia', 257),
  ('THERMO MORLES', 'parroquia', 257);

-- Parroquias del municipio Santa Rosalia, Portuguesa
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. EL PLAYON', 'parroquia', 258),
  ('FLORIDA', 'parroquia', 258);

-- Parroquias del municipio Sucre, Portuguesa
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. BISCUCUY', 'parroquia', 259),
  ('CONCEPCION', 'parroquia', 259),
  ('SAN RAFAEL PALO ALZADO', 'parroquia', 259),
  ('UVENCIO A VELASQUEZ', 'parroquia', 259),
  ('SAN JOSE DE SAGUAZ', 'parroquia', 259),
  ('VILLA ROSA', 'parroquia', 259);

-- PArroquias del municipio Turen, Portuguesa
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. VILLA BRUZUAL', 'parroquia', 260),
  ('CANELONES', 'parroquia', 260),
  ('SANTA CRUZ', 'parroquia', 260),
  ('SAN ISIDRO LABRADOR', 'parroquia', 260);

-- Parroquias del municipio Andres Eloy Blanco, Sucre
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('MARIÑO', 'parroquia', 261),
  ('ROMULO GALLEGOS', 'parroquia', 261);

-- Parroquias del municipio Andres Mata, Sucre
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('SAN JOSE DE AREOCUAR', 'parroquia', 262),
  ('TAVERA ACOSTA', 'parroquia', 262);

-- Parroquias del municipio Arismendi, Sucre
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('RIO CARIBE', 'parroquia', 263),
  ('SAN JUAN GALDONAS', 'parroquia', 263),
  ('PUERTO SANTO', 'parroquia', 263),
  ('EL MORRO DE PTO SANTO', 'parroquia', 263),
  ('ANTONIO JOSE DE SUCRE', 'parroquia', 263);

-- Parroquias del municipio Benitez, Sucre
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('EL PILAR', 'parroquia', 264),
  ('EL RINCON', 'parroquia', 264),
  ('GUARAUNOS', 'parroquia', 264),
  ('TUNAPUICITO', 'parroquia', 264),
  ('UNION', 'parroquia', 264),
  ('GRAL FCO. A VASQUEZ', 'parroquia', 264);

-- Parroquiasd el municipio Bermudez, Sucre
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('SANTA CATALINA', 'parroquia', 265),
  ('SANTA ROSA', 'parroquia', 265),
  ('SANTA TERESA', 'parroquia', 265),
  ('BOLIVAR', 'parroquia', 265),
  ('MACARAPANA', 'parroquia', 265);

-- Parroquias del municipio Bolivar, Sucre
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. MARIGUITAR', 'parroquia', 266);

-- Parroquias del municipio Cajigal, Sucre
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('YAGUARAPARO', 'parroquia', 267),
  ('LIBERTAD', 'parroquia', 267),
  ('PAUJIL', 'parroquia', 267);

-- PArroquias del municipio Cruz Salmeron Acosta, Sucre
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('ARAYA', 'parroquia', 268),
  ('MANICUARE', 'parroquia', 268),
  ('CHACOPATA', 'parroquia', 268);

-- Parroquias del municipio Libertador
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('TUNAPUY', 'parroquia', 269),
  ('CAMPO ELIAS', 'parroquia', 269);

-- Parroquias del municipio Mariño, Sucre
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('IRAPA', 'parroquia', 270),
  ('CAMPO CLARO', 'parroquia', 270),
  ('SORO', 'parroquia', 270),
  ('SAN ANTONIO DE IRAPA', 'parroquia', 270),
  ('MARABAL', 'parroquia', 270);

-- Parroqui del municipio Mejia, Sucre
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. SAN ANT DEL GOLFO', 'parroquia', 271);

-- Parroquias del municipio Montes, Sucre
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CUMANACOA', 'parroquia', 272),
  ('ARENAS', 'parroquia', 272),
  ('ARICAGUA', 'parroquia', 272),
  ('COCOLLAR', 'parroquia', 272),
  ('SAN FERNANDO', 'parroquia', 272),
  ('SAN LORENZO', 'parroquia', 272);

-- Parroquias del municipio Ribero, Sucre
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CARIACO', 'parroquia', 273),
  ('CATUARO', 'parroquia', 273),
  ('RENDON', 'parroquia', 273),
  ('SANTA CRUZ', 'parroquia', 273),
  ('SANTA MARIA', 'parroquia', 273);

-- Parroquias del municipio Sucre, Sucre
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('ALTAGRACIA', 'parroquia', 274),
  ('AYACUCHO', 'parroquia', 274),
  ('SANTA INES', 'parroquia', 274),
  ('VALENTIN VALIENTE', 'parroquia', 274),
  ('SAN JUAN', 'parroquia', 274),
  ('GRAN MARISCAL', 'parroquia', 274),
  ('RAUL LEONI', 'parroquia', 274);

-- Parroquias del municipio Valdez
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('GUIRIA', 'parroquia', 275),
  ('CRISTOBAL COLON', 'parroquia', 275),
  ('PUNTA DE PIEDRA', 'parroquia', 275),
  ('BIDEAU', 'parroquia', 275);

-- Parroquias del municipio Andres BEllo, Tachira
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. CORDERO', 'parroquia', 276);

-- Parroquias del municipio Antonio Romulo Costa, Tachira
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. LAS MESAS', 'parroquia', 277);

-- Parroquias del municipio Ayacucho, Tachira
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. COLON', 'parroquia', 278),
  ('RIVAS BERTI', 'parroquia', 278),
  ('SAN PEDRO DEL RIO', 'parroquia', 278);

-- Parroquias del municipio Bolivar, Tachira
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. SAN ANT DEL TACHIRA', 'parroquia', 279),
  ('PALOTAL', 'parroquia', 279),
  ('JUAN VICENTE GOMEZ', 'parroquia', 279),
  ('ISAIAS MEDINA ANGARITA', 'parroquia', 279);

-- Parroquias del municipio Cardenas, Tachira
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. TARIBA', 'parroquia', 280),
  ('LA FLORIDA', 'parroquia', 280),
  ('AMENODORO RANGEL LAMU', 'parroquia', 280);

-- Parroquias del municipio Cordoba, Tachira
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. STA. ANA  DEL TACHIRA', 'parroquia', 281);

-- Parroquias del municipio Fernandez, Tachira
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM.SAN RAFAEL DEL PINAL', 'parroquia', 282),
  ('SANTO DOMINGO', 'parroquia', 282),
  ('ALBERTO ADRIANI', 'parroquia', 282);

-- Parroquia del municipio Francisco de Miranda
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. SAN JOSE DE BOLIVAR', 'parroquia', 283);

-- Parroquias del municipio Garcia de Hevia, Tachira
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. LA FRIA', 'parroquia', 284),
  ('BOCA DE GRITA', 'parroquia', 284),
  ('JOSE ANTONIO PAEZ', 'parroquia', 284);

-- Parroquias del municipio Guasimas, Tachira
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. PALMIRA', 'parroquia', 285);

-- Parroquias del municipio Independencia
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. CAPACHO NUEVO', 'parroquia', 286),
  ('JUAN GERMAN ROSCIO', 'parroquia', 286),
  ('ROMAN CARDENAS', 'parroquia', 286);

-- Parroquias del municipio Jauregui, Tachira
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. LA GRITA', 'parroquia', 287),
  ('EMILIO C. GUERRERO', 'parroquia', 287),
  ('MONS. MIGUEL A SALAS', 'parroquia', 287);

-- Parroquia del municipio Jose MAria Vargas, Tachira
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. EL COBRE', 'parroquia', 288);

-- Parroquias del municipio Junin, Tachira
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. RUBIO', 'parroquia', 289),
  ('BRAMON', 'parroquia', 289),
  ('LA PETROLEA', 'parroquia', 289),
  ('QUINIMARI', 'parroquia', 289);

-- PArroquias del municipio Libertad, Tachira
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. CAPACHO VIEJO', 'parroquia', 290),
  ('CIPRIANO CASTRO', 'parroquia', 290),
  ('MANUEL FELIPE RUGELES', 'parroquia', 290);

-- Parroquias del municipio Libertador, Tachira
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. ABEJALES', 'parroquia', 291),
  ('SAN JOAQUIN DE NAVAY', 'parroquia', 291),
  ('DORADAS', 'parroquia', 291),
  ('EMETERIO OCHOA', 'parroquia', 291);

-- Parroquias del municipio Lobatera, Tachira
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. LOBATERA', 'parroquia', 292),
  ('CONSTITUCION', 'parroquia', 292);

-- Parroquia del municipio Michelena
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. MICHELENA', 'parroquia', 293);

-- Parroquias del municipio Panamericano, Tachira
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. COLONCITO', 'parroquia', 294),
  ('LA PALMITA', 'parroquia', 294);

-- Parroquias del municipio Pedro Maria Ureña, Tachira
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. UREÑA', 'parroquia', 295),
  ('NUEVA ARCADIA', 'parroquia', 295);

-- Parroqui del municipio Rafael Urdaneta, Tachira
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. DELICIAS', 'parroquia', 296);

-- Parroquias del municipio Samuel Dario Maldonado
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. LA TENDIDA', 'parroquia', 297),
  ('BOCONO', 'parroquia', 297),
  ('HERNANDEZ', 'parroquia', 297);

-- Parroquias del municipio San Cristobal, Tachira
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('LA CONCORDIA', 'parroquia', 298),
  ('PEDRO MARIA MORANTES', 'parroquia', 298),
  ('SN JUAN BAUTISTA', 'parroquia', 298),
  ('SAN SEBASTIAN', 'parroquia', 298),
  ('DR. FCO. ROMERO LOBO', 'parroquia', 298);

-- Parroquia del municipio San Judas Tadeo, Tachira
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. UMUQUENA', 'parroquia', 299);

-- Parroquias del municipio Seboruco, TAchira
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. SEBORUCO', 'parroquia', 300);

-- Parroquias del municipio Simon Rodriguez, Tachira
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. SAN SIMON', 'parroquia', 301);

-- Parroquias del municipio Sucre, TAchira
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. QUENIQUEA', 'parroquia', 302),
  ('SAN PABLO', 'parroquia', 302),
  ('ELEAZAR LOPEZ CONTRERA', 'parroquia', 302);

-- Parroquias del municipio Torbes, Tachira
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. SAN JOSECITO', 'parroquia', 303);

-- Parroquias del municipio Uribante, TAchira
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. PREGONERO', 'parroquia', 304),
  ('CARDENAS', 'parroquia', 304),
  ('POTOSI', 'parroquia', 304),
  ('JUAN PABLO PEÑALOZA', 'parroquia', 304);


-- PArroquias del municipio Andres Bello, Trujillo
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('SANTA ISABEL', 'parroquia', 305),
  ('ARAGUANEY', 'parroquia', 305),
  ('EL JAGUITO', 'parroquia', 305),
  ('LA ESPERANZA', 'parroquia', 305);

-- Parroquias del municipio Bocono, Trujillo
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('BOCONO', 'parroquia', 306),
  ('EL CARMEN', 'parroquia', 306),
  ('MOSQUEY', 'parroquia', 306),
  ('AYACUCHO', 'parroquia', 306),
  ('BURBUSAY', 'parroquia', 306),
  ('GENERAL RIVAS', 'parroquia', 306),
  ('MONSEÑOR JAUREGUI', 'parroquia', 306),
  ('RAFAEL RANGEL', 'parroquia', 306),
  ('SAN JOSE', 'parroquia', 306),
  ('SAN MIGUEL', 'parroquia', 306),
  ('GUARAMACAL', 'parroquia', 306),
  ('LA VEGA DE GUARAMACAL', 'parroquia', 306);

-- Parroquias del municipio Bolivar
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('SABANA GRANDE', 'parroquia', 307),
  ('CHEREGUE', 'parroquia', 307),
  ('GRANADOS', 'parroquia', 307);

-- Parroquias del municipio Candelaria, Trujillo
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CHEJENDE', 'parroquia', 308),
  ('CARRILLO', 'parroquia', 308),
  ('CEGARRA', 'parroquia', 308),
  ('BOLIVIA', 'parroquia', 308),
  ('MANUEL SALVADOR ULLOA', 'parroquia', 308),
  ('SAN JOSE', 'parroquia', 308),
  ('ARNOLDO GABALDON', 'parroquia', 308);

-- Parroquias del municipio Carache, Trujillo
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CARACHE', 'parroquia', 309),
  ('LA CONCEPCION', 'parroquia', 309),
  ('CUICAS', 'parroquia', 309),
  ('PANAMERICANA', 'parroquia', 309),
  ('SANTA CRUZ', 'parroquia', 309);

-- Parroquias del municipio Carvajal, Trujillo
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CARVAJAL', 'parroquia', 310),
  ('ANTONIO N BRICEÑO', 'parroquia', 310),
  ('CAMPO ALEGRE', 'parroquia', 310),
  ('JOSE LEONARDO SUAREZ', 'parroquia', 310);

-- Parroquias del municipio Escuque
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('ESCUQUE', 'parroquia', 311),
  ('SABANA LIBRE', 'parroquia', 311),
  ('LA UNION', 'parroquia', 311),
  ('SANTA RITA', 'parroquia', 311);

-- Parroquias del municipio Juan Vicente Campos Elias
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CAMPO ELIAS', 'parroquia', 312),
  ('ARNOLDO GABALDON', 'parroquia', 312),
  ('SANTA APOLONIA', 'parroquia', 312);

-- PArroquias del municipio La Ceiba, Trujillo
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('LA CEIBA', 'parroquia', 313),
  ('EL PROGRESO', 'parroquia', 313),
  ('TRES DE FEBRERO', 'parroquia', 313);

-- Parroquias del municipio Marquez Cañizales
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('EL SOCORRO', 'parroquia', 314),
  ('LOS CAPRICHOS', 'parroquia', 314),
  ('ANTONIO JOSE DE SUCRE', 'parroquia', 314);

-- PArroquias del municipio Miranda, TRujillo
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('EL DIVIDIVE', 'parroquia', 315),
  ('AGUA CALIENTE', 'parroquia', 315),
  ('EL CENIZO', 'parroquia', 315),
  ('AGUA SANTA', 'parroquia', 315),
  ('VALERITA', 'parroquia', 315);

-- Parroquias del municipio Monte Carmelo
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('MONTE CARMELO', 'parroquia', 316),
  ('BUENA VISTA', 'parroquia', 316),
  ('STA MARIA DEL HORCON', 'parroquia', 316);

-- PArroquias del municipio Motatan, Trujillo
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('MOTATAN', 'parroquia', 317),
  ('EL BAÑO', 'parroquia', 317),
  ('JALISCO', 'parroquia', 317);

-- Parroquias del municipio Pampan, TRujillo
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('PAMPAN', 'parroquia', 318),
  ('SANTA ANA', 'parroquia', 318),
  ('LA PAZ', 'parroquia', 318),
  ('FLOR DE PATRIA', 'parroquia', 318);

-- Parroquias del municipio PAmpanito, TRujillo
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('PAMPANITO', 'parroquia', 319),
  ('PAMPANITO II', 'parroquia', 319),
  ('LA CONCEPCION', 'parroquia', 319);

-- Parroquias del municipio Rangel, TRujillo
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('BETIJOQUE', 'parroquia', 320),
  ('JOSE G HERNANDEZ', 'parroquia', 320),
  ('LA PUEBLITA', 'parroquia', 320),
  ('EL CEDRO', 'parroquia', 320);

-- Parroquias del municipio Sucre, TRujillo
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('SABANA DE MENDOZA', 'parroquia', 321),
  ('JUNIN', 'parroquia', 321),
  ('VALMORE RODRIGUEZ', 'parroquia', 321),
  ('EL PARAISO', 'parroquia', 321);

-- Parroquias del municipio Trujillo, Trujillo
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CRISTOBAL MENDOZA', 'parroquia', 322),
  ('CHIQUINQUIRA', 'parroquia', 322),
  ('MATRIZ', 'parroquia', 322),
  ('MONSEÑOR CARRILLO', 'parroquia', 322),
  ('CRUZ CARRILLO', 'parroquia', 322),
  ('ANDRES LINARES', 'parroquia', 322),
  ('TRES ESQUINAS', 'parroquia', 322);

-- Parroquias del municipio Urdaneta, Trujillo
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('LA QUEBRADA', 'parroquia', 323),
  ('JAJO', 'parroquia', 323),
  ('LA MESA', 'parroquia', 323),
  ('SANTIAGO', 'parroquia', 323),
  ('CABIMBU', 'parroquia', 323),
  ('TUÑAME', 'parroquia', 323);

--Parroquias del municipio Valera, Trujillo
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('MERCEDES DIAZ', 'parroquia', 324),
  ('JUAN IGNACIO MONTILLA', 'parroquia', 324),
  ('LA BEATRIZ', 'parroquia', 324),
  ('MENDOZA', 'parroquia', 324),
  ('LA PUERTA', 'parroquia', 324),
  ('SAN LUIS', 'parroquia', 324);

-- Parroquias del municipio Aristides Bastidas, Yaracuy
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. SAN PABLO', 'parroquia', 325);

-- Parroquia del municipio Bolivar, Yaracuy
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. AROA', 'parroquia', 326);

-- Parroquias del municipio Bruzual
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. CHIVACOA', 'parroquia', 327),
  ('CAMPO ELIAS', 'parroquia', 327);

-- Parroquias del municipio Cocorote, Yaracuy
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. COCOROTE', 'parroquia', 328);

-- Parroquia del municipio Independencia, Yaracuy
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. INDEPENDENCIA', 'parroquia', 329);

-- Parroquia del municipio Jose Antonio Paez, Yaracuy
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. SABANA DE PARRA', 'parroquia', 330);

-- Parroquia del municipio La Trinidad, Yaracuy
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. BORAURE', 'parroquia', 331);

-- Parroquia del municipio MAnuel Monge, Yaracuy
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. YUMARE', 'parroquia', 332);

-- Parroquias del municipio Nirgua, Yaracuy
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. NIRGUA', 'parroquia', 333),
  ('SALOM', 'parroquia', 333),
  ('TEMERLA', 'parroquia', 333);

-- Parroquias del municipio Peña, Yaracuy
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. YARITAGUA', 'parroquia', 334),
  ('SAN ANDRES', 'parroquia', 334);

-- Parroquias del municipio San Felipe
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. SAN FELIPE', 'parroquia', 335),
  ('ALBARICO', 'parroquia', 335),
  ('SAN JAVIER', 'parroquia', 335);

-- Parroquia del municipio Sucre, Yaracuy
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. GUAMA', 'parroquia', 336);

-- PArroquia del municipio Urachiche, YAracuy
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. URACHICHE', 'parroquia', 337);

-- Parroquias del municipio Veroes, YAracuy
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('CM. FARRIAR', 'parroquia', 338),
  ('EL GUAYABO', 'parroquia', 338);

-- Parroquias del municipio Almirante Padilla, Zulia
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('MONAGAS', 'parroquia', 339),
  ('ISLA DE TOAS', 'parroquia', 339);

-- Parroquias del municipio BAralt, Zulia
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('GENERAL URDANETA', 'parroquia', 340),
  ('LIBERTADOR', 'parroquia', 340),
  ('MANUEL GUANIPA MATOS', 'parroquia', 340),
  ('MARCELINO BRICEÑO', 'parroquia', 340),
  ('SAN TIMOTEO', 'parroquia', 340),
  ('PUEBLO NUEVO', 'parroquia', 340);

-- Parroquias del municipio Cabimas, Zulia
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('AMBROSIO', 'parroquia', 341),
  ('GERMAN RIOS LINARES', 'parroquia', 341),
  ('JORGE HERNANDEZ', 'parroquia', 341),
  ('LA ROSA', 'parroquia', 341),
  ('PUNTA GORDA', 'parroquia', 341),
  ('CARMEN HERRERA', 'parroquia', 341),
  ('SAN BENITO', 'parroquia', 341),
  ('ROMULO BETANCOURT', 'parroquia', 341),
  ('ARISTIDES CALVANI', 'parroquia', 341);

-- PArroquias del municipio Catatumbo, Zulia
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('UDON PEREZ', 'parroquia', 342),
  ('ENCONTRADOS', 'parroquia', 342);

-- Parroquias del municipio Colon, Zulia
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('SANTA CRUZ DEL ZULIA', 'parroquia', 343),
  ('URRIBARRI', 'parroquia', 343),
  ('MORALITO', 'parroquia', 343),
  ('SAN CARLOS DEL ZULIA', 'parroquia', 343),
  ('SANTA BARBARA', 'parroquia', 343);

-- Parroquias del municipio Francisco JAvier Pulgar, Zulia
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('SIMON RODRIGUEZ', 'parroquia', 344),
  ('CARLOS QUEVEDO', 'parroquia', 344),
  ('FRANCISCO J PULGAR', 'parroquia', 344);

-- PArroquias del municipio Guajira, Zulia
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('GOAJIRA', 'parroquia', 345),
  ('ELIAS SANCHEZ RUBIO', 'parroquia', 345),
  ('SINAMAICA', 'parroquia', 345),
  ('ALTA GUAJIRA', 'parroquia', 345);

-- Parroquias del municipio Jesus Enrique Lossada, Zulia
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('JOSE RAMON YEPEZ', 'parroquia', 346),
  ('LA CONCEPCION', 'parroquia', 346),
  ('SAN JOSE', 'parroquia', 346),
  ('MARIANO PARRA LEON', 'parroquia', 346);

-- Parroquias del municipio Jesus Maria Semprun
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('BARI', 'parroquia', 347),
  ('JESUS M SEMPRUN', 'parroquia', 347);

-- Parroquias del municipio La Cañada de Urdaneta
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('ANDRES BELLO', 'parroquia', 348),
  ('POTRERITOS', 'parroquia', 348),
  ('EL CARMELO', 'parroquia', 348),
  ('CHIQUINQUIRA', 'parroquia', 348),
  ('CONCEPCION', 'parroquia', 348);

-- Parroquias del municipio Lagunillas
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('ELEAZAR LOPEZ C', 'parroquia', 349),
  ('ALONSO DE OJEDA', 'parroquia', 349),
  ('VENEZUELA', 'parroquia', 349),
  ('CAMPO LARA', 'parroquia', 349),
  ('LIBERTAD', 'parroquia', 349);

-- PArroquias del municipio Machiques de Perija, Zulia
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('SAN JOSE DE PERIJA', 'parroquia', 350),
  ('BARTOLOME DE LAS CASAS', 'parroquia', 350),
  ('LIBERTAD', 'parroquia', 350),
  ('RIO NEGRO', 'parroquia', 350);

-- Parroquias del municipio Mara, Zulia
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('LUIS DE VICENTE', 'parroquia', 351),
  ('RICAURTE', 'parroquia', 351),
  ('MONS.MARCOS SERGIO G', 'parroquia', 351),
  ('SAN RAFAEL', 'parroquia', 351),
  ('LAS PARCELAS', 'parroquia', 351),
  ('TAMARE', 'parroquia', 351),
  ('LA SIERRITA', 'parroquia', 351);

-- Parroquias del municipio Maracaibo, Zulia
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('BOLIVAR', 'parroquia', 352),
  ('COQUIVACOA', 'parroquia', 352),
  ('CRISTO DE ARANZA', 'parroquia', 352),
  ('CHIQUINQUIRA', 'parroquia', 352),
  ('SANTA LUCIA', 'parroquia', 352),
  ('OLEGARIO VILLALOBOS', 'parroquia', 352),
  ('JUANA DE AVILA', 'parroquia', 352),
  ('CARACCIOLO PARRA PEREZ', 'parroquia', 352),
  ('IDELFONZO VASQUEZ', 'parroquia', 352),
  ('CACIQUE MARA', 'parroquia', 352),
  ('CECILIO ACOSTA', 'parroquia', 352),
  ('RAUL LEONI', 'parroquia', 352),
  ('FRANCISCO EUGENIO B', 'parroquia', 352),
  ('MANUEL DAGNINO', 'parroquia', 352),
  ('LUIS HURTADO HIGUERA', 'parroquia', 352),
  ('VENANCIO PULGAR', 'parroquia', 352),
  ('ANTONIO BORJAS ROMERO', 'parroquia', 352),
  ('SAN ISIDRO', 'parroquia', 352);

-- Parroquias del municipio Miranda, Zulia
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('FARIA', 'parroquia', 353),
  ('SAN ANTONIO', 'parroquia', 353),
  ('ANA MARIA CAMPOS', 'parroquia', 353),
  ('SAN JOSE', 'parroquia', 353),
  ('ALTAGRACIA', 'parroquia', 353);

-- Parroquias del municipio Rosario de Perija, Zulia
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('DONALDO GARCIA', 'parroquia', 354),
  ('SIXTO ZAMBRANO', 'parroquia', 354),
  ('EL ROSARIO', 'parroquia', 354);

-- Parroquia del municipio San Francisco, Zulia
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('MARCIAL HERNANDEZ', 'parroquia', 355),
  ('FRANCISCO OCHOA', 'parroquia', 355),
  ('SAN FRANCISCO', 'parroquia', 355),
  ('EL BAJO', 'parroquia', 355),
  ('DOMITILA FLORES', 'parroquia', 355),
  ('LOS CORTIJOS', 'parroquia', 355);

-- Parroquias del municipio Santa Rita, Zulia
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('PEDRO LUCAS URRIBARRI', 'parroquia', 356),
  ('SANTA RITA', 'parroquia', 356),
  ('JOSE CENOVIO URRIBARR', 'parroquia', 356),
  ('EL MENE', 'parroquia', 356);

-- PArroquias del municipio Simon Bolivar, Zulia
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('RAFAEL MARIA BARALT', 'parroquia', 357),
  ('MANUEL MANRIQUE', 'parroquia', 357),
  ('RAFAEL URDANETA', 'parroquia', 357);

-- Parroquias del municipio Sucre, Zulia
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('GIBRALTAR', 'parroquia', 358),
  ('HERAS', 'parroquia', 358),
  ('M.ARTURO CELESTINO A', 'parroquia', 358),
  ('ROMULO GALLEGOS', 'parroquia', 358),
  ('BOBURES', 'parroquia', 358),
  ('EL BATEY', 'parroquia', 358);

-- Parroquias del municipio Valmore Rodriguez, Zulia
INSERT INTO Lugar (nombre_lugar, tipo_lugar, fk_lugar)
VALUES
  ('RAUL CUENCA', 'parroquia', 359),
  ('LA VICTORIA', 'parroquia', 359),
  ('RAFAEL URDANETA', 'parroquia', 359);

INSERT INTO estatus_orden_compra_b2c (nombre_estatus_orden_b2c,descripcion_estatus_orden_b2c)
VALUES
    ('Emitida', 'La orden fue creada pero no validada'),
    ('Validada', 'La pasarela de pago confirmó la transacción'),
    ('En preparación ', 'El almacén está preparando el pedido para su envío'),
    ('Despachada', 'El paquete fue entregado al courier'),
    ('Entregada', 'Confirmación de recepción final'),
    ('Facturada', 'Documento fiscal generado'),
    ('Cobrada', 'El dinero ingresó a la cuenta de MATTELUCAB'),
    ('Cancelada', 'Solo es posible si la orden no ha entrado en estado despachada'),
    ('Devuelta', 'Proceso de logística inversa por defectos de la calidad');

INSERT INTO estatus_orden_b2b (nombre_estatus_orden_b2b,descripcion_orden_b2b)
VALUES
    ('Emitida', 'La orden fue creada pero no validada'),
    ('Validada', 'Se verificó el credito del cliente'),
    ('En preparación ', 'El almacén está preparando el pedido para su envío'),
    ('Despachada', 'El paquete fue entregado al courier'),
    ('Entregada', 'Confirmación de recepción final'),
    ('Facturada', 'Documento fiscal generado'),
    ('Cobrada', 'El dinero ingresó a la cuenta de MATTELUCAB'),
    ('Cancelada', 'Solo es posible si la orden no ha entrado en estado despachada'),
    ('Devuelta', 'Proceso de logística inversa por defectos de la calidad');

-- NAYKARID
INSERT INTO EMPLEADO (ID_PERSONA_NATURAL, FK_LUGAR, RIF_PERSONA_NATURAL, DIRECCION_PERSONA_NATURAL, CEDULA_PERSONA_NATURAL, P_NOMBRE_PERSONA_NATURAL, S_NOMBRE_PERSONA_NATURAL, P_APELLIDO_PERSONA_NATURAL, S_APELLIDO_PERSONA_NATURAL, FECHA_NAC_PERSONA_NATURAL) VALUES 
    (1, 1, 'V-12345678-9', 'Av. Francisco de Miranda, Edif. Centro, Caracas', 'V-12345678', 'Carlos', 'Luis', 'Pérez', 'Gómez', '1985-04-12'),
    (2, 2, 'V-18765432-1', 'Urb. La Viña, Calle 14, Valencia', 'V-18765432', 'María', 'Alejandra', 'Rodríguez', 'López', '1990-08-25'),
    (3, 3, 'V-20123456-0', 'Sector 18 de Octubre, Av. 2, Maracaibo', 'V-20123456', 'Juan', 'Carlos', 'Martínez', 'Ruiz', '1992-11-03'),
    (4, 4, 'V-15987654-3', 'Centro, Carrera 19 con Calle 25, Barquisimeto', 'V-15987654', 'Ana', 'Karina', 'González', 'Fernández', '1988-01-15'),
    (5, 5, 'V-19345678-2', 'Alta Vista, Torre A, Puerto Ordaz', 'V-19345678', 'Luis', 'Eduardo', 'Díaz', 'Silva', '1991-05-20'),
    (6, 6, 'V-14567890-5', 'Barrio Obrero, Carrera 20, San Cristóbal', 'V-14567890', 'Pedro', 'José', 'García', 'Mendoza', '1982-09-30'),
    (7, 7, 'V-21098765-4', 'Av. Las Delicias, Maracay', 'V-21098765', 'Laura', 'Victoria', 'Hernández', 'Rojas', '1994-12-10'),
    (8, 8, 'V-17654321-8', 'Sector Las Garzas, Lechería', 'V-17654321', 'Diego', 'Alejandro', 'Torres', 'Castillo', '1989-07-08'),
    (9, 9, 'V-22334455-6', 'Urb. Miranda, Guarenas', 'V-22334455', 'Carmen', 'Alicia', 'Flores', 'Pineda', '1995-02-18'),
    (10,10, 'V-11223344-7', 'Av. 4 de Mayo, Porlamar', 'V-11223344', 'José', 'Gregorio', 'Romero', 'Vargas', '1979-10-05');
-- NAYKARID
INSERT INTO CONTRATO_PERSONAL (ID_CONTRATO, FK_EMPLEADO, CONTRATO_FECHA_INICIO, CONTRATO_FECHA_FIN) VALUES 
    (1, 1, '2024-01-15', NULL),          
    (2, 2, '2024-02-01', NULL),          
    (3, 3, '2024-03-10', NULL),
    (4, 4, '2025-01-10', '2025-12-31'), 
    (5, 5, '2025-06-01', NULL),
    (6, 6, '2025-08-15', NULL),
    (7, 7, '2026-01-05', NULL),
    (8, 8, '2026-02-20', NULL),
    (9, 9, '2026-03-01', NULL),
    (10,10, '2026-04-10', NULL);

-- NAYKARID Y DEVONY
INSERT INTO HORARIO (ID_HORARIO, DIA_HORARIO, HORA_ENTRADA_HORARIO, HORA_ENTRADA_SALIDA, TURNO_HORARIO) VALUES 
    (1, 'Lunes', '06:00:00', '14:00:00', 'mañana'),
    (2, 'Martes', '06:00:00', '14:00:00', 'mañana'),
    (3, 'Miercoles', '06:00:00', '14:00:00', 'mañana'),
    (4, 'Jueves', '06:00:00', '14:00:00', 'mañana'),
    (5, 'Viernes', '06:00:00', '14:00:00', 'mañana'),
    (6, 'Lunes', '14:00:00', '22:00:00', 'tarde'),
    (7, 'Martes', '14:00:00', '22:00:00', 'tarde'),
    (8, 'Sabado', '06:00:00', '14:00:00', 'mañana'),
    (9, 'Domingo', '22:00:00', '06:00:00', 'noche'),
    (10, 'Lunes', '08:00:00', '17:00:00', 'mañana');

--DEVONY Y NAYKARID
INSERT INTO TABULADOR_SALARIAL (ID_TABULADOR_SALARIAL, SUELDO_MENSUAL, SUELDO_HORA) VALUES 
    (1, 200.00, 1.25),
    (2, 280.00, 1.75),
    (3, 350.00, 2.19),
    (4, 400.00, 2.50),
    (5, 600.00, 3.75),
    (6, 500.00, 3.13),
    (7, 800.00, 5.00),
    (8, 900.00, 5.63),
    (9, 1200.00, 7.50),
    (10, 2000.00, 12.50);
-- NAYKARID
INSERT INTO DEPARTAMENTO (ID_DEPARTAMENTO, NOMBRE_DEPARTAMENTO) VALUES 
    (1, 'Investigación y Desarrollo (I+D)'), 
    (2, 'Diseño de Modas y Textil'),
    (3, 'Manufactura e Inyección'), 
    (4, 'Pintura y Estética Facial'),
    (5, 'Control de Calidad (QA)'), 
    (6, 'Logística y Distribución Hub'),
    (7, 'Ventas Corporativas B2B'), 
    (8, 'Mercadeo y Trade Marketing'),
    (9, 'Administración y Finanzas'), 
    (10, 'Gestión de Talento Humano');
-- NAYKARID
INSERT INTO CARGO (ID_CARGO, FK_TABULADOR_SALARIAL, FK_DEPARTAMENTO, NOMBRE_CARGO, DESCRIPCION_CARGO) VALUES 
    (1, 1, 3, 'Operador de Inyección', 'Encargado de operar las máquinas inyectoras de polímeros ABS y PVC.'),
    (2, 2, 4, 'Pintor Facial Especializado', 'Aplica tampografía y pintura detallada en los rostros de las piezas.'),
    (3, 3, 3, 'Supervisor de Manufactura', 'Supervisa la línea de ensamblaje en la planta principal.'),
    (4, 4, 7, 'Ejecutivo de Cuentas B2B', 'Atiende a distribuidores mayoristas de nivel de entrada.'),
    (5, 5, 7, 'Key Account Manager', 'Gestiona grandes cadenas de jugueterías y supermercados.'),
    (6, 6, 1, 'Escultor de Prototipos 3D', 'Moldea en software 3D los nuevos conceptos de la marca.'),
    (7, 7, 2, 'Diseñador de Modas Senior', 'Crea los patrones textiles para la línea Signature y Black Label.'),
    (8, 8, 5, 'Ingeniero de Calidad (QA)', 'Ejecuta pruebas de estrés, toxicidad y caída libre a las piezas.'),
    (9, 9, 7, 'Gerente Nacional B2B', 'Dirige toda la estrategia de ventas corporativas a nivel nacional.'),
    (10, 10, 9, 'Director Financiero (CFO)', 'Administra el presupuesto, márgenes de rentabilidad y cuentas.');
-- NAYKARID
INSERT INTO CONTRATO_CARGO (ID_CONTRATO_CARGO, FK_CARGO, FK_CONTRATO, FECHA_INICIO_CONTRATO_CARGO, FECHA_FIN_CONTRATO_CARGO, HORAS_SEMANALES_CC, MOTIVO_CAMBIO_CARGO) VALUES 
    (1, 1, 1, '2024-01-15', NULL, 40, 'Asignación Inicial'),
    (2, 2, 2, '2024-02-01', NULL, 40, 'Asignación Inicial'),
    (3, 3, 3, '2024-03-10', NULL, 40, 'Asignación Inicial'),
    (4, 4, 4, '2025-01-10', '2025-12-31', 40, 'Contrato por Tiempo Determinado'),
    (5, 5, 5, '2025-06-01', NULL, 40, 'Promoción por Cumplimiento de Metas'),
    (6, 6, 6, '2025-08-15', NULL, 24, 'Medio Tiempo Fines de Semana'),
    (7, 7, 7, '2026-01-05', NULL, 24, 'Medio Tiempo Fines de Semana'),
    (8, 8, 8, '2026-02-20', NULL, 40, 'Asignación Inicial'),
    (9, 9, 9, '2026-03-01', NULL, 40, 'Asignación Inicial'),
    (10, 10, 10, '2026-04-10', NULL, 40, 'Contratación Ejecutiva Directa');
-- NAYKARID
INSERT INTO CONTRATO_HORARIO (ID_CONTRATO_HORARIO, FK_CONTRATO, FK_HORARIO) VALUES 
    (1, 1, 1),  
    (2, 2, 2),  
    (3, 3, 3),  
    (4, 4, 10), 
    (5, 5, 10), 
    (6, 6, 4),  
    (7, 7, 5),  
    (8, 8, 1),  
    (9, 9, 2),  
    (10, 10, 3);
-- NAYKARID y DEVONY
INSERT INTO BENEFICIO (ID_BENEFICIO, NOMBRE_BENEFICIO, DESCRIPCION_BENEFICIO, TIPO_BENEFICIO) VALUES 
    (1, 'Recargo Nocturno', 'Recargo salarial por laborar en turnos nocturnos', 'Bonificación'),
    (2, 'Prima Feriado/Descanso', 'Prima por laborar en días feriados', 'Bonificación'),
    (3, 'Comisión Volumen Máster', 'Comisión porcentual por volumen facturado', 'Desempeño'),
    (4, 'Bono Cumplimiento Metas', 'Bono asignado por alcanzar o superar metas', 'Desempeño'),
    (5, 'Regalía de Diseño (I+D)', 'Bono especial para autores de diseños', 'Desempeño'),
    (6, 'Regalía Black Label', 'Incentivo especial piezas Black Label', 'Desempeño'),
    (7, 'Bono Eficiencia', 'Bono de productividad métricas de planta', 'Desempeño'),
    (8, 'Seguro HCM', 'Póliza de salud para el trabajador', 'Salud'),
    (9, 'Bono de Alimentación', 'Subsidio de ley para alimentación', 'Otros'),
    (10, 'Bono por Antigüedad', 'Incentivo que premia la lealtad', 'Bonificación');
--NAYKARID Y DEVONY 
INSERT INTO CONTRATO_BENEFICIO (ID_CONTRATO_BENEFICIO, FK_CONTRATO_PERSONAL, FK_BENEFICIO, MONTO_CONTRATO_BENEFICIO, CANTIDAD_INCIDENCIAS) VALUES 
    (1, 1, 8, 150.00, 1),   
    (2, 1, 9, 40.00, 1),    
    (3, 2, 1, 25.50, 5),    
    (4, 3, 1, 45.00, 10), 
    (5, 4, 8, 150.00, 1),   
    (6, 5, 4, 300.00, 1),  
    (7, 6, 2, 50.00, 2),    
    (8, 7, 2, 50.00, 2),    
    (9, 8, 7, 100.00, 1),   
    (10, 10, 5, 500.00, 1);


--NAYKARID Y DEVONY 
INSERT INTO COLOR (ID_COLOR, NOMBRE_COLOR, CODIGO_HEX) VALUES 
    (1, 'Claro', '#F7E7CE'), 
    (2, 'Medio', '#E1B899'), 
    (3, 'Bronceado ', '#B1846A'), 
    (4, 'Oscuro', '#4A2E2B'), 
    (5, 'Fantasia', '#E6E6FA'), 
    (6, 'Azul Profundo', '#204060'), 
    (7, 'Verde Esmeralda', '#2ECC71'), 
    (8, 'Miel Dorado', '#C59B27'), 
    (9, 'Castaño Oscuro', '#3E2723'), 
    (10, 'Violeta', '#9B59B6');
--DEVONY 
INSERT INTO META_MENSUAL (ID_META_MENSUAL, FK_CONTRATO_CARGO, FECHAINICIO_META, FECHAFIN_META, MONTO_META) VALUES 
    (1, 4, '2026-01-01', '2026-01-31', 5000.00),   
    (2, 5, '2026-01-01', '2026-01-31', 12000.00),  
    (3, 9, '2026-01-01', '2026-01-31', 25000.00),  
    (4, 4, '2026-02-01', '2026-02-28', 55000.00),  
    (5, 5, '2026-02-01', '2026-02-28', 13000.00),  
    (6, 9, '2026-02-01', '2026-02-28', 27000.00),  
    (7, 4, '2026-03-01', '2026-03-31', 6000.00),   
    (8, 5, '2026-03-01', '2026-03-31', 14000.00),  
    (9, 9, '2026-03-01', '2026-03-31', 30000.00),  
    (10, 4, '2026-04-01', '2026-04-30', 6500.00);
--NAYKARID Y DEVONY 
INSERT INTO ASISTENCIA (ID_ASISTENCIA, FK_CONTRATO, FECHA_HORA_ENTRADA_ASISTENCIA, FECHA_HORA_SALIDA_ASISTENCIA) VALUES 
    (1, 1, '2026-05-02 06:00:00', '2026-05-02 14:00:00'),
    (2, 2, '2026-05-02 14:00:00', '2026-05-02 22:00:00'),
    (3, 3, '2026-05-02 22:00:00', '2026-05-03 06:00:00'),
    (4, 4, '2026-05-02 08:00:00', '2026-05-02 17:00:00'),
    (5, 5, '2026-05-02 08:00:00', '2026-05-02 17:00:00'),
    (6, 6, '2026-05-03 06:00:00', '2026-05-03 14:00:00'),
    (7, 7, '2026-05-03 14:00:00', '2026-05-03 22:00:00'),
    (8, 8, '2026-05-04 06:00:00', '2026-05-04 14:00:00'),
    (9, 9, '2026-05-04 14:00:00', '2026-05-04 22:00:00'),
    (10, 10, '2026-05-04 22:00:00', '2026-05-05 06:00:00');
-- NAYKARID
INSERT INTO CATEGORIA (ID_CATEGORIA, FK_CATEGORIA_RECURSIVA, NOMBRE_CATEGORIA, DESCRIPCION_CATEGORIA) VALUES 
    (1, NULL, 'Muñecas Clásicas', 'Línea de muñecas de escala estándar y exhibición.'),
    (2, NULL, 'Accesorios', 'Complementos, ropa, zapatos y joyería en miniatura.'),
    (3, NULL, 'Playsets', 'Sets de juego y escenarios temáticos interactivos.'),
    (4, NULL, 'Vehículos', 'Autos, campers, aviones y transporte a escala.'),
    (5, NULL, 'Coleccionables', 'Piezas de exhibición Premium y Black Label.'),
    (6, 1, 'Fantasía', 'Sirenas, hadas, princesas y personajes míticos.'),
    (7, 1, 'Profesiones', 'Línea inspiracional con temática laboral y carreras.'),
    (8, 2, 'Ropa Casual', 'Atuendos de uso diario y moda urbana.'),
    (9, 3, 'Casas y Mansiones', 'Estructuras habitacionales grandes (Dreamhouse).'),
    (10, 4, 'Convertibles', 'Coches deportivos de techo abierto.');
--NAYKARID Y DEVONY 
INSERT INTO CATEGORIA_CATEGORIA (ID_CATEGORIA_CATEGORIA, FK_CATEGORIA_MADRE, FK_CATEGORIA_PADRE) VALUES 
    (1, 1, 3), 
    (2, 2, 1), 
    (3, 3, 1), 
    (4, 4, 2), 
    (5, 5, 2),
    (6, 6, 3), 
    (7, 7, 3), 
    (8, 8, 4), 
    (9, 9, 4), 
    (10, 10, 5);
--NAYKARID
INSERT INTO BANCO (ID_BANCO, NOMBRE_BANCO) VALUES 
    (1, 'Banco de Venezuela'),
    (2, 'Banesco'), 
    (3, 'Mercantil'), 
    (4, 'BBVA Provincial'), 
    (5, 'Banco del Tesoro'), 
    (6, 'Banco Bicentenario'), 
    (7, 'Banco Exterior'), 
    (8, 'Banco Caroní'), 
    (9, 'Banco Nacional de Crédito'), 
    (10, 'Banco Sofitasa');
--NAYKARID Y DEVONY 
INSERT INTO CARACTERISTICA (ID_CARACTERISTICA, NOMBRE_CARACTERISTICA, DESCRIPCION_CARACTERISTICA) VALUES 
    (1, 'Tipo de Ojos', 'Metodología visual y material de la mirada.'),
    (2, 'Pestañas Enraizadas', 'Especificación de filamentos en los párpados.'),
    (3, 'Acabado de Piel', 'Efecto estético de la superficie cutánea.'),
    (4, 'Densidad Cabello', 'Medición de folículos implantados por cm2.'),
    (5, 'Puntos Articulación', 'Métricas de uniones mecánicas del cuerpo.'),
    (6, 'Conector de Cuello', 'Tipo de anclaje físico de la cabeza.'),
    (7, 'Resistencia UV', 'Nivel de tolerancia a la degradación solar.'),
    (8, 'Complejidad Maquillaje', 'Número de fases de pintura facial.'),
    (9, 'Moldeado Pies', 'Formato estructural de la extremidad inferior.'),
    (10, 'Escala Proporción', 'Relación y dimensión paramétrica de la pieza.');
--NAYKARID Y DEVONY 
INSERT INTO PRUEBA (ID_PRUEBA, NOMBRE_PRUEBA, DESCRIPCION_PRUEBA) VALUES 
    (1, 'Caída Libre (Drop Test)', 'Evaluación del impacto físico estructural por liberación vertical.'), 
    (2, 'Toxicidad de Polímeros', 'Análisis químico de componentes pesados en compuestos plásticos.'), 
    (3, 'Tracción de Extremidades', 'Medición de la fuerza límite de desprendimiento en partes móviles.'),
    (4, 'Flamabilidad Textil', 'Prueba de resistencia a la ignición y propagación de llama en telas.'), 
    (5, 'Inspección Estética', 'Evaluación visual de acabados, pintura, fallas superficiales y empaque.'), 
    (6, 'Fatiga de Articulación', 'Ciclos continuos de movimiento para medir el desgaste de uniones.'),
    (7, 'Voltaje de Batería', 'Verificación del potencial eléctrico y estabilidad de celdas de energía.'), 
    (8, 'Resistencia al Agua', 'Prueba de estanqueidad y filtración de fluidos en compartimentos.'), 
    (9, 'Alérgenos Textiles', 'Detección de sustancias irritantes o nocivas en componentes textiles.'),
    (10, 'Compresión en Caja Máster', 'Medición de la resistencia de carga vertical en el empaque de despacho.');
--NAYKARID Y DEVONY 
INSERT INTO PROFESION (ID_PROFESION, NOMBRE_PROFESION, DESCRIPCION_PROFESION) VALUES 
    (1, 'Astronauta', 'Especialista entrenado para tripular, operar y realizar experimentos en naves espaciales.'), 
    (2, 'Cirujana', 'Médico especialista en el tratamiento de enfermedades mediante procedimientos quirúrgicos.'), 
    (3, 'Presidenta', 'Máxima autoridad ejecutiva responsable de la dirección política y administrativa.'), 
    (4, 'Ingeniera de Software', 'Profesional dedicada al diseño, desarrollo y mantenimiento de sistemas y aplicaciones.'),
    (5, 'Veterinaria de Mascotas', 'Especialista en la prevención, diagnóstico y tratamiento médico de animales domésticos.'), 
    (6, 'Piloto de Aviación', 'Técnico certificado a cargo de la navegación y operación de aeronaves comerciales o privadas.'), 
    (7, 'Chef Ejecutiva', 'Responsable de la gestión de cocina, diseño de menús y supervisión de la producción alimentaria.'),
    (8, 'Científica de Laboratorio', 'Investigadora encargada de ejecutar análisis, experimentos y pruebas biológicas o químicas.'), 
    (9, 'Arquitecta de Interiores', 'Diseñadora enfocada en la optimización espacial, estética y funcional de ambientes internos.'), 
    (10, 'Bombera de Rescate', 'Personal de emergencia capacitado para la extinción de incendios y salvamento en zonas de riesgo.');
--NAYKARID Y DEVONY
INSERT INTO CLASIFICACION (ID_CLASIFICACION, NOMBRE_CLASIFICACION, DESCRIPCION_CLASIFICACION) VALUES 
    (1, 'Black Label', 'Línea de colección orientada al público coleccionista'),
    (2, 'Gold Label', 'Ediciones exclusivas limitadas a un máximo de 25,000 unidades globales'),
    (3, 'Platinum Label', 'Ediciones ultra exclusivas numeradas consecutivamente con menos de 1,000 unidades')
    (4, 'Pink Label', 'Línea de colección orientada a la venta masiva');
--NAYKARID Y DEVONY
INSERT INTO SET_REGALO (ID_SET_REGALO, NOMBRE_SET_REGALO) VALUES 
    (1, 'Aventura de Camping'), 
    (2, 'Boda de Ensueño'), 
    (3, 'Viajeros del Mundo'),
    (4, 'Colección Vintage 65'), 
    (5, 'Guardería de Cachorros'), 
    (6, 'Estudio Diseño de Moda'),
    (7, 'Concierto de Rock'), 
    (8, 'Paseo en Convertible'), 
    (9, 'Escuadrón STEM'),
    (10, 'Fiesta Sorpresa');
--NAYKARID Y DEVONY
INSERT INTO COLECCION (ID_COLECCION, NOMBRE_COLECCION, DESCRIPCION_COLECCION) VALUES 
    (1, 'Barbie Fashionistas', 'Línea de alta diversidad con múltiples cuerpos, pieles y ojos; base para el diseño de empaquetado optimizado en paletas de distribución.'),
    (2, 'Barbie Signature', 'Colección premium para adultos entusiastas, vinculada a membresías Gold y Platinum para otorgar acceso prioritario a lanzamientos.'),
    (3, 'Dreamhouse (Bienes Raíces)', 'Línea de activos inmobiliarios (casas, campers) que gestiona una estructura de ambientes, mobiliario y compatibilidad.'),
    (4, 'Día de Muertos', 'Edición especial de colección limitada con restricciones estrictas de compra por persona para mitigar la reventa web.'),
    (5, 'Barbie Sirena', 'Línea temática de fantasía de alta demanda comercial, solicitada habitualmente en órdenes de compra masivas por clientes B2B.'),
    (6, 'Inspiring Women', 'Serie de colección dedicada a figuras históricas femeninas, orientada a un mercado educativo y de exhibición premium.'),
    (7, 'Barbie Color Reveal', 'Línea basada en empaque ciego y experiencia de desempaquetado interactivo mediante agua, con alta rotación en inventario minorista.'),
    (8, 'Barbie Pop Reveal', 'Colección interactiva con temáticas sensoriales y de texturas, enfocada en el enganche del consumidor infantil y canales digitales.'),
    (9, 'Totally Hair Retro', 'Ediciones especiales inspiradas en modelos clásicos de gran volumen de cabello, enfocada en la nostalgia y coleccionistas veteranos.'),
    (10, 'Barbie Career Dolls', 'Modelos orientados a la representación de diversas profesiones técnicas y científicas, vinculada a campañas de responsabilidad social.');
--NAYKARID
INSERT INTO TIPO_CUERPO (ID_TIPO_CUERPO, NOMBRE_TIPO_CUERPO, DESCRIPCION_TIPO_CUERPO) VALUES 
    (1, 'Original', 'El cuerpo tradicional esbelto con las proporciones históricas'),
    (2, 'Curvy', 'Cuerpo con proporciones más realistas y curvas pronunciadas'),
    (3, 'Tall', 'Estructura de mayor estatura y extremidades alargadas'),
    (4, 'Petite', 'Estructura de menor estatura y contextura compacta'),
    (5, 'Made to Move', 'Cuerpo ultra articulado con 22 puntos de pivote');
--NAYKARID
INSERT INTO ERA (ID_ERA, NOMBRE_ERA, DESCRIPCION_ERA) VALUES 
    (1, 'Vintage', 'Período inicial desde 1959 con molde original'),
    (2, 'Mod Era', 'Época de finales de los 60 con colores psicodélicos'),
    (3, 'Superstar Era', 'Iniciada en 1977, icónica sonrisa amplia'),
    (4, 'Modern Era', 'Abarca los años 90 y principios de los 2000');
--DEVONY
INSERT INTO FASE (ID_FASE, NOMBRE_FASE, DESCRIPCION_FASE) VALUES 
    (1, 'Investigación y Desarrollo', 'Análisis de mercado, viabilidad técnica y conceptualización inicial del producto.'),
    (2, 'Diseño y Modelado 3D', 'Creación de planos digitales, prototipos tridimensionales y especificaciones técnicas.'),
    (3, 'Escultura y Moldes', 'Desarrollo de matrices físicas y moldes de acero para la inyección de las piezas.'),
    (4, 'Planificación de Producción', 'Asignación de recursos, turnos de personal y cronograma de la planta manufacturera.'),
    (5, 'Inyección y Moldeo', 'Proceso industrial de fundición y soplado de polímeros para crear las partes físicas.'),
    (6, 'Pintura y Estética', 'Aplicación de tampografía facial, detalles de color y acabados superficiales.'),
    (7, 'Ensamblaje y Confección', 'Unión mecánica de extremidades, implantación de cabello y colocación de vestimenta.'),
    (8, 'Control de Calidad (QA)', 'Ejecución de pruebas de estrés, toxicidad, caída libre e inspección visual.'),
    (9, 'Empacado y Paletizado', 'Sellado del producto en su caja comercial y optimización de bultos en paletas de carga.'),
    (10, 'Distribución Logística', 'Despacho hacia canales de venta, almacenamiento central y entregas a clientes B2B.');
--NAYKARID
INSERT INTO MONEDA (ID_MONEDA, NOMBRE_MONEDA, SIMBOLO_MONEDA, TIPO_MONEDA) VALUES
    (1, 'Dólar estadounidense', '$', 'Externa'),
    (2, 'Bolívares', 'Bs.', 'Externa'),
    (3, 'Tether', 'USDT', 'Criptomoneda'),
    (4, 'Bitcoin', 'BTC', 'Criptomoneda'),
    (5, 'BarbieCoins', '฿', 'Interna'),
    (6, 'Euro', '€', 'Externa'),
    (7, 'Peso Mexicano', '$', 'Externa'),
    (8, 'Ethereum', 'ETH', 'Criptomoneda'),
    (9, 'MattelPoints', 'MP', 'Interna'),
    (10, 'Libra Esterlina', '£', 'Externa');
--NAYKARID
INSERT INTO TIPO_TRANSPORTE (ID_TIPO_TRANSPORTE, NOMBRE_TIPO_TRANSPORTE, DESCRIPCION_TIPO_TRANSPORTE) VALUES 
    (1, 'Carga Consolidada B2B', 'Despachos masivos a grandes cadenas.'),
    (2, 'Paquetería B2C', 'Despacho individualizado consumidor final.'),
    (3, 'Marítimo', 'Mercancía en contenedores oceánicos.'),
    (4, 'Aéreo Express', 'Importación de emergencia.'),
    (5, 'Hub-to-Hub', 'Traslado masivo de stock interurbano.'),
    (6, 'Última Milla', 'Distribución urbana rápida.'),
    (7, 'Multimodal Internacional', 'Combinación terrestre y marítima.'),
    (8, 'Carga Química Controlada', 'Logística especial con temperatura.'),
    (9, 'Suministros y Cartonaje', 'Movimiento de cajas vacías y etiquetas.'),
    (10, 'Material POP', 'Distribución de exhibidores.');
--NAYKARID
INSERT INTO DESCUENTO (ID_DESCUENTO, NOMBRE_DESCUENTO, DESCRIPCION_DESCUENTO, PORCENTAJE_DESCUENTO) VALUES 
    (1, 'Lanzamiento Gold', 'Rebaja del 5% preventas.', 0.0500),
    (2, 'Aniversario Pink Box', 'Descuento especial del 10%.', 0.1000),
    (3, 'VIP Platinum', 'Reducción del 15% subastas.', 0.1500),
    (4, 'Black Friday', 'Descuento del 30% web.', 0.3000),
    (5, 'Volumen B2B', 'Incentivo del 12% por compras masivas.', 0.1200),
    (6, 'Liquidación Dreamtopia', 'Descuento del 50% remanentes.', 0.5000),
    (7, 'Bono Registro', 'Cortesía de bienvenida del 8%.', 0.0800),
    (8, 'Cumpleaños Premium', 'Beneficio del 20% aniversario.', 0.2000),
    (9, 'Suscripción Anual', 'Descuento del 25% transición.', 0.2500),
    (10, 'Saldos Outlet', 'Rebaja del 40% piezas de exhibición.', 0.4000);
--NAYKARID
INSERT INTO PIEZA (ID_PIEZA, NOMBRE_PIEZA, DESCRIPCION_PIEZA) VALUES 
    (1, 'Cabeza Vinyl Estándar', 'Pieza craneal externa fabricada en vinilo moldeado.'), 
    (2, 'Cuerpo Curvy Articulado', 'Estructura corporal completa con proporciones volumétricas y uniones móviles.'), 
    (3, 'Brazo Derecho Made-to-Move', 'Extremidad superior derecha diseñada para un rango de movimiento multiarticulado.'),
    (4, 'Mecanismo de Sonido Interno', 'Componente electrónico modular para la reproducción de audio interno.'), 
    (5, 'Torso Tall de Inyección', 'Bloque central del cuerpo con dimensiones alargadas fabricado por inyección.'), 
    (6, 'Cabeza de Goma Colectora', 'Pieza craneal de alta densidad orientada a ediciones especiales.'),
    (7, 'Pierna Izquierda Petite', 'Extremidad inferior izquierda con dimensiones de escala reducida.'), 
    (8, 'Fibra Textil de Sarán', 'Filamento sintético de alta calidad utilizado para la implantación de cabello.'), 
    (9, 'Pie Izquierdo Articulado', 'Componente terminal inferior izquierdo con eje de movimiento para calzado.'),
    (10, 'Micro-articulación de Codo', 'Conector mecánico a pequeña escala para la flexión de la extremidad.');

INSERT INTO MOLDE (ID_MOLDE, NOMBRE_MOLDE, DESCRIPCION_MOLDE) VALUES 
    (1, 'Superstar', 'Molde clásico de cara con sonrisa amplia y ojos mirando al frente.'), 
    (2, 'Mackie', 'Molde de rostro estilizado y boca cerrada, diseñado originalmente para ediciones de colección.'), 
    (3, 'Millie', 'Esculpido facial contemporáneo de facciones suaves y sonrisa sutil de apariencia moderna.'), 
    (4, 'Steffie', 'Molde de expresión nostálgica con labios redondeados y levemente fruncidos.'), 
    (5, 'Generation Girl', 'Diseño de rostro juvenil de finales de los noventa con sonrisa de dientes visibles.'),
    (6, 'Lara', 'Molde de facciones delgadas, pómulos marcados y boca cerrada con expresión seria.'), 
    (7, 'Goddess', 'Esculpido de facciones simétricas y estética madura orientado a ediciones de gala.'), 
    (8, 'Aphrodite', 'Molde de nariz perfilada y labios carnosos diseñado para líneas de diseñador premium.'), 
    (9, 'Claudette', 'Diseño de rostro contemporáneo y angular optimizado para rasgos étnicos específicos.'), 
    (10, 'Diva', 'Molde clásico con sutil apertura de boca, pómulos altos y expresión sofisticada.');
--MATHIAS Y DEVONY 
INSERT INTO PERSONA_JURIDICA
  (ID_PERSONA_JURIDICA, FK_LUGAR_DIR_FISICA, FK_LUGAR_DIR_FISCAL, RIF_PERSONA_JURIDICA,
   DIR_FISCAL_PERSONA_JURIDICA, RAZON_SOCIAL_PERSONA_JURIDICA,
   DIR_FISICA_PERSONA_JURIDICA, DENOM_COMERCIAL_PERJUR)
VALUES
(1, 360, 367, 'J-20000001-0', 'Av. Bolívar, Torre Empresarial, piso 1, oficina 1', 'Inversiones Andina C.A.', 'Av. Libertador, Galpón 1, Zona Industrial', 'MattelMax Bolivariana'),
(2, 361, 368, 'J-20000002-1', 'Calle Sucre, Torre Empresarial, piso 2, oficina 2', 'Corporación del Caribe S.A.', 'Calle Miranda, Galpón 2, Zona Industrial', 'ToyVen Capital'),
(3, 362, 369, 'J-20000003-2', 'Av. Urdaneta, Torre Empresarial, piso 3, oficina 3', 'Distribuidora Bolivariana S.R.L.', 'Av. Andrés Bello, Galpón 3, Zona Industrial', 'JuguetesYA Continental'),
(4, 363, 370, 'J-20000004-3', 'Calle Páez, Torre Empresarial, piso 4, oficina 4', 'Comercializadora Capital C.A.', 'Calle Comercio, Galpón 4, Zona Industrial', 'PlayCenter Venezolana'),
(5, 364, 371, 'J-20000005-4', 'Av. Libertador, Torre Empresarial, piso 5, oficina 5', 'Importadora Continental S.A.', 'Av. Principal, Galpón 5, Zona Industrial', 'KidsZone Atlántica'),
(6, 365, 372, 'J-20000006-5', 'Calle Miranda, Torre Empresarial, piso 6, oficina 6', 'Industrias Venezolana C.A.', 'Calle Real, Galpón 6, Zona Industrial', 'FunBox del Centro'),
(7, 366, 373, 'J-20000007-6', 'Av. Andrés Bello, Torre Empresarial, piso 7, oficina 7', 'Servicios Atlántica S.A.', 'Av. Bolívar, Galpón 7, Zona Industrial', 'LudoMarket Global'),
(8, 367, 374, 'J-20000008-7', 'Calle Comercio, Torre Empresarial, piso 8, oficina 8', 'Grupo del Centro S.R.L.', 'Calle Sucre, Galpón 8, Zona Industrial', 'MegaToys Pacífico'),
(9, 368, 375, 'J-20000009-8', 'Av. Principal, Torre Empresarial, piso 9, oficina 9', 'Constructora Global C.A.', 'Av. Urdaneta, Galpón 9, Zona Industrial', 'HappyKids Real'),
(10, 369, 376, 'J-20000010-9', 'Calle Real, Torre Empresarial, piso 10, oficina 10', 'Tecnología Pacífico S.A.', 'Calle Páez, Galpón 10, Zona Industrial', 'StarToys Premium'),
(11, 370, 377, 'J-20000011-0', 'Av. Bolívar, Torre Empresarial, piso 11, oficina 11', 'Inversiones Real C.A.', 'Av. Libertador, Galpón 11, Zona Industrial', 'MattelMax Unión'),
(12, 371, 378, 'J-20000012-1', 'Calle Sucre, Torre Empresarial, piso 12, oficina 12', 'Corporación Premium S.A.', 'Calle Miranda, Galpón 12, Zona Industrial', 'ToyVen Delta'),
(13, 372, 379, 'J-20000013-2', 'Av. Urdaneta, Torre Empresarial, piso 13, oficina 13', 'Distribuidora Unión S.R.L.', 'Av. Andrés Bello, Galpón 13, Zona Industrial', 'JuguetesYA Orion'),
(14, 373, 380, 'J-20000014-3', 'Calle Páez, Torre Empresarial, piso 14, oficina 14', 'Comercializadora Delta C.A.', 'Calle Comercio, Galpón 14, Zona Industrial', 'PlayCenter Andina'),
(15, 374, 381, 'J-20000015-4', 'Av. Libertador, Torre Empresarial, piso 15, oficina 15', 'Importadora Orion S.A.', 'Av. Principal, Galpón 15, Zona Industrial', 'KidsZone del Caribe'),
(16, 375, 382, 'J-20000016-5', 'Calle Miranda, Torre Empresarial, piso 16, oficina 16', 'Industrias Andina C.A.', 'Calle Real, Galpón 16, Zona Industrial', 'FunBox Bolivariana'),
(17, 376, 383, 'J-20000017-6', 'Av. Andrés Bello, Torre Empresarial, piso 17, oficina 17', 'Servicios del Caribe S.A.', 'Av. Bolívar, Galpón 17, Zona Industrial', 'LudoMarket Capital'),
(18, 377, 384, 'J-20000018-7', 'Calle Comercio, Torre Empresarial, piso 18, oficina 18', 'Grupo Bolivariana S.R.L.', 'Calle Sucre, Galpón 18, Zona Industrial', 'MegaToys Continental'),
(19, 378, 385, 'J-20000019-8', 'Av. Principal, Torre Empresarial, piso 19, oficina 19', 'Constructora Capital C.A.', 'Av. Urdaneta, Galpón 19, Zona Industrial', 'HappyKids Venezolana'),
(20, 379, 386, 'J-20000020-9', 'Calle Real, Torre Empresarial, piso 20, oficina 20', 'Tecnología Continental S.A.', 'Calle Páez, Galpón 20, Zona Industrial', 'StarToys Atlántica'),
(21, 380, 387, 'J-20000021-0', 'Av. Bolívar, Torre Empresarial, piso 1, oficina 21', 'Inversiones Venezolana C.A.', 'Av. Libertador, Galpón 21, Zona Industrial', 'MattelMax del Centro'),
(22, 381, 388, 'J-20000022-1', 'Calle Sucre, Torre Empresarial, piso 2, oficina 22', 'Corporación Atlántica S.A.', 'Calle Miranda, Galpón 22, Zona Industrial', 'ToyVen Global'),
(23, 382, 389, 'J-20000023-2', 'Av. Urdaneta, Torre Empresarial, piso 3, oficina 23', 'Distribuidora del Centro S.R.L.', 'Av. Andrés Bello, Galpón 23, Zona Industrial', 'JuguetesYA Pacífico'),
(24, 383, 390, 'J-20000024-3', 'Calle Páez, Torre Empresarial, piso 4, oficina 24', 'Comercializadora Global C.A.', 'Calle Comercio, Galpón 24, Zona Industrial', 'PlayCenter Real'),
(25, 384, 391, 'J-20000025-4', 'Av. Libertador, Torre Empresarial, piso 5, oficina 25', 'Importadora Pacífico S.A.', 'Av. Principal, Galpón 25, Zona Industrial', 'KidsZone Premium'),
(26, 385, 392, 'J-20000026-5', 'Calle Miranda, Torre Empresarial, piso 6, oficina 26', 'Industrias Real C.A.', 'Calle Real, Galpón 26, Zona Industrial', 'FunBox Unión'),
(27, 386, 393, 'J-20000027-6', 'Av. Andrés Bello, Torre Empresarial, piso 7, oficina 27', 'Servicios Premium S.A.', 'Av. Bolívar, Galpón 27, Zona Industrial', 'LudoMarket Delta'),
(28, 387, 394, 'J-20000028-7', 'Calle Comercio, Torre Empresarial, piso 8, oficina 28', 'Grupo Unión S.R.L.', 'Calle Sucre, Galpón 28, Zona Industrial', 'MegaToys Orion'),
(29, 388, 395, 'J-20000029-8', 'Av. Principal, Torre Empresarial, piso 9, oficina 29', 'Constructora Delta C.A.', 'Av. Urdaneta, Galpón 29, Zona Industrial', 'HappyKids Andina'),
(30, 389, 396, 'J-20000030-9', 'Calle Real, Torre Empresarial, piso 10, oficina 30', 'Tecnología Orion S.A.', 'Calle Páez, Galpón 30, Zona Industrial', 'StarToys del Caribe'),
(31, 390, 397, 'J-20000031-0', 'Av. Bolívar, Torre Empresarial, piso 11, oficina 31', 'Inversiones Andina C.A.', 'Av. Libertador, Galpón 31, Zona Industrial', 'MattelMax Bolivariana'),
(32, 391, 398, 'J-20000032-1', 'Calle Sucre, Torre Empresarial, piso 12, oficina 32', 'Corporación del Caribe S.A.', 'Calle Miranda, Galpón 32, Zona Industrial', 'ToyVen Capital'),
(33, 392, 399, 'J-20000033-2', 'Av. Urdaneta, Torre Empresarial, piso 13, oficina 33', 'Distribuidora Bolivariana S.R.L.', 'Av. Andrés Bello, Galpón 33, Zona Industrial', 'JuguetesYA Continental'),
(34, 393, 400, 'J-20000034-3', 'Calle Páez, Torre Empresarial, piso 14, oficina 34', 'Comercializadora Capital C.A.', 'Calle Comercio, Galpón 34, Zona Industrial', 'PlayCenter Venezolana'),
(35, 394, 401, 'J-20000035-4', 'Av. Libertador, Torre Empresarial, piso 15, oficina 35', 'Importadora Continental S.A.', 'Av. Principal, Galpón 35, Zona Industrial', 'KidsZone Atlántica'),
(36, 395, 402, 'J-20000036-5', 'Calle Miranda, Torre Empresarial, piso 16, oficina 36', 'Industrias Venezolana C.A.', 'Calle Real, Galpón 36, Zona Industrial', 'FunBox del Centro'),
(37, 396, 403, 'J-20000037-6', 'Av. Andrés Bello, Torre Empresarial, piso 17, oficina 37', 'Servicios Atlántica S.A.', 'Av. Bolívar, Galpón 37, Zona Industrial', 'LudoMarket Global'),
(38, 397, 404, 'J-20000038-7', 'Calle Comercio, Torre Empresarial, piso 18, oficina 38', 'Grupo del Centro S.R.L.', 'Calle Sucre, Galpón 38, Zona Industrial', 'MegaToys Pacífico'),
(39, 398, 405, 'J-20000039-8', 'Av. Principal, Torre Empresarial, piso 19, oficina 39', 'Constructora Global C.A.', 'Av. Urdaneta, Galpón 39, Zona Industrial', 'HappyKids Real'),
(40, 399, 406, 'J-20000040-9', 'Calle Real, Torre Empresarial, piso 20, oficina 40', 'Tecnología Pacífico S.A.', 'Calle Páez, Galpón 40, Zona Industrial', 'StarToys Premium'),
(41, 400, 407, 'J-20000041-0', 'Av. Bolívar, Torre Empresarial, piso 1, oficina 41', 'Inversiones Real C.A.', 'Av. Libertador, Galpón 41, Zona Industrial', 'MattelMax Unión'),
(42, 401, 408, 'J-20000042-1', 'Calle Sucre, Torre Empresarial, piso 2, oficina 42', 'Corporación Premium S.A.', 'Calle Miranda, Galpón 42, Zona Industrial', 'ToyVen Delta'),
(43, 402, 409, 'J-20000043-2', 'Av. Urdaneta, Torre Empresarial, piso 3, oficina 43', 'Distribuidora Unión S.R.L.', 'Av. Andrés Bello, Galpón 43, Zona Industrial', 'JuguetesYA Orion'),
(44, 403, 410, 'J-20000044-3', 'Calle Páez, Torre Empresarial, piso 4, oficina 44', 'Comercializadora Delta C.A.', 'Calle Comercio, Galpón 44, Zona Industrial', 'PlayCenter Andina'),
(45, 404, 411, 'J-20000045-4', 'Av. Libertador, Torre Empresarial, piso 5, oficina 45', 'Importadora Orion S.A.', 'Av. Principal, Galpón 45, Zona Industrial', 'KidsZone del Caribe'),
(46, 405, 412, 'J-20000046-5', 'Calle Miranda, Torre Empresarial, piso 6, oficina 46', 'Industrias Andina C.A.', 'Calle Real, Galpón 46, Zona Industrial', 'FunBox Bolivariana'),
(47, 406, 413, 'J-20000047-6', 'Av. Andrés Bello, Torre Empresarial, piso 7, oficina 47', 'Servicios del Caribe S.A.', 'Av. Bolívar, Galpón 47, Zona Industrial', 'LudoMarket Capital'),
(48, 407, 414, 'J-20000048-7', 'Calle Comercio, Torre Empresarial, piso 8, oficina 48', 'Grupo Bolivariana S.R.L.', 'Calle Sucre, Galpón 48, Zona Industrial', 'MegaToys Continental'),
(49, 408, 415, 'J-20000049-8', 'Av. Principal, Torre Empresarial, piso 9, oficina 49', 'Constructora Capital C.A.', 'Av. Urdaneta, Galpón 49, Zona Industrial', 'HappyKids Venezolana'),
(50, 409, 416, 'J-20000050-9', 'Calle Real, Torre Empresarial, piso 10, oficina 50', 'Tecnología Continental S.A.', 'Calle Páez, Galpón 50, Zona Industrial', 'StarToys Atlántica'),
(51, 410, 417, 'J-20000051-0', 'Av. Bolívar, Torre Empresarial, piso 11, oficina 51', 'Inversiones Venezolana C.A.', 'Av. Libertador, Galpón 51, Zona Industrial', 'MattelMax del Centro'),
(52, 411, 418, 'J-20000052-1', 'Calle Sucre, Torre Empresarial, piso 12, oficina 52', 'Corporación Atlántica S.A.', 'Calle Miranda, Galpón 52, Zona Industrial', 'ToyVen Global'),
(53, 412, 419, 'J-20000053-2', 'Av. Urdaneta, Torre Empresarial, piso 13, oficina 53', 'Distribuidora del Centro S.R.L.', 'Av. Andrés Bello, Galpón 53, Zona Industrial', 'JuguetesYA Pacífico'),
(54, 413, 420, 'J-20000054-3', 'Calle Páez, Torre Empresarial, piso 14, oficina 54', 'Comercializadora Global C.A.', 'Calle Comercio, Galpón 54, Zona Industrial', 'PlayCenter Real'),
(55, 414, 421, 'J-20000055-4', 'Av. Libertador, Torre Empresarial, piso 15, oficina 55', 'Importadora Pacífico S.A.', 'Av. Principal, Galpón 55, Zona Industrial', 'KidsZone Premium'),
(56, 415, 422, 'J-20000056-5', 'Calle Miranda, Torre Empresarial, piso 16, oficina 56', 'Industrias Real C.A.', 'Calle Real, Galpón 56, Zona Industrial', 'FunBox Unión'),
(57, 416, 423, 'J-20000057-6', 'Av. Andrés Bello, Torre Empresarial, piso 17, oficina 57', 'Servicios Premium S.A.', 'Av. Bolívar, Galpón 57, Zona Industrial', 'LudoMarket Delta'),
(58, 417, 424, 'J-20000058-7', 'Calle Comercio, Torre Empresarial, piso 18, oficina 58', 'Grupo Unión S.R.L.', 'Calle Sucre, Galpón 58, Zona Industrial', 'MegaToys Orion'),
(59, 418, 425, 'J-20000059-8', 'Av. Principal, Torre Empresarial, piso 19, oficina 59', 'Constructora Delta C.A.', 'Av. Urdaneta, Galpón 59, Zona Industrial', 'HappyKids Andina'),
(60, 419, 426, 'J-20000060-9', 'Calle Real, Torre Empresarial, piso 20, oficina 60', 'Tecnología Orion S.A.', 'Calle Páez, Galpón 60, Zona Industrial', 'StarToys del Caribe'),
(61, 420, 427, 'J-20000061-0', 'Av. Bolívar, Torre Empresarial, piso 1, oficina 61', 'Inversiones Andina C.A.', 'Av. Libertador, Galpón 61, Zona Industrial', 'MattelMax Bolivariana'),
(62, 421, 428, 'J-20000062-1', 'Calle Sucre, Torre Empresarial, piso 2, oficina 62', 'Corporación del Caribe S.A.', 'Calle Miranda, Galpón 62, Zona Industrial', 'ToyVen Capital'),
(63, 422, 429, 'J-20000063-2', 'Av. Urdaneta, Torre Empresarial, piso 3, oficina 63', 'Distribuidora Bolivariana S.R.L.', 'Av. Andrés Bello, Galpón 63, Zona Industrial', 'JuguetesYA Continental'),
(64, 423, 430, 'J-20000064-3', 'Calle Páez, Torre Empresarial, piso 4, oficina 64', 'Comercializadora Capital C.A.', 'Calle Comercio, Galpón 64, Zona Industrial', 'PlayCenter Venezolana'),
(65, 424, 431, 'J-20000065-4', 'Av. Libertador, Torre Empresarial, piso 5, oficina 65', 'Importadora Continental S.A.', 'Av. Principal, Galpón 65, Zona Industrial', 'KidsZone Atlántica'),
(66, 425, 432, 'J-20000066-5', 'Calle Miranda, Torre Empresarial, piso 6, oficina 66', 'Industrias Venezolana C.A.', 'Calle Real, Galpón 66, Zona Industrial', 'FunBox del Centro'),
(67, 426, 433, 'J-20000067-6', 'Av. Andrés Bello, Torre Empresarial, piso 7, oficina 67', 'Servicios Atlántica S.A.', 'Av. Bolívar, Galpón 67, Zona Industrial', 'LudoMarket Global'),
(68, 427, 434, 'J-20000068-7', 'Calle Comercio, Torre Empresarial, piso 8, oficina 68', 'Grupo del Centro S.R.L.', 'Calle Sucre, Galpón 68, Zona Industrial', 'MegaToys Pacífico'),
(69, 428, 435, 'J-20000069-8', 'Av. Principal, Torre Empresarial, piso 9, oficina 69', 'Constructora Global C.A.', 'Av. Urdaneta, Galpón 69, Zona Industrial', 'HappyKids Real'),
(70, 429, 436, 'J-20000070-9', 'Calle Real, Torre Empresarial, piso 10, oficina 70', 'Tecnología Pacífico S.A.', 'Calle Páez, Galpón 70, Zona Industrial', 'StarToys Premium'),
(71, 430, 437, 'J-20000071-0', 'Av. Bolívar, Torre Empresarial, piso 11, oficina 71', 'Inversiones Real C.A.', 'Av. Libertador, Galpón 71, Zona Industrial', 'MattelMax Unión'),
(72, 431, 438, 'J-20000072-1', 'Calle Sucre, Torre Empresarial, piso 12, oficina 72', 'Corporación Premium S.A.', 'Calle Miranda, Galpón 72, Zona Industrial', 'ToyVen Delta'),
(73, 432, 439, 'J-20000073-2', 'Av. Urdaneta, Torre Empresarial, piso 13, oficina 73', 'Distribuidora Unión S.R.L.', 'Av. Andrés Bello, Galpón 73, Zona Industrial', 'JuguetesYA Orion'),
(74, 433, 440, 'J-20000074-3', 'Calle Páez, Torre Empresarial, piso 14, oficina 74', 'Comercializadora Delta C.A.', 'Calle Comercio, Galpón 74, Zona Industrial', 'PlayCenter Andina'),
(75, 434, 441, 'J-20000075-4', 'Av. Libertador, Torre Empresarial, piso 15, oficina 75', 'Importadora Orion S.A.', 'Av. Principal, Galpón 75, Zona Industrial', 'KidsZone del Caribe'),
(76, 435, 442, 'J-20000076-5', 'Calle Miranda, Torre Empresarial, piso 16, oficina 76', 'Industrias Andina C.A.', 'Calle Real, Galpón 76, Zona Industrial', 'FunBox Bolivariana'),
(77, 436, 443, 'J-20000077-6', 'Av. Andrés Bello, Torre Empresarial, piso 17, oficina 77', 'Servicios del Caribe S.A.', 'Av. Bolívar, Galpón 77, Zona Industrial', 'LudoMarket Capital'),
(78, 437, 444, 'J-20000078-7', 'Calle Comercio, Torre Empresarial, piso 18, oficina 78', 'Grupo Bolivariana S.R.L.', 'Calle Sucre, Galpón 78, Zona Industrial', 'MegaToys Continental'),
(79, 438, 445, 'J-20000079-8', 'Av. Principal, Torre Empresarial, piso 19, oficina 79', 'Constructora Capital C.A.', 'Av. Urdaneta, Galpón 79, Zona Industrial', 'HappyKids Venezolana'),
(80, 439, 446, 'J-20000080-9', 'Calle Real, Torre Empresarial, piso 20, oficina 80', 'Tecnología Continental S.A.', 'Calle Páez, Galpón 80, Zona Industrial', 'StarToys Atlántica'),
(81, 440, 447, 'J-20000081-0', 'Av. Bolívar, Torre Empresarial, piso 1, oficina 81', 'Inversiones Venezolana C.A.', 'Av. Libertador, Galpón 81, Zona Industrial', 'MattelMax del Centro'),
(82, 441, 448, 'J-20000082-1', 'Calle Sucre, Torre Empresarial, piso 2, oficina 82', 'Corporación Atlántica S.A.', 'Calle Miranda, Galpón 82, Zona Industrial', 'ToyVen Global'),
(83, 442, 449, 'J-20000083-2', 'Av. Urdaneta, Torre Empresarial, piso 3, oficina 83', 'Distribuidora del Centro S.R.L.', 'Av. Andrés Bello, Galpón 83, Zona Industrial', 'JuguetesYA Pacífico'),
(84, 443, 450, 'J-20000084-3', 'Calle Páez, Torre Empresarial, piso 4, oficina 84', 'Comercializadora Global C.A.', 'Calle Comercio, Galpón 84, Zona Industrial', 'PlayCenter Real'),
(85, 444, 451, 'J-20000085-4', 'Av. Libertador, Torre Empresarial, piso 5, oficina 85', 'Importadora Pacífico S.A.', 'Av. Principal, Galpón 85, Zona Industrial', 'KidsZone Premium'),
(86, 445, 452, 'J-20000086-5', 'Calle Miranda, Torre Empresarial, piso 6, oficina 86', 'Industrias Real C.A.', 'Calle Real, Galpón 86, Zona Industrial', 'FunBox Unión'),
(87, 446, 453, 'J-20000087-6', 'Av. Andrés Bello, Torre Empresarial, piso 7, oficina 87', 'Servicios Premium S.A.', 'Av. Bolívar, Galpón 87, Zona Industrial', 'LudoMarket Delta'),
(88, 447, 454, 'J-20000088-7', 'Calle Comercio, Torre Empresarial, piso 8, oficina 88', 'Grupo Unión S.R.L.', 'Calle Sucre, Galpón 88, Zona Industrial', 'MegaToys Orion'),
(89, 448, 455, 'J-20000089-8', 'Av. Principal, Torre Empresarial, piso 9, oficina 89', 'Constructora Delta C.A.', 'Av. Urdaneta, Galpón 89, Zona Industrial', 'HappyKids Andina'),
(90, 449, 456, 'J-20000090-9', 'Calle Real, Torre Empresarial, piso 10, oficina 90', 'Tecnología Orion S.A.', 'Calle Páez, Galpón 90, Zona Industrial', 'StarToys del Caribe'),
(91, 450, 457, 'J-20000091-0', 'Av. Bolívar, Torre Empresarial, piso 11, oficina 91', 'Inversiones Andina C.A.', 'Av. Libertador, Galpón 91, Zona Industrial', 'MattelMax Bolivariana'),
(92, 451, 458, 'J-20000092-1', 'Calle Sucre, Torre Empresarial, piso 12, oficina 92', 'Corporación del Caribe S.A.', 'Calle Miranda, Galpón 92, Zona Industrial', 'ToyVen Capital'),
(93, 452, 459, 'J-20000093-2', 'Av. Urdaneta, Torre Empresarial, piso 13, oficina 93', 'Distribuidora Bolivariana S.R.L.', 'Av. Andrés Bello, Galpón 93, Zona Industrial', 'JuguetesYA Continental'),
(94, 453, 460, 'J-20000094-3', 'Calle Páez, Torre Empresarial, piso 14, oficina 94', 'Comercializadora Capital C.A.', 'Calle Comercio, Galpón 94, Zona Industrial', 'PlayCenter Venezolana'),
(95, 454, 461, 'J-20000095-4', 'Av. Libertador, Torre Empresarial, piso 15, oficina 95', 'Importadora Continental S.A.', 'Av. Principal, Galpón 95, Zona Industrial', 'KidsZone Atlántica'),
(96, 455, 462, 'J-20000096-5', 'Calle Miranda, Torre Empresarial, piso 16, oficina 96', 'Industrias Venezolana C.A.', 'Calle Real, Galpón 96, Zona Industrial', 'FunBox del Centro'),
(97, 456, 463, 'J-20000097-6', 'Av. Andrés Bello, Torre Empresarial, piso 17, oficina 97', 'Servicios Atlántica S.A.', 'Av. Bolívar, Galpón 97, Zona Industrial', 'LudoMarket Global'),
(98, 457, 464, 'J-20000098-7', 'Calle Comercio, Torre Empresarial, piso 18, oficina 98', 'Grupo del Centro S.R.L.', 'Calle Sucre, Galpón 98, Zona Industrial', 'MegaToys Pacífico'),
(99, 458, 465, 'J-20000099-8', 'Av. Principal, Torre Empresarial, piso 19, oficina 99', 'Constructora Global C.A.', 'Av. Urdaneta, Galpón 99, Zona Industrial', 'HappyKids Real'),
(100, 459, 466, 'J-20000100-9', 'Calle Real, Torre Empresarial, piso 20, oficina 100', 'Tecnología Pacífico S.A.', 'Calle Páez, Galpón 100, Zona Industrial', 'StarToys Premium'),
(101, 460, 467, 'J-20000101-0', 'Av. Bolívar, Torre Empresarial, piso 1, oficina 101', 'Inversiones Real C.A.', 'Av. Libertador, Galpón 101, Zona Industrial', 'MattelMax Unión'),
(102, 461, 468, 'J-20000102-1', 'Calle Sucre, Torre Empresarial, piso 2, oficina 102', 'Corporación Premium S.A.', 'Calle Miranda, Galpón 102, Zona Industrial', 'ToyVen Delta'),
(103, 462, 469, 'J-20000103-2', 'Av. Urdaneta, Torre Empresarial, piso 3, oficina 103', 'Distribuidora Unión S.R.L.', 'Av. Andrés Bello, Galpón 103, Zona Industrial', 'JuguetesYA Orion'),
(104, 463, 470, 'J-20000104-3', 'Calle Páez, Torre Empresarial, piso 4, oficina 104', 'Comercializadora Delta C.A.', 'Calle Comercio, Galpón 104, Zona Industrial', 'PlayCenter Andina'),
(105, 464, 471, 'J-20000105-4', 'Av. Libertador, Torre Empresarial, piso 5, oficina 105', 'Importadora Orion S.A.', 'Av. Principal, Galpón 105, Zona Industrial', 'KidsZone del Caribe'),
(106, 465, 472, 'J-20000106-5', 'Calle Miranda, Torre Empresarial, piso 6, oficina 106', 'Industrias Andina C.A.', 'Calle Real, Galpón 106, Zona Industrial', 'FunBox Bolivariana'),
(107, 466, 473, 'J-20000107-6', 'Av. Andrés Bello, Torre Empresarial, piso 7, oficina 107', 'Servicios del Caribe S.A.', 'Av. Bolívar, Galpón 107, Zona Industrial', 'LudoMarket Capital'),
(108, 467, 474, 'J-20000108-7', 'Calle Comercio, Torre Empresarial, piso 8, oficina 108', 'Grupo Bolivariana S.R.L.', 'Calle Sucre, Galpón 108, Zona Industrial', 'MegaToys Continental'),
(109, 468, 475, 'J-20000109-8', 'Av. Principal, Torre Empresarial, piso 9, oficina 109', 'Constructora Capital C.A.', 'Av. Urdaneta, Galpón 109, Zona Industrial', 'HappyKids Venezolana'),
(110, 469, 476, 'J-20000110-9', 'Calle Real, Torre Empresarial, piso 10, oficina 110', 'Tecnología Continental S.A.', 'Calle Páez, Galpón 110, Zona Industrial', 'StarToys Atlántica'),
(111, 470, 477, 'J-20000111-0', 'Av. Bolívar, Torre Empresarial, piso 11, oficina 111', 'Inversiones Venezolana C.A.', 'Av. Libertador, Galpón 111, Zona Industrial', 'MattelMax del Centro'),
(112, 471, 478, 'J-20000112-1', 'Calle Sucre, Torre Empresarial, piso 12, oficina 112', 'Corporación Atlántica S.A.', 'Calle Miranda, Galpón 112, Zona Industrial', 'ToyVen Global'),
(113, 472, 479, 'J-20000113-2', 'Av. Urdaneta, Torre Empresarial, piso 13, oficina 113', 'Distribuidora del Centro S.R.L.', 'Av. Andrés Bello, Galpón 113, Zona Industrial', 'JuguetesYA Pacífico'),
(114, 473, 480, 'J-20000114-3', 'Calle Páez, Torre Empresarial, piso 14, oficina 114', 'Comercializadora Global C.A.', 'Calle Comercio, Galpón 114, Zona Industrial', 'PlayCenter Real'),
(115, 474, 481, 'J-20000115-4', 'Av. Libertador, Torre Empresarial, piso 15, oficina 115', 'Importadora Pacífico S.A.', 'Av. Principal, Galpón 115, Zona Industrial', 'KidsZone Premium'),
(116, 475, 482, 'J-20000116-5', 'Calle Miranda, Torre Empresarial, piso 16, oficina 116', 'Industrias Real C.A.', 'Calle Real, Galpón 116, Zona Industrial', 'FunBox Unión'),
(117, 476, 483, 'J-20000117-6', 'Av. Andrés Bello, Torre Empresarial, piso 17, oficina 117', 'Servicios Premium S.A.', 'Av. Bolívar, Galpón 117, Zona Industrial', 'LudoMarket Delta'),
(118, 477, 484, 'J-20000118-7', 'Calle Comercio, Torre Empresarial, piso 18, oficina 118', 'Grupo Unión S.R.L.', 'Calle Sucre, Galpón 118, Zona Industrial', 'MegaToys Orion'),
(119, 478, 485, 'J-20000119-8', 'Av. Principal, Torre Empresarial, piso 19, oficina 119', 'Constructora Delta C.A.', 'Av. Urdaneta, Galpón 119, Zona Industrial', 'HappyKids Andina'),
(120, 479, 486, 'J-20000120-9', 'Calle Real, Torre Empresarial, piso 20, oficina 120', 'Tecnología Orion S.A.', 'Calle Páez, Galpón 120, Zona Industrial', 'StarToys del Caribe'),
(121, 480, 487, 'J-20000121-0', 'Av. Bolívar, Torre Empresarial, piso 1, oficina 121', 'Inversiones Andina C.A.', 'Av. Libertador, Galpón 121, Zona Industrial', 'MattelMax Bolivariana'),
(122, 481, 488, 'J-20000122-1', 'Calle Sucre, Torre Empresarial, piso 2, oficina 122', 'Corporación del Caribe S.A.', 'Calle Miranda, Galpón 122, Zona Industrial', 'ToyVen Capital'),
(123, 482, 489, 'J-20000123-2', 'Av. Urdaneta, Torre Empresarial, piso 3, oficina 123', 'Distribuidora Bolivariana S.R.L.', 'Av. Andrés Bello, Galpón 123, Zona Industrial', 'JuguetesYA Continental'),
(124, 483, 490, 'J-20000124-3', 'Calle Páez, Torre Empresarial, piso 4, oficina 124', 'Comercializadora Capital C.A.', 'Calle Comercio, Galpón 124, Zona Industrial', 'PlayCenter Venezolana'),
(125, 484, 491, 'J-20000125-4', 'Av. Libertador, Torre Empresarial, piso 5, oficina 125', 'Importadora Continental S.A.', 'Av. Principal, Galpón 125, Zona Industrial', 'KidsZone Atlántica'),
(126, 485, 492, 'J-20000126-5', 'Calle Miranda, Torre Empresarial, piso 6, oficina 126', 'Industrias Venezolana C.A.', 'Calle Real, Galpón 126, Zona Industrial', 'FunBox del Centro'),
(127, 486, 493, 'J-20000127-6', 'Av. Andrés Bello, Torre Empresarial, piso 7, oficina 127', 'Servicios Atlántica S.A.', 'Av. Bolívar, Galpón 127, Zona Industrial', 'LudoMarket Global'),
(128, 487, 494, 'J-20000128-7', 'Calle Comercio, Torre Empresarial, piso 8, oficina 128', 'Grupo del Centro S.R.L.', 'Calle Sucre, Galpón 128, Zona Industrial', 'MegaToys Pacífico'),
(129, 488, 495, 'J-20000129-8', 'Av. Principal, Torre Empresarial, piso 9, oficina 129', 'Constructora Global C.A.', 'Av. Urdaneta, Galpón 129, Zona Industrial', 'HappyKids Real'),
(130, 489, 496, 'J-20000130-9', 'Calle Real, Torre Empresarial, piso 10, oficina 130', 'Tecnología Pacífico S.A.', 'Calle Páez, Galpón 130, Zona Industrial', 'StarToys Premium'),
(131, 490, 497, 'J-20000131-0', 'Av. Bolívar, Torre Empresarial, piso 11, oficina 131', 'Inversiones Real C.A.', 'Av. Libertador, Galpón 131, Zona Industrial', 'MattelMax Unión'),
(132, 491, 498, 'J-20000132-1', 'Calle Sucre, Torre Empresarial, piso 12, oficina 132', 'Corporación Premium S.A.', 'Calle Miranda, Galpón 132, Zona Industrial', 'ToyVen Delta'),
(133, 492, 499, 'J-20000133-2', 'Av. Urdaneta, Torre Empresarial, piso 13, oficina 133', 'Distribuidora Unión S.R.L.', 'Av. Andrés Bello, Galpón 133, Zona Industrial', 'JuguetesYA Orion'),
(134, 493, 500, 'J-20000134-3', 'Calle Páez, Torre Empresarial, piso 14, oficina 134', 'Comercializadora Delta C.A.', 'Calle Comercio, Galpón 134, Zona Industrial', 'PlayCenter Andina'),
(135, 494, 501, 'J-20000135-4', 'Av. Libertador, Torre Empresarial, piso 15, oficina 135', 'Importadora Orion S.A.', 'Av. Principal, Galpón 135, Zona Industrial', 'KidsZone del Caribe'),
(136, 495, 502, 'J-20000136-5', 'Calle Miranda, Torre Empresarial, piso 16, oficina 136', 'Industrias Andina C.A.', 'Calle Real, Galpón 136, Zona Industrial', 'FunBox Bolivariana'),
(137, 496, 503, 'J-20000137-6', 'Av. Andrés Bello, Torre Empresarial, piso 17, oficina 137', 'Servicios del Caribe S.A.', 'Av. Bolívar, Galpón 137, Zona Industrial', 'LudoMarket Capital'),
(138, 497, 504, 'J-20000138-7', 'Calle Comercio, Torre Empresarial, piso 18, oficina 138', 'Grupo Bolivariana S.R.L.', 'Calle Sucre, Galpón 138, Zona Industrial', 'MegaToys Continental'),
(139, 498, 505, 'J-20000139-8', 'Av. Principal, Torre Empresarial, piso 19, oficina 139', 'Constructora Capital C.A.', 'Av. Urdaneta, Galpón 139, Zona Industrial', 'HappyKids Venezolana'),
(140, 499, 506, 'J-20000140-9', 'Calle Real, Torre Empresarial, piso 20, oficina 140', 'Tecnología Continental S.A.', 'Calle Páez, Galpón 140, Zona Industrial', 'StarToys Atlántica'),
(141, 500, 507, 'J-20000141-0', 'Av. Bolívar, Torre Empresarial, piso 1, oficina 141', 'Inversiones Venezolana C.A.', 'Av. Libertador, Galpón 141, Zona Industrial', 'MattelMax del Centro'),
(142, 501, 508, 'J-20000142-1', 'Calle Sucre, Torre Empresarial, piso 2, oficina 142', 'Corporación Atlántica S.A.', 'Calle Miranda, Galpón 142, Zona Industrial', 'ToyVen Global'),
(143, 502, 509, 'J-20000143-2', 'Av. Urdaneta, Torre Empresarial, piso 3, oficina 143', 'Distribuidora del Centro S.R.L.', 'Av. Andrés Bello, Galpón 143, Zona Industrial', 'JuguetesYA Pacífico'),
(144, 503, 510, 'J-20000144-3', 'Calle Páez, Torre Empresarial, piso 4, oficina 144', 'Comercializadora Global C.A.', 'Calle Comercio, Galpón 144, Zona Industrial', 'PlayCenter Real'),
(145, 504, 511, 'J-20000145-4', 'Av. Libertador, Torre Empresarial, piso 5, oficina 145', 'Importadora Pacífico S.A.', 'Av. Principal, Galpón 145, Zona Industrial', 'KidsZone Premium'),
(146, 505, 512, 'J-20000146-5', 'Calle Miranda, Torre Empresarial, piso 6, oficina 146', 'Industrias Real C.A.', 'Calle Real, Galpón 146, Zona Industrial', 'FunBox Unión'),
(147, 506, 513, 'J-20000147-6', 'Av. Andrés Bello, Torre Empresarial, piso 7, oficina 147', 'Servicios Premium S.A.', 'Av. Bolívar, Galpón 147, Zona Industrial', 'LudoMarket Delta'),
(148, 507, 514, 'J-20000148-7', 'Calle Comercio, Torre Empresarial, piso 8, oficina 148', 'Grupo Unión S.R.L.', 'Calle Sucre, Galpón 148, Zona Industrial', 'MegaToys Orion'),
(149, 508, 515, 'J-20000149-8', 'Av. Principal, Torre Empresarial, piso 9, oficina 149', 'Constructora Delta C.A.', 'Av. Urdaneta, Galpón 149, Zona Industrial', 'HappyKids Andina'),
(150, 509, 516, 'J-20000150-9', 'Calle Real, Torre Empresarial, piso 10, oficina 150', 'Tecnología Orion S.A.', 'Calle Páez, Galpón 150, Zona Industrial', 'StarToys del Caribe'),
(151, 510, 517, 'J-20000151-0', 'Av. Bolívar, Torre Empresarial, piso 11, oficina 151', 'Inversiones Andina C.A.', 'Av. Libertador, Galpón 151, Zona Industrial', 'MattelMax Bolivariana'),
(152, 511, 518, 'J-20000152-1', 'Calle Sucre, Torre Empresarial, piso 12, oficina 152', 'Corporación del Caribe S.A.', 'Calle Miranda, Galpón 152, Zona Industrial', 'ToyVen Capital'),
(153, 512, 519, 'J-20000153-2', 'Av. Urdaneta, Torre Empresarial, piso 13, oficina 153', 'Distribuidora Bolivariana S.R.L.', 'Av. Andrés Bello, Galpón 153, Zona Industrial', 'JuguetesYA Continental'),
(154, 513, 520, 'J-20000154-3', 'Calle Páez, Torre Empresarial, piso 14, oficina 154', 'Comercializadora Capital C.A.', 'Calle Comercio, Galpón 154, Zona Industrial', 'PlayCenter Venezolana'),
(155, 514, 521, 'J-20000155-4', 'Av. Libertador, Torre Empresarial, piso 15, oficina 155', 'Importadora Continental S.A.', 'Av. Principal, Galpón 155, Zona Industrial', 'KidsZone Atlántica'),
(156, 515, 522, 'J-20000156-5', 'Calle Miranda, Torre Empresarial, piso 16, oficina 156', 'Industrias Venezolana C.A.', 'Calle Real, Galpón 156, Zona Industrial', 'FunBox del Centro'),
(157, 516, 523, 'J-20000157-6', 'Av. Andrés Bello, Torre Empresarial, piso 17, oficina 157', 'Servicios Atlántica S.A.', 'Av. Bolívar, Galpón 157, Zona Industrial', 'LudoMarket Global'),
(158, 517, 524, 'J-20000158-7', 'Calle Comercio, Torre Empresarial, piso 18, oficina 158', 'Grupo del Centro S.R.L.', 'Calle Sucre, Galpón 158, Zona Industrial', 'MegaToys Pacífico'),
(159, 518, 525, 'J-20000159-8', 'Av. Principal, Torre Empresarial, piso 19, oficina 159', 'Constructora Global C.A.', 'Av. Urdaneta, Galpón 159, Zona Industrial', 'HappyKids Real'),
(160, 519, 526, 'J-20000160-9', 'Calle Real, Torre Empresarial, piso 20, oficina 160', 'Tecnología Pacífico S.A.', 'Calle Páez, Galpón 160, Zona Industrial', 'StarToys Premium'),
(161, 520, 527, 'J-20000161-0', 'Av. Bolívar, Torre Empresarial, piso 1, oficina 161', 'Inversiones Real C.A.', 'Av. Libertador, Galpón 161, Zona Industrial', 'MattelMax Unión'),
(162, 521, 528, 'J-20000162-1', 'Calle Sucre, Torre Empresarial, piso 2, oficina 162', 'Corporación Premium S.A.', 'Calle Miranda, Galpón 162, Zona Industrial', 'ToyVen Delta'),
(163, 522, 529, 'J-20000163-2', 'Av. Urdaneta, Torre Empresarial, piso 3, oficina 163', 'Distribuidora Unión S.R.L.', 'Av. Andrés Bello, Galpón 163, Zona Industrial', 'JuguetesYA Orion'),
(164, 523, 530, 'J-20000164-3', 'Calle Páez, Torre Empresarial, piso 4, oficina 164', 'Comercializadora Delta C.A.', 'Calle Comercio, Galpón 164, Zona Industrial', 'PlayCenter Andina'),
(165, 524, 531, 'J-20000165-4', 'Av. Libertador, Torre Empresarial, piso 5, oficina 165', 'Importadora Orion S.A.', 'Av. Principal, Galpón 165, Zona Industrial', 'KidsZone del Caribe'),
(166, 525, 532, 'J-20000166-5', 'Calle Miranda, Torre Empresarial, piso 6, oficina 166', 'Industrias Andina C.A.', 'Calle Real, Galpón 166, Zona Industrial', 'FunBox Bolivariana'),
(167, 526, 533, 'J-20000167-6', 'Av. Andrés Bello, Torre Empresarial, piso 7, oficina 167', 'Servicios del Caribe S.A.', 'Av. Bolívar, Galpón 167, Zona Industrial', 'LudoMarket Capital'),
(168, 527, 534, 'J-20000168-7', 'Calle Comercio, Torre Empresarial, piso 8, oficina 168', 'Grupo Bolivariana S.R.L.', 'Calle Sucre, Galpón 168, Zona Industrial', 'MegaToys Continental'),
(169, 528, 535, 'J-20000169-8', 'Av. Principal, Torre Empresarial, piso 9, oficina 169', 'Constructora Capital C.A.', 'Av. Urdaneta, Galpón 169, Zona Industrial', 'HappyKids Venezolana'),
(170, 529, 536, 'J-20000170-9', 'Calle Real, Torre Empresarial, piso 10, oficina 170', 'Tecnología Continental S.A.', 'Calle Páez, Galpón 170, Zona Industrial', 'StarToys Atlántica'),
(171, 530, 537, 'J-20000171-0', 'Av. Bolívar, Torre Empresarial, piso 11, oficina 171', 'Inversiones Venezolana C.A.', 'Av. Libertador, Galpón 171, Zona Industrial', 'MattelMax del Centro'),
(172, 531, 538, 'J-20000172-1', 'Calle Sucre, Torre Empresarial, piso 12, oficina 172', 'Corporación Atlántica S.A.', 'Calle Miranda, Galpón 172, Zona Industrial', 'ToyVen Global'),
(173, 532, 539, 'J-20000173-2', 'Av. Urdaneta, Torre Empresarial, piso 13, oficina 173', 'Distribuidora del Centro S.R.L.', 'Av. Andrés Bello, Galpón 173, Zona Industrial', 'JuguetesYA Pacífico'),
(174, 533, 540, 'J-20000174-3', 'Calle Páez, Torre Empresarial, piso 14, oficina 174', 'Comercializadora Global C.A.', 'Calle Comercio, Galpón 174, Zona Industrial', 'PlayCenter Real'),
(175, 534, 541, 'J-20000175-4', 'Av. Libertador, Torre Empresarial, piso 15, oficina 175', 'Importadora Pacífico S.A.', 'Av. Principal, Galpón 175, Zona Industrial', 'KidsZone Premium'),
(176, 535, 542, 'J-20000176-5', 'Calle Miranda, Torre Empresarial, piso 16, oficina 176', 'Industrias Real C.A.', 'Calle Real, Galpón 176, Zona Industrial', 'FunBox Unión'),
(177, 536, 543, 'J-20000177-6', 'Av. Andrés Bello, Torre Empresarial, piso 17, oficina 177', 'Servicios Premium S.A.', 'Av. Bolívar, Galpón 177, Zona Industrial', 'LudoMarket Delta'),
(178, 537, 544, 'J-20000178-7', 'Calle Comercio, Torre Empresarial, piso 18, oficina 178', 'Grupo Unión S.R.L.', 'Calle Sucre, Galpón 178, Zona Industrial', 'MegaToys Orion'),
(179, 538, 545, 'J-20000179-8', 'Av. Principal, Torre Empresarial, piso 19, oficina 179', 'Constructora Delta C.A.', 'Av. Urdaneta, Galpón 179, Zona Industrial', 'HappyKids Andina'),
(180, 539, 546, 'J-20000180-9', 'Calle Real, Torre Empresarial, piso 20, oficina 180', 'Tecnología Orion S.A.', 'Calle Páez, Galpón 180, Zona Industrial', 'StarToys del Caribe'),
(181, 540, 547, 'J-20000181-0', 'Av. Bolívar, Torre Empresarial, piso 1, oficina 181', 'Inversiones Andina C.A.', 'Av. Libertador, Galpón 181, Zona Industrial', 'MattelMax Bolivariana'),
(182, 541, 548, 'J-20000182-1', 'Calle Sucre, Torre Empresarial, piso 2, oficina 182', 'Corporación del Caribe S.A.', 'Calle Miranda, Galpón 182, Zona Industrial', 'ToyVen Capital'),
(183, 542, 549, 'J-20000183-2', 'Av. Urdaneta, Torre Empresarial, piso 3, oficina 183', 'Distribuidora Bolivariana S.R.L.', 'Av. Andrés Bello, Galpón 183, Zona Industrial', 'JuguetesYA Continental'),
(184, 543, 550, 'J-20000184-3', 'Calle Páez, Torre Empresarial, piso 4, oficina 184', 'Comercializadora Capital C.A.', 'Calle Comercio, Galpón 184, Zona Industrial', 'PlayCenter Venezolana'),
(185, 544, 551, 'J-20000185-4', 'Av. Libertador, Torre Empresarial, piso 5, oficina 185', 'Importadora Continental S.A.', 'Av. Principal, Galpón 185, Zona Industrial', 'KidsZone Atlántica'),
(186, 545, 552, 'J-20000186-5', 'Calle Miranda, Torre Empresarial, piso 6, oficina 186', 'Industrias Venezolana C.A.', 'Calle Real, Galpón 186, Zona Industrial', 'FunBox del Centro'),
(187, 546, 553, 'J-20000187-6', 'Av. Andrés Bello, Torre Empresarial, piso 7, oficina 187', 'Servicios Atlántica S.A.', 'Av. Bolívar, Galpón 187, Zona Industrial', 'LudoMarket Global'),
(188, 547, 554, 'J-20000188-7', 'Calle Comercio, Torre Empresarial, piso 8, oficina 188', 'Grupo del Centro S.R.L.', 'Calle Sucre, Galpón 188, Zona Industrial', 'MegaToys Pacífico'),
(189, 548, 555, 'J-20000189-8', 'Av. Principal, Torre Empresarial, piso 9, oficina 189', 'Constructora Global C.A.', 'Av. Urdaneta, Galpón 189, Zona Industrial', 'HappyKids Real'),
(190, 549, 556, 'J-20000190-9', 'Calle Real, Torre Empresarial, piso 10, oficina 190', 'Tecnología Pacífico S.A.', 'Calle Páez, Galpón 190, Zona Industrial', 'StarToys Premium'),
(191, 550, 557, 'J-20000191-0', 'Av. Bolívar, Torre Empresarial, piso 11, oficina 191', 'Inversiones Real C.A.', 'Av. Libertador, Galpón 191, Zona Industrial', 'MattelMax Unión'),
(192, 551, 558, 'J-20000192-1', 'Calle Sucre, Torre Empresarial, piso 12, oficina 192', 'Corporación Premium S.A.', 'Calle Miranda, Galpón 192, Zona Industrial', 'ToyVen Delta'),
(193, 552, 559, 'J-20000193-2', 'Av. Urdaneta, Torre Empresarial, piso 13, oficina 193', 'Distribuidora Unión S.R.L.', 'Av. Andrés Bello, Galpón 193, Zona Industrial', 'JuguetesYA Orion'),
(194, 553, 560, 'J-20000194-3', 'Calle Páez, Torre Empresarial, piso 14, oficina 194', 'Comercializadora Delta C.A.', 'Calle Comercio, Galpón 194, Zona Industrial', 'PlayCenter Andina'),
(195, 554, 561, 'J-20000195-4', 'Av. Libertador, Torre Empresarial, piso 15, oficina 195', 'Importadora Orion S.A.', 'Av. Principal, Galpón 195, Zona Industrial', 'KidsZone del Caribe'),
(196, 555, 562, 'J-20000196-5', 'Calle Miranda, Torre Empresarial, piso 16, oficina 196', 'Industrias Andina C.A.', 'Calle Real, Galpón 196, Zona Industrial', 'FunBox Bolivariana'),
(197, 556, 563, 'J-20000197-6', 'Av. Andrés Bello, Torre Empresarial, piso 17, oficina 197', 'Servicios del Caribe S.A.', 'Av. Bolívar, Galpón 197, Zona Industrial', 'LudoMarket Capital'),
(198, 557, 564, 'J-20000198-7', 'Calle Comercio, Torre Empresarial, piso 18, oficina 198', 'Grupo Bolivariana S.R.L.', 'Calle Sucre, Galpón 198, Zona Industrial', 'MegaToys Continental'),
(199, 558, 565, 'J-20000199-8', 'Av. Principal, Torre Empresarial, piso 19, oficina 199', 'Constructora Capital C.A.', 'Av. Urdaneta, Galpón 199, Zona Industrial', 'HappyKids Venezolana'),
(200, 559, 566, 'J-20000200-9', 'Calle Real, Torre Empresarial, piso 20, oficina 200', 'Tecnología Continental S.A.', 'Calle Páez, Galpón 200, Zona Industrial', 'StarToys Atlántica');

--MATHIAS Y DEVONY
INSERT INTO CLIENTE_B2C
  (ID_PERSONA_NATURAL, FK_LUGAR, RIF_PERSONA_NATURAL, DIRECCION_PERSONA_NATURAL, CEDULA_PERSONA_NATURAL,
   P_NOMBRE_PERSONA_NATURAL, S_NOMBRE_PERSONA_NATURAL, P_APELLIDO_PERSONA_NATURAL,
   S_APELLIDO_PERSONA_NATURAL, FECHA_NAC_PERSONA_NATURAL)
VALUES
  (1, 360, 'V-10000001-0', 'Av. Bolívar, casa 100', 'V-10000001', 'José', 'Alberto', 'González', 'Quintero', DATE '1960-01-01'),
  (2, 361, 'V-10000002-1', 'Calle Sucre, casa 101', 'V-10000002', 'Ana', 'Antonio', 'Rodríguez', 'Salazar', DATE '1961-02-02'),
  (3, 362, 'V-10000003-2', 'Av. Urdaneta, casa 102', 'V-10000003', 'Carlos', 'Enrique', 'Pérez', 'Montilla', DATE '1962-03-03'),
  (4, 363, 'V-10000004-3', 'Calle Páez, casa 103', 'V-10000004', 'Rosa', 'Ramón', 'Hernández', NULL, DATE '1963-04-04'),
  (5, 364, 'V-10000005-4', 'Av. Libertador, casa 104', 'V-10000005', 'Miguel', 'Ignacio', 'García', NULL, DATE '1964-05-05'),
  (6, 365, 'V-10000006-5', 'Calle Miranda, casa 105', 'V-10000006', 'Isabel', 'Coromoto', 'Martínez', NULL, DATE '1965-06-06'),
  (7, 366, 'V-10000007-6', 'Av. Andrés Bello, casa 106', 'V-10000007', 'Jesús', 'Auxiliadora', 'López', NULL, DATE '1966-07-07'),
  (8, 367, 'V-10000008-7', 'Calle Comercio, casa 107', 'V-10000008', 'Daniela', 'del Valle', 'Sánchez', 'Goncalves', DATE '1967-08-08'),
  (9, 368, 'V-10000009-8', 'Av. Principal, casa 108', 'V-10000009', 'Manuel', 'José', 'Ramírez', 'Da Silva', DATE '1968-09-09'),
  (10, 369, 'V-10000010-9', 'Calle Real, casa 109', 'V-10000010', 'Patricia', 'Beatriz', 'Torres', 'Pérez', DATE '1969-10-10'),
  (11, 370, 'V-10000011-0', 'Av. Bolívar, casa 110', 'V-10000011', 'Daniel', 'Alejandra', 'Flores', 'Quintero', DATE '1970-11-11'),
  (12, 371, 'V-10000012-1', 'Calle Sucre, casa 111', 'V-10000012', 'Marta', 'Eugenia', 'Rivas', 'Salazar', DATE '1971-12-12'),
  (13, 372, 'V-10000013-2', 'Av. Urdaneta, casa 112', 'V-10000013', 'Francisco', NULL, 'Gómez', 'Montilla', DATE '1972-01-13'),
  (14, 373, 'V-10000014-3', 'Calle Páez, casa 113', 'V-10000014', 'Sofía', NULL, 'Díaz', NULL, DATE '1973-02-14'),
  (15, 374, 'V-10000015-4', 'Av. Libertador, casa 114', 'V-10000015', 'Alejandro', NULL, 'Castillo', NULL, DATE '1974-03-15'),
  (16, 375, 'V-10000016-5', 'Calle Miranda, casa 115', 'V-10000016', 'Cristina', 'Alberto', 'Romero', NULL, DATE '1975-04-16'),
  (17, 376, 'V-10000017-6', 'Av. Andrés Bello, casa 116', 'V-10000017', 'Eduardo', 'Antonio', 'Suárez', NULL, DATE '1976-05-17'),
  (18, 377, 'V-10000018-7', 'Calle Comercio, casa 117', 'V-10000018', 'Adriana', 'Enrique', 'Mendoza', 'Goncalves', DATE '1977-06-18'),
  (19, 378, 'V-10000019-8', 'Av. Principal, casa 118', 'V-10000019', 'Jorge', 'Ramón', 'Guerra', 'Da Silva', DATE '1978-07-19'),
  (20, 379, 'V-10000020-9', 'Calle Real, casa 119', 'V-10000020', 'Teresa', 'Ignacio', 'Blanco', 'Pérez', DATE '1979-08-20'),
  (21, 380, 'V-10000021-0', 'Av. Bolívar, casa 120', 'V-10000021', 'José', 'Coromoto', 'Marcano', 'Quintero', DATE '1980-09-21'),
  (22, 381, 'V-10000022-1', 'Calle Sucre, casa 121', 'V-10000022', 'Ana', 'Auxiliadora', 'D''Andrea', 'Salazar', DATE '1981-10-22'),
  (23, 382, 'V-10000023-2', 'Av. Urdaneta, casa 122', 'V-10000023', 'Carlos', 'del Valle', 'Bermúdez', 'Montilla', DATE '1982-11-23'),
  (24, 383, 'V-10000024-3', 'Calle Páez, casa 123', 'V-10000024', 'Rosa', 'José', 'Contreras', NULL, DATE '1983-12-24'),
  (25, 384, 'V-10000025-4', 'Av. Libertador, casa 124', 'V-10000025', 'Miguel', 'Beatriz', 'Querales', NULL, DATE '1984-01-25'),
  (26, 385, 'V-10000026-5', 'Calle Miranda, casa 125', 'V-10000026', 'Isabel', 'Alejandra', 'Fuenmayor', NULL, DATE '1985-02-26'),
  (27, 386, 'V-10000027-6', 'Av. Andrés Bello, casa 126', 'V-10000027', 'Jesús', 'Eugenia', 'González', NULL, DATE '1986-03-27'),
  (28, 387, 'V-10000028-7', 'Calle Comercio, casa 127', 'V-10000028', 'Daniela', NULL, 'Rodríguez', 'Goncalves', DATE '1987-04-28'),
  (29, 388, 'V-10000029-8', 'Av. Principal, casa 128', 'V-10000029', 'Manuel', NULL, 'Pérez', 'Da Silva', DATE '1988-05-01'),
  (30, 389, 'V-10000030-9', 'Calle Real, casa 129', 'V-10000030', 'Patricia', NULL, 'Hernández', 'Pérez', DATE '1989-06-02'),
  (31, 390, 'V-10000031-0', 'Av. Bolívar, casa 130', 'V-10000031', 'Daniel', 'Alberto', 'García', 'Quintero', DATE '1990-07-03'),
  (32, 391, 'V-10000032-1', 'Calle Sucre, casa 131', 'V-10000032', 'Marta', 'Antonio', 'Martínez', 'Salazar', DATE '1991-08-04'),
  (33, 392, 'V-10000033-2', 'Av. Urdaneta, casa 132', 'V-10000033', 'Francisco', 'Enrique', 'López', 'Montilla', DATE '1992-09-05'),
  (34, 393, 'V-10000034-3', 'Calle Páez, casa 133', 'V-10000034', 'Sofía', 'Ramón', 'Sánchez', NULL, DATE '1993-10-06'),
  (35, 394, 'V-10000035-4', 'Av. Libertador, casa 134', 'V-10000035', 'Alejandro', 'Ignacio', 'Ramírez', NULL, DATE '1994-11-07'),
  (36, 395, 'V-10000036-5', 'Calle Miranda, casa 135', 'V-10000036', 'Cristina', 'Coromoto', 'Torres', NULL, DATE '1995-12-08'),
  (37, 396, 'V-10000037-6', 'Av. Andrés Bello, casa 136', 'V-10000037', 'Eduardo', 'Auxiliadora', 'Flores', NULL, DATE '1996-01-09'),
  (38, 397, 'V-10000038-7', 'Calle Comercio, casa 137', 'V-10000038', 'Adriana', 'del Valle', 'Rivas', 'Goncalves', DATE '1997-02-10'),
  (39, 398, 'V-10000039-8', 'Av. Principal, casa 138', 'V-10000039', 'Jorge', 'José', 'Gómez', 'Da Silva', DATE '1998-03-11'),
  (40, 399, 'V-10000040-9', 'Calle Real, casa 139', 'V-10000040', 'Teresa', 'Beatriz', 'Díaz', 'Pérez', DATE '1999-04-12'),
  (41, 400, 'V-10000041-0', 'Av. Bolívar, casa 140', 'V-10000041', 'José', 'Alejandra', 'Castillo', 'Quintero', DATE '2000-05-13'),
  (42, 401, 'V-10000042-1', 'Calle Sucre, casa 141', 'V-10000042', 'Ana', 'Eugenia', 'Romero', 'Salazar', DATE '2001-06-14'),
  (43, 402, 'V-10000043-2', 'Av. Urdaneta, casa 142', 'V-10000043', 'Carlos', NULL, 'Suárez', 'Montilla', DATE '2002-07-15'),
  (44, 403, 'V-10000044-3', 'Calle Páez, casa 143', 'V-10000044', 'Rosa', NULL, 'Mendoza', NULL, DATE '2003-08-16'),
  (45, 404, 'V-10000045-4', 'Av. Libertador, casa 144', 'V-10000045', 'Miguel', NULL, 'Guerra', NULL, DATE '2004-09-17'),
  (46, 405, 'V-10000046-5', 'Calle Miranda, casa 145', 'V-10000046', 'Isabel', 'Alberto', 'Blanco', NULL, DATE '1960-10-18'),
  (47, 406, 'V-10000047-6', 'Av. Andrés Bello, casa 146', 'V-10000047', 'Jesús', 'Antonio', 'Marcano', NULL, DATE '1961-11-19'),
  (48, 407, 'V-10000048-7', 'Calle Comercio, casa 147', 'V-10000048', 'Daniela', 'Enrique', 'D''Andrea', 'Goncalves', DATE '1962-12-20'),
  (49, 408, 'V-10000049-8', 'Av. Principal, casa 148', 'V-10000049', 'Manuel', 'Ramón', 'Bermúdez', 'Da Silva', DATE '1963-01-21'),
  (50, 409, 'V-10000050-9', 'Calle Real, casa 149', 'V-10000050', 'Patricia', 'Ignacio', 'Contreras', 'Pérez', DATE '1964-02-22'),
  (51, 410, 'V-10000051-0', 'Av. Bolívar, casa 150', 'V-10000051', 'Daniel', 'Coromoto', 'Querales', 'Quintero', DATE '1965-03-23'),
  (52, 411, 'V-10000052-1', 'Calle Sucre, casa 151', 'V-10000052', 'Marta', 'Auxiliadora', 'Fuenmayor', 'Salazar', DATE '1966-04-24'),
  (53, 412, 'V-10000053-2', 'Av. Urdaneta, casa 152', 'V-10000053', 'Francisco', 'del Valle', 'González', 'Montilla', DATE '1967-05-25'),
  (54, 413, 'V-10000054-3', 'Calle Páez, casa 153', 'V-10000054', 'Sofía', 'José', 'Rodríguez', NULL, DATE '1968-06-26'),
  (55, 414, 'V-10000055-4', 'Av. Libertador, casa 154', 'V-10000055', 'Alejandro', 'Beatriz', 'Pérez', NULL, DATE '1969-07-27'),
  (56, 415, 'V-10000056-5', 'Calle Miranda, casa 155', 'V-10000056', 'Cristina', 'Alejandra', 'Hernández', NULL, DATE '1970-08-28'),
  (57, 416, 'V-10000057-6', 'Av. Andrés Bello, casa 156', 'V-10000057', 'Eduardo', 'Eugenia', 'García', NULL, DATE '1971-09-01'),
  (58, 417, 'V-10000058-7', 'Calle Comercio, casa 157', 'V-10000058', 'Adriana', NULL, 'Martínez', 'Goncalves', DATE '1972-10-02'),
  (59, 418, 'V-10000059-8', 'Av. Principal, casa 158', 'V-10000059', 'Jorge', NULL, 'López', 'Da Silva', DATE '1973-11-03'),
  (60, 419, 'V-10000060-9', 'Calle Real, casa 159', 'V-10000060', 'Teresa', NULL, 'Sánchez', 'Pérez', DATE '1974-12-04'),
  (61, 420, 'V-10000061-0', 'Av. Bolívar, casa 160', 'V-10000061', 'José', 'Alberto', 'Ramírez', 'Quintero', DATE '1975-01-05'),
  (62, 421, 'V-10000062-1', 'Calle Sucre, casa 161', 'V-10000062', 'Ana', 'Antonio', 'Torres', 'Salazar', DATE '1976-02-06'),
  (63, 422, 'V-10000063-2', 'Av. Urdaneta, casa 162', 'V-10000063', 'Carlos', 'Enrique', 'Flores', 'Montilla', DATE '1977-03-07'),
  (64, 423, 'V-10000064-3', 'Calle Páez, casa 163', 'V-10000064', 'Rosa', 'Ramón', 'Rivas', NULL, DATE '1978-04-08'),
  (65, 424, 'V-10000065-4', 'Av. Libertador, casa 164', 'V-10000065', 'Miguel', 'Ignacio', 'Gómez', NULL, DATE '1979-05-09'),
  (66, 425, 'V-10000066-5', 'Calle Miranda, casa 165', 'V-10000066', 'Isabel', 'Coromoto', 'Díaz', NULL, DATE '1980-06-10'),
  (67, 426, 'V-10000067-6', 'Av. Andrés Bello, casa 166', 'V-10000067', 'Jesús', 'Auxiliadora', 'Castillo', NULL, DATE '1981-07-11'),
  (68, 427, 'V-10000068-7', 'Calle Comercio, casa 167', 'V-10000068', 'Daniela', 'del Valle', 'Romero', 'Goncalves', DATE '1982-08-12'),
  (69, 428, 'V-10000069-8', 'Av. Principal, casa 168', 'V-10000069', 'Manuel', 'José', 'Suárez', 'Da Silva', DATE '1983-09-13'),
  (70, 429, 'V-10000070-9', 'Calle Real, casa 169', 'V-10000070', 'Patricia', 'Beatriz', 'Mendoza', 'Pérez', DATE '1984-10-14'),
  (71, 430, 'V-10000071-0', 'Av. Bolívar, casa 170', 'V-10000071', 'Daniel', 'Alejandra', 'Guerra', 'Quintero', DATE '1985-11-15'),
  (72, 431, 'V-10000072-1', 'Calle Sucre, casa 171', 'V-10000072', 'Marta', 'Eugenia', 'Blanco', 'Salazar', DATE '1986-12-16'),
  (73, 432, 'V-10000073-2', 'Av. Urdaneta, casa 172', 'V-10000073', 'Francisco', NULL, 'Marcano', 'Montilla', DATE '1987-01-17'),
  (74, 433, 'V-10000074-3', 'Calle Páez, casa 173', 'V-10000074', 'Sofía', NULL, 'D''Andrea', NULL, DATE '1988-02-18'),
  (75, 434, 'V-10000075-4', 'Av. Libertador, casa 174', 'V-10000075', 'Alejandro', NULL, 'Bermúdez', NULL, DATE '1989-03-19'),
  (76, 435, 'V-10000076-5', 'Calle Miranda, casa 175', 'V-10000076', 'Cristina', 'Alberto', 'Contreras', NULL, DATE '1990-04-20'),
  (77, 436, 'V-10000077-6', 'Av. Andrés Bello, casa 176', 'V-10000077', 'Eduardo', 'Antonio', 'Querales', NULL, DATE '1991-05-21'),
  (78, 437, 'V-10000078-7', 'Calle Comercio, casa 177', 'V-10000078', 'Adriana', 'Enrique', 'Fuenmayor', 'Goncalves', DATE '1992-06-22'),
  (79, 438, 'V-10000079-8', 'Av. Principal, casa 178', 'V-10000079', 'Jorge', 'Ramón', 'González', 'Da Silva', DATE '1993-07-23'),
  (80, 439, 'V-10000080-9', 'Calle Real, casa 179', 'V-10000080', 'Teresa', 'Ignacio', 'Rodríguez', 'Pérez', DATE '1994-08-24'),
  (81, 440, 'V-10000081-0', 'Av. Bolívar, casa 180', 'V-10000081', 'José', 'Coromoto', 'Pérez', 'Quintero', DATE '1995-09-25'),
  (82, 441, 'V-10000082-1', 'Calle Sucre, casa 181', 'V-10000082', 'Ana', 'Auxiliadora', 'Hernández', 'Salazar', DATE '1996-10-26'),
  (83, 442, 'V-10000083-2', 'Av. Urdaneta, casa 182', 'V-10000083', 'Carlos', 'del Valle', 'García', 'Montilla', DATE '1997-11-27'),
  (84, 443, 'V-10000084-3', 'Calle Páez, casa 183', 'V-10000084', 'Rosa', 'José', 'Martínez', NULL, DATE '1998-12-28'),
  (85, 444, 'V-10000085-4', 'Av. Libertador, casa 184', 'V-10000085', 'Miguel', 'Beatriz', 'López', NULL, DATE '1999-01-01'),
  (86, 445, 'V-10000086-5', 'Calle Miranda, casa 185', 'V-10000086', 'Isabel', 'Alejandra', 'Sánchez', NULL, DATE '2000-02-02'),
  (87, 446, 'V-10000087-6', 'Av. Andrés Bello, casa 186', 'V-10000087', 'Jesús', 'Eugenia', 'Ramírez', NULL, DATE '2001-03-03'),
  (88, 447, 'V-10000088-7', 'Calle Comercio, casa 187', 'V-10000088', 'Daniela', NULL, 'Torres', 'Goncalves', DATE '2002-04-04'),
  (89, 448, 'V-10000089-8', 'Av. Principal, casa 188', 'V-10000089', 'Manuel', NULL, 'Flores', 'Da Silva', DATE '2003-05-05'),
  (90, 449, 'V-10000090-9', 'Calle Real, casa 189', 'V-10000090', 'Patricia', NULL, 'Rivas', 'Pérez', DATE '2004-06-06'),
  (91, 450, 'V-10000091-0', 'Av. Bolívar, casa 190', 'V-10000091', 'Daniel', 'Alberto', 'Gómez', 'Quintero', DATE '1960-07-07'),
  (92, 451, 'V-10000092-1', 'Calle Sucre, casa 191', 'V-10000092', 'Marta', 'Antonio', 'Díaz', 'Salazar', DATE '1961-08-08'),
  (93, 452, 'V-10000093-2', 'Av. Urdaneta, casa 192', 'V-10000093', 'Francisco', 'Enrique', 'Castillo', 'Montilla', DATE '1962-09-09'),
  (94, 453, 'V-10000094-3', 'Calle Páez, casa 193', 'V-10000094', 'Sofía', 'Ramón', 'Romero', NULL, DATE '1963-10-10'),
  (95, 454, 'V-10000095-4', 'Av. Libertador, casa 194', 'V-10000095', 'Alejandro', 'Ignacio', 'Suárez', NULL, DATE '1964-11-11'),
  (96, 455, 'V-10000096-5', 'Calle Miranda, casa 195', 'V-10000096', 'Cristina', 'Coromoto', 'Mendoza', NULL, DATE '1965-12-12'),
  (97, 456, 'V-10000097-6', 'Av. Andrés Bello, casa 196', 'V-10000097', 'Eduardo', 'Auxiliadora', 'Guerra', NULL, DATE '1966-01-13'),
  (98, 457, 'V-10000098-7', 'Calle Comercio, casa 197', 'V-10000098', 'Adriana', 'del Valle', 'Blanco', 'Goncalves', DATE '1967-02-14'),
  (99, 458, 'V-10000099-8', 'Av. Principal, casa 198', 'V-10000099', 'Jorge', 'José', 'Marcano', 'Da Silva', DATE '1968-03-15'),
  (100, 459, 'V-10000100-9', 'Calle Real, casa 199', 'V-10000100', 'Teresa', 'Beatriz', 'D''Andrea', 'Pérez', DATE '1969-04-16'),
  (101, 460, 'V-10000101-0', 'Av. Bolívar, casa 200', 'V-10000101', 'José', 'Alejandra', 'Bermúdez', 'Quintero', DATE '1970-05-17'),
  (102, 461, 'V-10000102-1', 'Calle Sucre, casa 201', 'V-10000102', 'Ana', 'Eugenia', 'Contreras', 'Salazar', DATE '1971-06-18'),
  (103, 462, 'V-10000103-2', 'Av. Urdaneta, casa 202', 'V-10000103', 'Carlos', NULL, 'Querales', 'Montilla', DATE '1972-07-19'),
  (104, 463, 'V-10000104-3', 'Calle Páez, casa 203', 'V-10000104', 'Rosa', NULL, 'Fuenmayor', NULL, DATE '1973-08-20'),
  (105, 464, 'V-10000105-4', 'Av. Libertador, casa 204', 'V-10000105', 'Miguel', NULL, 'González', NULL, DATE '1974-09-21'),
  (106, 465, 'V-10000106-5', 'Calle Miranda, casa 205', 'V-10000106', 'Isabel', 'Alberto', 'Rodríguez', NULL, DATE '1975-10-22'),
  (107, 466, 'V-10000107-6', 'Av. Andrés Bello, casa 206', 'V-10000107', 'Jesús', 'Antonio', 'Pérez', NULL, DATE '1976-11-23'),
  (108, 467, 'V-10000108-7', 'Calle Comercio, casa 207', 'V-10000108', 'Daniela', 'Enrique', 'Hernández', 'Goncalves', DATE '1977-12-24'),
  (109, 468, 'V-10000109-8', 'Av. Principal, casa 208', 'V-10000109', 'Manuel', 'Ramón', 'García', 'Da Silva', DATE '1978-01-25'),
  (110, 469, 'V-10000110-9', 'Calle Real, casa 209', 'V-10000110', 'Patricia', 'Ignacio', 'Martínez', 'Pérez', DATE '1979-02-26'),
  (111, 470, 'V-10000111-0', 'Av. Bolívar, casa 210', 'V-10000111', 'Daniel', 'Coromoto', 'López', 'Quintero', DATE '1980-03-27'),
  (112, 471, 'V-10000112-1', 'Calle Sucre, casa 211', 'V-10000112', 'Marta', 'Auxiliadora', 'Sánchez', 'Salazar', DATE '1981-04-28'),
  (113, 472, 'V-10000113-2', 'Av. Urdaneta, casa 212', 'V-10000113', 'Francisco', 'del Valle', 'Ramírez', 'Montilla', DATE '1982-05-01'),
  (114, 473, 'V-10000114-3', 'Calle Páez, casa 213', 'V-10000114', 'Sofía', 'José', 'Torres', NULL, DATE '1983-06-02'),
  (115, 474, 'V-10000115-4', 'Av. Libertador, casa 214', 'V-10000115', 'Alejandro', 'Beatriz', 'Flores', NULL, DATE '1984-07-03'),
  (116, 475, 'V-10000116-5', 'Calle Miranda, casa 215', 'V-10000116', 'Cristina', 'Alejandra', 'Rivas', NULL, DATE '1985-08-04'),
  (117, 476, 'V-10000117-6', 'Av. Andrés Bello, casa 216', 'V-10000117', 'Eduardo', 'Eugenia', 'Gómez', NULL, DATE '1986-09-05'),
  (118, 477, 'V-10000118-7', 'Calle Comercio, casa 217', 'V-10000118', 'Adriana', NULL, 'Díaz', 'Goncalves', DATE '1987-10-06'),
  (119, 478, 'V-10000119-8', 'Av. Principal, casa 218', 'V-10000119', 'Jorge', NULL, 'Castillo', 'Da Silva', DATE '1988-11-07'),
  (120, 479, 'V-10000120-9', 'Calle Real, casa 219', 'V-10000120', 'Teresa', NULL, 'Romero', 'Pérez', DATE '1989-12-08'),
  (121, 480, 'V-10000121-0', 'Av. Bolívar, casa 220', 'V-10000121', 'José', 'Alberto', 'Suárez', 'Quintero', DATE '1990-01-09'),
  (122, 481, 'V-10000122-1', 'Calle Sucre, casa 221', 'V-10000122', 'Ana', 'Antonio', 'Mendoza', 'Salazar', DATE '1991-02-10'),
  (123, 482, 'V-10000123-2', 'Av. Urdaneta, casa 222', 'V-10000123', 'Carlos', 'Enrique', 'Guerra', 'Montilla', DATE '1992-03-11'),
  (124, 483, 'V-10000124-3', 'Calle Páez, casa 223', 'V-10000124', 'Rosa', 'Ramón', 'Blanco', NULL, DATE '1993-04-12'),
  (125, 484, 'V-10000125-4', 'Av. Libertador, casa 224', 'V-10000125', 'Miguel', 'Ignacio', 'Marcano', NULL, DATE '1994-05-13'),
  (126, 485, 'V-10000126-5', 'Calle Miranda, casa 225', 'V-10000126', 'Isabel', 'Coromoto', 'D''Andrea', NULL, DATE '1995-06-14'),
  (127, 486, 'V-10000127-6', 'Av. Andrés Bello, casa 226', 'V-10000127', 'Jesús', 'Auxiliadora', 'Bermúdez', NULL, DATE '1996-07-15'),
  (128, 487, 'V-10000128-7', 'Calle Comercio, casa 227', 'V-10000128', 'Daniela', 'del Valle', 'Contreras', 'Goncalves', DATE '1997-08-16'),
  (129, 488, 'V-10000129-8', 'Av. Principal, casa 228', 'V-10000129', 'Manuel', 'José', 'Querales', 'Da Silva', DATE '1998-09-17'),
  (130, 489, 'V-10000130-9', 'Calle Real, casa 229', 'V-10000130', 'Patricia', 'Beatriz', 'Fuenmayor', 'Pérez', DATE '1999-10-18'),
  (131, 490, 'V-10000131-0', 'Av. Bolívar, casa 230', 'V-10000131', 'Daniel', 'Alejandra', 'González', 'Quintero', DATE '2000-11-19'),
  (132, 491, 'V-10000132-1', 'Calle Sucre, casa 231', 'V-10000132', 'Marta', 'Eugenia', 'Rodríguez', 'Salazar', DATE '2001-12-20'),
  (133, 492, 'V-10000133-2', 'Av. Urdaneta, casa 232', 'V-10000133', 'Francisco', NULL, 'Pérez', 'Montilla', DATE '2002-01-21'),
  (134, 493, 'V-10000134-3', 'Calle Páez, casa 233', 'V-10000134', 'Sofía', NULL, 'Hernández', NULL, DATE '2003-02-22'),
  (135, 494, 'V-10000135-4', 'Av. Libertador, casa 234', 'V-10000135', 'Alejandro', NULL, 'García', NULL, DATE '2004-03-23'),
  (136, 495, 'V-10000136-5', 'Calle Miranda, casa 235', 'V-10000136', 'Cristina', 'Alberto', 'Martínez', NULL, DATE '1960-04-24'),
  (137, 496, 'V-10000137-6', 'Av. Andrés Bello, casa 236', 'V-10000137', 'Eduardo', 'Antonio', 'López', NULL, DATE '1961-05-25'),
  (138, 497, 'V-10000138-7', 'Calle Comercio, casa 237', 'V-10000138', 'Adriana', 'Enrique', 'Sánchez', 'Goncalves', DATE '1962-06-26'),
  (139, 498, 'V-10000139-8', 'Av. Principal, casa 238', 'V-10000139', 'Jorge', 'Ramón', 'Ramírez', 'Da Silva', DATE '1963-07-27'),
  (140, 499, 'V-10000140-9', 'Calle Real, casa 239', 'V-10000140', 'Teresa', 'Ignacio', 'Torres', 'Pérez', DATE '1964-08-28'),
  (141, 500, 'V-10000141-0', 'Av. Bolívar, casa 240', 'V-10000141', 'José', 'Coromoto', 'Flores', 'Quintero', DATE '1965-09-01'),
  (142, 501, 'V-10000142-1', 'Calle Sucre, casa 241', 'V-10000142', 'Ana', 'Auxiliadora', 'Rivas', 'Salazar', DATE '1966-10-02'),
  (143, 502, 'V-10000143-2', 'Av. Urdaneta, casa 242', 'V-10000143', 'Carlos', 'del Valle', 'Gómez', 'Montilla', DATE '1967-11-03'),
  (144, 503, 'V-10000144-3', 'Calle Páez, casa 243', 'V-10000144', 'Rosa', 'José', 'Díaz', NULL, DATE '1968-12-04'),
  (145, 504, 'V-10000145-4', 'Av. Libertador, casa 244', 'V-10000145', 'Miguel', 'Beatriz', 'Castillo', NULL, DATE '1969-01-05'),
  (146, 505, 'V-10000146-5', 'Calle Miranda, casa 245', 'V-10000146', 'Isabel', 'Alejandra', 'Romero', NULL, DATE '1970-02-06'),
  (147, 506, 'V-10000147-6', 'Av. Andrés Bello, casa 246', 'V-10000147', 'Jesús', 'Eugenia', 'Suárez', NULL, DATE '1971-03-07'),
  (148, 507, 'V-10000148-7', 'Calle Comercio, casa 247', 'V-10000148', 'Daniela', NULL, 'Mendoza', 'Goncalves', DATE '1972-04-08'),
  (149, 508, 'V-10000149-8', 'Av. Principal, casa 248', 'V-10000149', 'Manuel', NULL, 'Guerra', 'Da Silva', DATE '1973-05-09'),
  (150, 509, 'V-10000150-9', 'Calle Real, casa 249', 'V-10000150', 'Patricia', NULL, 'Blanco', 'Pérez', DATE '1974-06-10'),
  (151, 510, 'V-10000151-0', 'Av. Bolívar, casa 250', 'V-10000151', 'Daniel', 'Alberto', 'Marcano', 'Quintero', DATE '1975-07-11'),
  (152, 511, 'V-10000152-1', 'Calle Sucre, casa 251', 'V-10000152', 'Marta', 'Antonio', 'D''Andrea', 'Salazar', DATE '1976-08-12'),
  (153, 512, 'V-10000153-2', 'Av. Urdaneta, casa 252', 'V-10000153', 'Francisco', 'Enrique', 'Bermúdez', 'Montilla', DATE '1977-09-13'),
  (154, 513, 'V-10000154-3', 'Calle Páez, casa 253', 'V-10000154', 'Sofía', 'Ramón', 'Contreras', NULL, DATE '1978-10-14'),
  (155, 514, 'V-10000155-4', 'Av. Libertador, casa 254', 'V-10000155', 'Alejandro', 'Ignacio', 'Querales', NULL, DATE '1979-11-15'),
  (156, 515, 'V-10000156-5', 'Calle Miranda, casa 255', 'V-10000156', 'Cristina', 'Coromoto', 'Fuenmayor', NULL, DATE '1980-12-16'),
  (157, 516, 'V-10000157-6', 'Av. Andrés Bello, casa 256', 'V-10000157', 'Eduardo', 'Auxiliadora', 'González', NULL, DATE '1981-01-17'),
  (158, 517, 'V-10000158-7', 'Calle Comercio, casa 257', 'V-10000158', 'Adriana', 'del Valle', 'Rodríguez', 'Goncalves', DATE '1982-02-18'),
  (159, 518, 'V-10000159-8', 'Av. Principal, casa 258', 'V-10000159', 'Jorge', 'José', 'Pérez', 'Da Silva', DATE '1983-03-19'),
  (160, 519, 'V-10000160-9', 'Calle Real, casa 259', 'V-10000160', 'Teresa', 'Beatriz', 'Hernández', 'Pérez', DATE '1984-04-20'),
  (161, 520, 'V-10000161-0', 'Av. Bolívar, casa 260', 'V-10000161', 'José', 'Alejandra', 'García', 'Quintero', DATE '1985-05-21'),
  (162, 521, 'V-10000162-1', 'Calle Sucre, casa 261', 'V-10000162', 'Ana', 'Eugenia', 'Martínez', 'Salazar', DATE '1986-06-22'),
  (163, 522, 'V-10000163-2', 'Av. Urdaneta, casa 262', 'V-10000163', 'Carlos', NULL, 'López', 'Montilla', DATE '1987-07-23'),
  (164, 523, 'V-10000164-3', 'Calle Páez, casa 263', 'V-10000164', 'Rosa', NULL, 'Sánchez', NULL, DATE '1988-08-24'),
  (165, 524, 'V-10000165-4', 'Av. Libertador, casa 264', 'V-10000165', 'Miguel', NULL, 'Ramírez', NULL, DATE '1989-09-25'),
  (166, 525, 'V-10000166-5', 'Calle Miranda, casa 265', 'V-10000166', 'Isabel', 'Alberto', 'Torres', NULL, DATE '1990-10-26'),
  (167, 526, 'V-10000167-6', 'Av. Andrés Bello, casa 266', 'V-10000167', 'Jesús', 'Antonio', 'Flores', NULL, DATE '1991-11-27'),
  (168, 527, 'V-10000168-7', 'Calle Comercio, casa 267', 'V-10000168', 'Daniela', 'Enrique', 'Rivas', 'Goncalves', DATE '1992-12-28'),
  (169, 528, 'V-10000169-8', 'Av. Principal, casa 268', 'V-10000169', 'Manuel', 'Ramón', 'Gómez', 'Da Silva', DATE '1993-01-01'),
  (170, 529, 'V-10000170-9', 'Calle Real, casa 269', 'V-10000170', 'Patricia', 'Ignacio', 'Díaz', 'Pérez', DATE '1994-02-02'),
  (171, 530, 'V-10000171-0', 'Av. Bolívar, casa 270', 'V-10000171', 'Daniel', 'Coromoto', 'Castillo', 'Quintero', DATE '1995-03-03'),
  (172, 531, 'V-10000172-1', 'Calle Sucre, casa 271', 'V-10000172', 'Marta', 'Auxiliadora', 'Romero', 'Salazar', DATE '1996-04-04'),
  (173, 532, 'V-10000173-2', 'Av. Urdaneta, casa 272', 'V-10000173', 'Francisco', 'del Valle', 'Suárez', 'Montilla', DATE '1997-05-05'),
  (174, 533, 'V-10000174-3', 'Calle Páez, casa 273', 'V-10000174', 'Sofía', 'José', 'Mendoza', NULL, DATE '1998-06-06'),
  (175, 534, 'V-10000175-4', 'Av. Libertador, casa 274', 'V-10000175', 'Alejandro', 'Beatriz', 'Guerra', NULL, DATE '1999-07-07'),
  (176, 535, 'V-10000176-5', 'Calle Miranda, casa 275', 'V-10000176', 'Cristina', 'Alejandra', 'Blanco', NULL, DATE '2000-08-08'),
  (177, 536, 'V-10000177-6', 'Av. Andrés Bello, casa 276', 'V-10000177', 'Eduardo', 'Eugenia', 'Marcano', NULL, DATE '2001-09-09'),
  (178, 537, 'V-10000178-7', 'Calle Comercio, casa 277', 'V-10000178', 'Adriana', NULL, 'D''Andrea', 'Goncalves', DATE '2002-10-10'),
  (179, 538, 'V-10000179-8', 'Av. Principal, casa 278', 'V-10000179', 'Jorge', NULL, 'Bermúdez', 'Da Silva', DATE '2003-11-11'),
  (180, 539, 'V-10000180-9', 'Calle Real, casa 279', 'V-10000180', 'Teresa', NULL, 'Contreras', 'Pérez', DATE '2004-12-12'),
  (181, 540, 'V-10000181-0', 'Av. Bolívar, casa 280', 'V-10000181', 'José', 'Alberto', 'Querales', 'Quintero', DATE '1960-01-13'),
  (182, 541, 'V-10000182-1', 'Calle Sucre, casa 281', 'V-10000182', 'Ana', 'Antonio', 'Fuenmayor', 'Salazar', DATE '1961-02-14'),
  (183, 542, 'V-10000183-2', 'Av. Urdaneta, casa 282', 'V-10000183', 'Carlos', 'Enrique', 'González', 'Montilla', DATE '1962-03-15'),
  (184, 543, 'V-10000184-3', 'Calle Páez, casa 283', 'V-10000184', 'Rosa', 'Ramón', 'Rodríguez', NULL, DATE '1963-04-16'),
  (185, 544, 'V-10000185-4', 'Av. Libertador, casa 284', 'V-10000185', 'Miguel', 'Ignacio', 'Pérez', NULL, DATE '1964-05-17'),
  (186, 545, 'V-10000186-5', 'Calle Miranda, casa 285', 'V-10000186', 'Isabel', 'Coromoto', 'Hernández', NULL, DATE '1965-06-18'),
  (187, 546, 'V-10000187-6', 'Av. Andrés Bello, casa 286', 'V-10000187', 'Jesús', 'Auxiliadora', 'García', NULL, DATE '1966-07-19'),
  (188, 547, 'V-10000188-7', 'Calle Comercio, casa 287', 'V-10000188', 'Daniela', 'del Valle', 'Martínez', 'Goncalves', DATE '1967-08-20'),
  (189, 548, 'V-10000189-8', 'Av. Principal, casa 288', 'V-10000189', 'Manuel', 'José', 'López', 'Da Silva', DATE '1968-09-21'),
  (190, 549, 'V-10000190-9', 'Calle Real, casa 289', 'V-10000190', 'Patricia', 'Beatriz', 'Sánchez', 'Pérez', DATE '1969-10-22'),
  (191, 550, 'V-10000191-0', 'Av. Bolívar, casa 290', 'V-10000191', 'Daniel', 'Alejandra', 'Ramírez', 'Quintero', DATE '1970-11-23'),
  (192, 551, 'V-10000192-1', 'Calle Sucre, casa 291', 'V-10000192', 'Marta', 'Eugenia', 'Torres', 'Salazar', DATE '1971-12-24'),
  (193, 552, 'V-10000193-2', 'Av. Urdaneta, casa 292', 'V-10000193', 'Francisco', NULL, 'Flores', 'Montilla', DATE '1972-01-25'),
  (194, 553, 'V-10000194-3', 'Calle Páez, casa 293', 'V-10000194', 'Sofía', NULL, 'Rivas', NULL, DATE '1973-02-26'),
  (195, 554, 'V-10000195-4', 'Av. Libertador, casa 294', 'V-10000195', 'Alejandro', NULL, 'Gómez', NULL, DATE '1974-03-27'),
  (196, 555, 'V-10000196-5', 'Calle Miranda, casa 295', 'V-10000196', 'Cristina', 'Alberto', 'Díaz', NULL, DATE '1975-04-28'),
  (197, 556, 'V-10000197-6', 'Av. Andrés Bello, casa 296', 'V-10000197', 'Eduardo', 'Antonio', 'Castillo', NULL, DATE '1976-05-01'),
  (198, 557, 'V-10000198-7', 'Calle Comercio, casa 297', 'V-10000198', 'Adriana', 'Enrique', 'Romero', 'Goncalves', DATE '1977-06-02'),
  (199, 558, 'V-10000199-8', 'Av. Principal, casa 298', 'V-10000199', 'Jorge', 'Ramón', 'Suárez', 'Da Silva', DATE '1978-07-03'),
  (200, 559, 'V-10000200-9', 'Calle Real, casa 299', 'V-10000200', 'Teresa', 'Ignacio', 'Mendoza', 'Pérez', DATE '1979-08-04');
--MATHIAS Y DEVONY
INSERT INTO MATERIAPRIMA (ID_MATERIAPRIMA, NOMBRE_MATERIAPRIMA, DESCRIPCION_MATERIAPRIMA) VALUES
  (1, 'Polimero ABS', 'Termoplástico rígido de alta resistencia al impacto, ideal para torsos, articulaciones y accesorios rígidos.'),
  (2, 'Vinil flexible', 'Compuesto polimérico blando utilizado para el moldeado de cabezas y piezas que requieren flexibilidad al tacto.'),
  (3, 'PVC rigido', 'Policloruro de vinilo de alta densidad empleado en la estructura interna y componentes estables no maleables.'),
  (4, 'Saran (cabello)', 'Filamento sintético premium de alta densidad, suave y pesado, óptimo para la implantación y peinado del cabello.'),
  (5, 'Tela algodon', 'Fibra textil natural hipoalergénica utilizada en la confección y costura de prendas de vestir básicas.'),
  (6, 'Tela poliester', 'Fibra sintética de alta durabilidad y resistencia a las arrugas, ideal para ropa con estampados y acabados complejos.'),
  (7, 'Elastomero TPE', 'Caucho termoplástico elástico empleado en articulaciones de movimiento fluido y secciones de piel flexible.'),
  (8, 'Resina', 'Compuesto líquido termoestable de alta precisión, utilizado para el vaciado de prototipos y piezas de edición especial.'),
  (9, 'Nylon', 'Poliamida sintética de gran resistencia mecánica y bajo coeficiente de fricción, ideal para engranajes y uniones mecánicas.'),
  (10, 'Caucho', 'Polímero elástico natural o sintético vulcanizado para componentes que requieren tracción, amortiguación o sellado.');
--NAYKARID y DEVONY
INSERT INTO MEMBRESIA (ID_MEMBRESIA, NOMBRE_MEMBRESIA, DESCRIPCION_MEMBRESIA, PRECIO_MEMBRESIA) VALUES 
    (1, 'Gold', 'Acceso estándar a funciones premium y soporte base.', 9.99),
    (2, 'Platinum', 'Acceso total ilimitado, herramientas avanzadas y soporte prioritario 24/7.', 24.99);
--NAYKARID y DEVONY
INSERT INTO SEDE (ID_SEDE, FK_LUGAR_SEDE, NOMBRE_SEDE, DIRECCION_SEDE) VALUES 
    (1, 114, 'Fábrica de Origen', 'Valencia, Estado Carabobo'),
    (2, 14, 'Hub La Guaira (Distribución LATAM)', 'Puerto de La Guaira, La Guaira'),
    (3, 352, 'Hub Maracaibo (Distribución Europa)', 'Puerto de Maracaibo, Zulia'),
    (4, 1501, 'Sede Transcontinental', 'Ubicación Virtual - Contenedores en Océano');

INSERT INTO ROL (ID_ROL, NOMBRE_ROL, DESCRIPCION_ROL) VALUES
  (1, 'Cliente B2C', 'Consumidor final que compra por unidad en la tienda en linea'),
  (2, 'Retail Partner B2B', 'Cadena mayorista que emite ordenes de compra por caja master'),
  (3, 'Coleccionista Platinum', 'Cliente VIP con acceso a subastas y ediciones limitadas'),
  (4, 'Gerente de Inventario', 'Personal interno: ve costos de produccion y modifica stock'),
  (5, 'Vendedor', 'Personal interno: ve precios de lista y disponibilidad'),
  (6, 'Administrador', 'Acceso total al sistema'),
  (7, 'Gerente de Ventas', 'Supervisa metas y comisiones de ejecutivos de cuenta'),
  (8, 'Operador de Logistica', 'Gestiona despachos y manifiestos de carga'),
  (9, 'Disenador I+D', 'Define especificaciones tecnicas y artisticas de productos'),
  (10, 'Auditor', 'Consulta registros historicos sin modificar');


--NAYKARID Y DEVONY
  INSERT INTO INVENTARIO_MATERIAPRIMA (ID_INVENTARIO_MATERIAPRIMA, PFK_SEDE, PFK_MATERIAPRIMA, CANTIDAD_MATERIAPRIMA_INV) VALUES 
    (1, 1, 1, 500),   
    (2, 1, 2, 350),   
    (3, 1, 3, 400),   
    (4, 2, 4, 150),   
    (5, 2, 5, 600),   
    (6, 3, 6, 800),   
    (7, 3, 7, 250),   
    (8, 1, 8, 1000),
    (9, 1, 9, 450),   
    (10,1, 10, 300); 
--NAYKARID Y DEVONY
INSERT INTO COURIER (ID_COURIER, NOMBRE_COURIER) VALUES 
    (1, 'DHL'), 
    (2, 'FedEx'), 
    (3, 'Zoom'), 
    (4, 'MRW'),
    (5, 'Tealca'),
    (6, 'Domesa'),
    (7, 'Liberty Express'),
    (8, 'UPS'),
    (9, 'Serex'),
    (10, 'Ipostel');
--NAYKARID 
INSERT INTO ESTATUS_BACKORDER (ID_ESTATUS_BACKORDER, NOMBRE_ESTATUS_BACKORDER, DESCRIPCION_ESTATUS_BACKORDER) VALUES 
    (1, 'Generado', 'El backorder ha sido creado por falta de stock en una orden B2B.'),
    (2, 'Aprobado para Producción', 'El departamento de manufactura aceptó el requerimiento.'),
    (3, 'Esperando Materia Prima', 'La producción está detenida por falta de insumos.'),
    (4, 'En Producción', 'Las piezas solicitadas se encuentran actualmente en fabricación.'),
    (5, 'Parcialmente Surtido', 'Se ha entregado una parte del lote, pero aún faltan piezas.'),
    (6, 'Listo para Envío', 'La totalidad del backorder está fabricada y en almacén.'),
    (7, 'En Tránsito', 'El pedido está en camino a las instalaciones del cliente B2B.'),
    (8, 'Completado', 'El cliente B2B recibió todas las unidades pendientes del backorder.'),
    (9, 'Cancelado por Cliente', 'El cliente B2B desistió de esperar el lote faltante.'),
    (10, 'Cancelado por Fábrica', 'Es imposible producir el lote por descontinuación de moldes.');
--NAYKARID
INSERT INTO ESTATUS_FASE_PRODUCCION (ID_ESTATUS_FP, NOMBRE_ESTATUS_FP, DESCRIPCION_ESTATUS_FP) VALUES 
    (1, 'No Iniciada', 'La fase de producción ha sido programada pero no ha comenzado.'),
    (2, 'En Progreso', 'Los empleados están trabajando actualmente en esta fase.'),
    (3, 'Pausada', 'Producción detenida temporalmente por falta de insumos o fallas.'),
    (4, 'En Revisión QA', 'Fase terminada, a la espera de aprobación de calidad.'),
    (5, 'Completada', 'Fase finalizada y aprobada con éxito.'),
    (6, 'Rechazada', 'La fase no pasó los controles de calidad y debe repetirse.'),
    (7, 'Cancelada', 'Producción abortada permanentemente.'),
    (8, 'Retrasada', 'La fase superó el tiempo estimado de finalización.'),
    (9, 'Mantenimiento', 'Maquinaria en mantenimiento durante esta fase.'),
    (10, 'Empaquetado', 'Fase final de embalaje del producto.');
--Devony
INSERT INTO ESTATUS_GANADOR (ID_ESTATUS_GANADOR, NOMBRE_ESTATUS_GANADOR, DESC_ESTATUS_GANADOR) VALUES
  (1, 'Pendiente', 'El premio o condición de ganador está a la espera de validación o reclamo.'),
  (2, 'Validado', 'La condición de ganador ha sido verificada y confirmada por la organización.'),
  (3, 'Reclamado', 'El ganador ha solicitado formalmente la entrega de su premio o beneficio.'),  
  (4, 'Entregado', 'El premio ha sido otorgado y recibido satisfactoriamente por el ganador.'),
  (5, 'Rechazado', 'La postulación o condición de ganador no cumplió con las reglas y fue anulada.'),
  (6, 'Expirado', 'El plazo legal para reclamar el premio ha vencido y se ha perdido el derecho.'),
  (7, 'En Revisión', 'Se está realizando una auditoría o verificación adicional sobre los resultados.'),
  (8, 'Suspendido', 'El estatus de ganador se encuentra congelado temporalmente por disputas o investigación.'),
  (9, 'Cancelado', 'El evento o la categoría fue anulada, invalidando la condición de ganador.'),
  (10, 'Transferido', 'El premio fue cedido o transferido a un suplente o tercero según el reglamento.');

--NAYKARID
INSERT INTO ESTATUS_INVENTARIO (ID_ESTATUS_INVENTARIO, NOMBRE_ESTATUS_INVENTARIO, DESCRIPCION_ESTATUS_INVENTARIO) VALUES 
    (1, 'Disponible', 'Producto almacenado y listo para la venta B2B o B2C.'),
    (2, 'Reservado', 'Apartado temporalmente en el carrito de un cliente.'),
    (3, 'En Tránsito', 'En movimiento físico entre una sede y otra (o en océano).'),
    (4, 'Vendido', 'Producto facturado y despachado al cliente.'),
    (5, 'En Subasta', 'Inventario bloqueado porque pertenece a una subasta activa.'),
    (6, 'Devuelto', 'Producto retornado por el cliente, pendiente de revisión.'),
    (7, 'Dañado / Merma', 'Producto con daños de fábrica o transporte, no apto para venta.'),
    (8, 'Extraviado', 'Pérdida desconocida detectada en auditoría de almacén.'),
    (9, 'En Cuarentena', 'Retenido por controles de calidad (QA).'),
    (10, 'Liquidación', 'Apartado para ventas de remate a bajo costo.');
--NAYKARID
INSERT INTO ESTATUS_MEMBRESIA (ID_ESTATUS_MEMBRESIA, NOMBRE_ESTATUS_MEMBRESIA, DESCRIPCION_ESTATUS_MEMBRESIA) VALUES 
    (1, 'Activa', 'La membresía está vigente y los pagos están al día.'),
    (2, 'Inactiva', 'La membresía fue desactivada temporalmente por el usuario.'),
    (3, 'Suspendida', 'Suspendida por el sistema por infracciones a los términos.'),
    (4, 'Cancelada', 'Membresía anulada de forma definitiva.'),
    (5, 'Vencida', 'El tiempo pagado finalizó y no se ha renovado.'),
    (6, 'Periodo de Gracia', 'Vencida recientemente, con 5 días para pagar sin perder beneficios.'),
    (7, 'Pendiente de Pago', 'Se intentó cobrar pero la tarjeta fue rechazada.'),
    (8, 'En Renovación', 'Procesando el cobro del próximo ciclo de facturación.'),
    (9, 'Prueba Gratuita', 'Usuario gozando de 30 días de cortesía de nivel Gold.'),
    (10, 'Bloqueada', 'Bloqueo preventivo por sospecha de fraude o reventa ilegal.');
--NAYKARID
INSERT INTO ESTATUS_PAGO_MEMBRESIA (ID_ESTATUS_PAGO_MEMBRESIA, NOMBRE_ESTATUS_PAGO_MEMBRESIA, DESC_ESTATUS_PAGO_MEMB) VALUES 
    (1, 'Aprobado', 'El pago fue procesado por la pasarela exitosamente.'),
    (2, 'Rechazado - Fondos', 'Transacción declinada por fondos insuficientes.'),
    (3, 'Rechazado - Banco', 'El banco emisor bloqueó la transacción.'),
    (4, 'Pendiente', 'El pago está en proceso de verificación (ej. transferencias).'),
    (5, 'Reversado', 'El pago fue devuelto al cliente por error en sistema.'),
    (6, 'Fraude Sospechoso', 'Bloqueado por el sistema antifraude.'),
    (7, 'Expirado', 'El tiempo para completar el pago caducó.'),
    (8, 'Cancelado por Usuario', 'El usuario abortó el pago antes de procesarse.'),
    (9, 'En Disputa', 'El usuario reportó el cargo (Chargeback).'),
    (10, 'Reembolsado', 'El pago se completó pero el dinero fue devuelto por solicitud.');
--NAYKARID
INSERT INTO ESTATUS_PRECIO (ID_ESTATUS_PRECIO, NOMBRE_ESTATUS_PRECIO, DESCRIPCION_ESTATUS_PRECIO) VALUES 
    (1, 'Activo', 'El precio actual vigente para el producto.'),
    (2, 'Inactivo', 'Precio obsoleto, reemplazado por uno nuevo.'),
    (3, 'Promoción', 'Precio reducido temporalmente por campaña publicitaria.'),
    (4, 'Liquidación', 'Precio de remate para agotar inventario restante.'),
    (5, 'Preventa', 'Precio especial para órdenes anticipadas antes del lanzamiento.'),
    (6, 'Descontinuado', 'Precio de un producto que ya no se fabrica.'),
    (7, 'Suscripción', 'Precio bloqueado para usuarios con membresía activa.'),
    (8, 'Oferta Relámpago', 'Descuento válido únicamente por pocas horas.'),
    (9, 'Mayorista VIP', 'Precio preferencial para compradores de gran volumen.'),
    (10, 'Subasta Base', 'Precio inicial de arranque para un evento de subasta.');
--NAYKARID Y DEVONY 
INSERT INTO ESTATUS_PUJA (ID_ESTATUS_PUJA, NOMBRE_ESTATUS_PUJA, DESCRIPCION_ESTATUS_PUJA) VALUES 
    (1, 'Activa', 'La puja ha sido recibida y está compitiendo actualmente en la subasta.'),
    (2, 'Superada', 'Otro usuario ha realizado una oferta mayor a esta puja.'),
    (3, 'Ganadora', 'La puja con el monto más alto al cerrar el tiempo de la subasta.'),
    (4, 'Retirada', 'La puja fue cancelada o anulada por el administrador del sistema.'),
    (5, 'Invalida', 'La puja no cumplió con el incremento mínimo requerido para el lote.'),
    (6, 'En Procesamiento', 'La puja está siendo evaluada por el sistema para verificar la disponibilidad de fondos del usuario.'),
    (7, 'Rechazada', 'La puja fue descartada automáticamente debido a que el usuario se encuentra bloqueado o suspendido.'),
    (8, 'Expirada', 'La puja no llegó a completarse o el tiempo del lote concluyó antes de su procesamiento.'),
    (9, 'Pagada', 'La puja ganadora ha sido liquidada y el artículo ha sido facturado al comprador.'),
    (10, 'Incumplida', 'El usuario con la puja ganadora no realizó el pago en el tiempo establecido, perdiendo el derecho de compra.');
-- NAYKARID
INSERT INTO ESTATUS_SUBASTA (ID_ESTATUS_SUBASTA, NOMBRE_ESTATUS_SUBASTA, DESCRIPCION_ESTATUS_SUBASTA) VALUES 
    (1, 'Programada', 'La subasta ha sido creada pero el periodo de pujas aún no inicia.'),
    (2, 'Activa', 'La subasta está abierta y recibiendo pujas de los usuarios.'),
    (3, 'Cerrada - En Evaluación', 'El tiempo finalizó, el sistema está validando la puja ganadora.'),
    (4, 'Adjudicada', 'Se ha declarado un ganador y se generó la orden de subasta.'),
    (5, 'Desierta', 'La subasta finalizó sin recibir ninguna puja válida.'),
    (6, 'Cancelada', 'La subasta fue anulada por la administración antes de finalizar.'),
    (7, 'Suspendida', 'Pausada temporalmente por problemas técnicos o auditoría.'),
    (8, 'En Disputa', 'Existen reclamos sobre la validez de la puja ganadora.'),
    (9, 'Finalizada y Pagada', 'El ganador concretó el pago y se cerró el proceso.'),
    (10, 'Archivada', 'Subasta histórica guardada solo para fines de auditoría.');
-- MATHIAS
INSERT INTO LINEA_CREDITO (ID_LINEA_CREDITO, FK_PERSONA_JURIDICA, TOTAL_LINEA_CREDITO) VALUES
  (1, 1, 50000),
  (2, 2, 100000),
  (3, 3, 150000),
  (4, 4, 200000),
  (5, 5, 250000),
  (6, 6, 300000),
  (7, 7, 350000),
  (8, 8, 400000),
  (9, 9, 450000),
  (10, 10, 500000);