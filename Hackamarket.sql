CREATE DATABASE hackamarket;
USE hackamarket;

CREATE TABLE productos(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
nombre VARCHAR(50),
descripcion LONGTEXT,
estado ENUM('Disponible','No Disponible'),
img LONGTEXT,
precio INT,
stock INT,
PRIMARY KEY(id)
);

CREATE TABLE usuarios( 
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
email VARCHAR(255) UNIQUE,
password VARCHAR(255),
admin TINYINT DEFAULT 0,
PRIMARY KEY(id)
);

CREATE TABLE clientes (
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
nombre VARCHAR(50),
apellido VARCHAR(50),
ciudad VARCHAR(50),
empresa VARCHAR(50),
PRIMARY KEY(id)
);
-- /////////////////////////////////////////////////////////////// --
SELECT * FROM usuarios;
INSERT INTO usuarios VALUES(null,'admin@email.com','admin',1);
INSERT INTO usuarios VALUES(null,'user@email.com','user',0);
TRUNCATE TABLE usuarios;
-- /////////////////////////////////////////////////////////////// --
SELECT * FROM productos;
INSERT INTO productos VALUES(null,'MONKEY D. LUFFY ONE PIECE','Funko de Monkey D Luffy de la serie de One Piece','Disponible','https://bit.ly/3fprqKX',20,100);
INSERT INTO productos VALUES(null,'RORONOA ZORO ONE PIECE', 'Funko de Roronoa Zoro de la serie de One Piece','Disponible','https://bit.ly/2AAhiQx',18,89);
INSERT INTO productos VALUES(null,'VINSMOKE SANJI ONE PIECE','Funko de Vinsmoke Sanji de la serie de One Piece','No Disponible','https://bit.ly/3fmJvZQ',17,0);
INSERT INTO productos VALUES(null,'NAMI GATA LADRONA ONE PIECE', 'Funko de Nami Gata Ladrona de la serie de One Piece', 'Disponible','https://bit.ly/2YupOJ2',12,30);
INSERT INTO productos VALUES(null,'USSOPU ONE PIECE', 'Funko de Ussopu de la serie de One Piece','No Disponible','https://bit.ly/2YDfLBw',10,0);
TRUNCATE TABLE productos;
-- ///////////////////////////////////////////////////////////// --
-- ///////////////////////////////////////////////////////////// --
SELECT * FROM clientes;
INSERT INTO clientes VALUES(null,'Darell', 'Hisweaty','Madrid','Ratatata S.a');
INSERT INTO clientes VALUES(null,'Iker', 'Casillas', 'Alicante','Tech Box LTD');
INSERT INTO clientes VALUES(null,'Desire', 'Carmona','Barcelona','VueWorking S.A');
INSERT INTO clientes VALUES(null,'Will', 'Smith', 'Valladolid', 'My House inc.');
INSERT INTO clientes VALUES(null,'Nicki', 'Minaj', 'A Coruña','The Queen Forevá');
DROP DATABASE hackamarket;
TRUNCATE TABLE clientes;