CREATE database holamundo;

show databases;
use holamundo;

CREATE TABLE animales (
	id int,
	tipo varchar(255), 
	estado varchar(255),
	PRIMARY KEY (id)
);	

INSERT INTO animales (tipo, estado) VALUES ('chanchito', 'feliz');

ALTER TABLE animales MODIFY COLUMN id int auto_increment;



SHOW CREATE TABLE animales;

CREATE TABLE `animales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);

INSERT INTO animales (tipo, estado) VALUES ('chanchito', 'feliz');
INSERT INTO animales (tipo, estado) VALUES ('dragon', 'feliz');
INSERT INTO animales (tipo, estado) VALUES ('felipe', 'triste');



SELECT * FROM `animales`;

SELECT * FROM animales WHERE id=1;

SELECT * FROM animales WHERE estado = 'feliz' AND tipo = 'chanchito';

UPDATE animales SET estado = 'feliz' WHERE id=3;

SELECT * from animales;

DELETE FROM animales WHERE estado = 'feliz';

-- Este es el modo de hacer un delete, de la manera de arriba te arroja un error 1175 (si tienes habilitado el safe mode)

DELETE FROM animales WHERE id = 3;

-- Lo mismo para update, el siguiente update debe ir por id primary key 

UPDATE animales set estado = 'triste' where tipo = 'dragon';
