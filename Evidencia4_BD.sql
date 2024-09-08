CREATE DATABASE maquina_papel;

use maquina_papel;

CREATE TABLE maquina
(
    id_maquina int primary key not null,
    modelo varchar(15) not null,
    marca varchar(15) not null,
    capacidad_maxima int not null,
    fecha_instalacion date not null,
    ubicacion varchar(50) not null
);

CREATE TABLE produccion
(
    id_produccion int primary key not null,
    id_maquina int not null,
    fecha_produccion date not null,
    materia_prima decimal(8,2) not null,
    potencia decimal(5,2) not null,
    papel_producido decimal(8,2) not null,
    horario_produccion time not null,
    
    constraint id_maquina_produccion foreign key (id_maquina) references maquina(id_maquina)
);

CREATE TABLE historial_fallos
(
    id_fallo int primary key not null,
    id_maquina int not null, 
    fecha_fallo date not null,
    descripcion_fallo varchar(200) not null,
    horario_reparacion time not null,
    
    constraint id_maquina_historial foreign key (id_maquina) references maquina(id_maquina)
);

Use maquina_papel;

INSERT INTO maquina(id_maquina, modelo, marca, capacidad_maxima, fecha_instalacion, ubicacion) VALUES
(04,'KTM01','Velmet',1500,'2019-09-07','Avenida Ejercito Argentino 244');

INSERT INTO maquina(id_maquina, modelo, marca, capacidad_maxima, fecha_instalacion, ubicacion) VALUES
(02,'HCX01','GEMA',1500,'2019-11-19','Pasaje 9 de Julio 33');

INSERT INTO maquina(id_maquina, modelo, marca, capacidad_maxima, fecha_instalacion, ubicacion) VALUES
(03,'CMW70001','SPHERTS',2500,'2023-02-24','Arturo M. Bas 293');


INSERT INTO produccion(id_produccion, id_maquina, fecha_produccion, materia_prima, potencia, papel_producido, horario_produccion) VALUES
(09203,04,'2024-09-02',300.00,0.3,17.7,'14:30:21');

INSERT INTO produccion(id_produccion, id_maquina, fecha_produccion, materia_prima, potencia, papel_producido, horario_produccion) VALUES
(05432,04,'2024-05-06',550.00,0.5,275.0,'12:43:02');

INSERT INTO produccion(id_produccion, id_maquina, fecha_produccion, materia_prima, potencia, papel_producido, horario_produccion) VALUES
(05458,04,'2024-05-21',1200.00,0.4,480.0,'10:12:59');

INSERT INTO produccion(id_produccion, id_maquina, fecha_produccion, materia_prima, potencia, papel_producido, horario_produccion) VALUES
(09233,02,'2024-09-01',900.00,1.2,1080.0,'08:30:04');

INSERT INTO produccion(id_produccion, id_maquina, fecha_produccion, materia_prima, potencia, papel_producido, horario_produccion) VALUES
(09281,02,'2024-09-03',320.00,1.2,384.0,'17:42:37');

INSERT INTO produccion(id_produccion, id_maquina, fecha_produccion, materia_prima, potencia, papel_producido, horario_produccion) VALUES
(09289,03,'2024-09-05',1400.00,0.2,280.0,'16:02:32');


INSERT INTO historial_fallos(id_fallo, id_maquina, fecha_fallo, descripcion_fallo, horario_reparacion) VALUES
(04,02,'2023-02-15','La maquina se trabó en el proceso de corte final','11:41:08');

Use maquina_papel;

SELECT * FROM maquina;

SELECT marca, capacidad_maxima FROM maquina WHERE modelo='KTM01';

SELECT modelo, marca, id_maquina FROM maquina WHERE capacidad_maxima=1500;

SELECT id_maquina ,potencia FROM produccion WHERE id_produccion=9203;

SELECT fecha_fallo FROM historial_fallos WHERE horario_reparacion='11:41:08';