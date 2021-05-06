-- Creamos la base de datos y cambiamos a eso
create database if not exists ingredientes;
use ingredientes;

-- Creamos la tabla de la base de datos
create or replace table lista (
	id int not null auto_increment,
	ingrediente varchar(40) not null,
	imagen varchar(30) not null
);

-- Ahora si insertamos las cosas
insert into lista values 
	("sal", "5-05-2021_sal.png"),
	("arroz", "5-05-2021");

-- Y abres la base de datos en 
-- esta carpeta y le haces
-- source database.sql
-- se crea la base de datos y la tabla y se añade todo
