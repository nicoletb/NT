create database bd_miportafolio;
use bd_miportafolio;

create table portafolio_datos(
datos_cod int primary key auto_increment,
datos_nombre varchar(150),
datos_descripcion text, #"Hola! Soy ___ y soy un desarrollador"
datos_foto varchar(60), #Photo on the top right
datos_correo varchar(120), #
datos_twitter varchar(120),
datos_facebook varchar(120),
datos_github varchar(120),
datos_instagram varchar(120));

create table portafolio_proyectos(
proyectos_cod int primary key auto_increment,
proyectos_titulo varchar(50), #Platzi Video
proyectos_subtitulo varchar(100), #React Native/React
proyectos_fecha date, #Fecha: 01/07/2018
proyectos_direccion_web varchar(80), #Puedes verlo en: www.platzi.com/native
proyectos_descripcion text, #Platzi Video fue el resultado de 3 meses de trabajo 
proyectos_foto varchar(60)); #Foto

create table portafolio_experiencia(
experiencia_cod int primary key auto_increment,
experiencia_titulo varchar(100),
experiencia_descripcion text,
experiencia_foto varchar(60),
experiencia_direccion_web varchar(80)); #Link al que lleva el botón

create table portafolio_informacion(
informacion_cod int auto_increment primary key,
datos_cod int,
proyectos_cod int,
experiencia_cod int,
foreign key(datos_cod) references portafolio_datos(datos_cod),
foreign key(proyectos_cod) references portafolio_proyectos(proyectos_cod),
foreign key(experiencia_cod) references portafolio_experiencia(experiencia_cod));

select * from portafolio_datos;

select * from portafolio_proyectos;

insert into portafolio_proyectos
(proyectos_titulo,
proyectos_subtitulo,
proyectos_fecha,
proyectos_direccion_web,
proyectos_descripcion,
proyectos_foto)
values
('Portafolio en Flask',
'Integracion con MySQL',
'2020/01/16',
'http://www.nicoletb.com/portafolio',
'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum',
'img/foto.png');

insert into portafolio_proyectos
(proyectos_titulo,
proyectos_subtitulo,
proyectos_fecha,
proyectos_direccion_web,
proyectos_descripcion,
proyectos_foto)
values
('Portafolio en Django',
'Integracion con MongoDB',
'2020/01/17',
'http://www.nicoletb.com/portafoliomongo',
'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum',
'img/portafoliomongo.png');

insert into portafolio_proyectos
(proyectos_titulo,
proyectos_subtitulo,
proyectos_fecha,
proyectos_direccion_web,
proyectos_descripcion,
proyectos_foto)
values
('e-Commerce Django',
'Integracion con POSTGRESS',
'2020/01/18',
'http://www.nicoletb.com/ecommerce',
'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum',
'img/ecommerce.png');

select * from portafolio_experiencia;

insert into portafolio_experiencia
(experiencia_titulo,
experiencia_descripcion,
experiencia_foto,
experiencia_direccion_web)
values
('Programador FrontEnd',
'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum',
'img/gmd.png',
'http://www.nicoletb.com/tata');

insert into portafolio_experiencia
(experiencia_titulo,
experiencia_descripcion,
experiencia_foto,
experiencia_direccion_web)
values
('Programador BackEnd',
'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum',
'img/back.png',
'http://www.nicoletb.com/back');

insert into portafolio_experiencia
(experiencia_titulo,
experiencia_descripcion,
experiencia_foto,
experiencia_direccion_web)
values
('Programador',
'Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum',
'img/pro.png',
'http://www.nicoletb.com/pro');

insert into portafolio_informacion
(datos_cod,
proyectos_cod,
experiencia_cod)
values
(3,1,1);

insert into portafolio_informacion
(datos_cod,
proyectos_cod,
experiencia_cod)
values
(3,2,2);

insert into portafolio_informacion
(datos_cod,
proyectos_cod,
experiencia_cod)
values
(3,3,3);

select * from portafolio_informacion;

SELECT per.datos_nombre,pro.proyectos_titulo,exp.experiencia_titulo
from portafolio_datos per inner join portafolio_informacion inf
on per.datos_cod=inf.datos_cod
inner join portafolio_proyectos pro
on  pro.proyectos_cod=inf.proyectos_cod
inner join portafolio_experiencia exp
on  exp.experiencia_cod=inf.experiencia_cod;


select * from portafolio_datos;
select * from portafolio_experiencia;
select * from portafolio_proyectos;
select * from portafolio_informacion;

insert into portafolio_datos (datos_nombre) value ('Raul Davila');

insert into portafolio_proyectos (proyectos_titulo) value ('Big Data Tecsup');

insert into portafolio_experiencia (experiencia_titulo) value ('Programador Fullstack');

insert into portafolio_informacion (datos_cod, proyectos_cod, experiencia_cod) values (2, 4, 4);

SELECT per.datos_nombre,pro.proyectos_titulo,exp.experiencia_titulo
from 
portafolio_datos per inner join portafolio_informacion inf
on per.datos_cod=inf.datos_cod
inner join portafolio_proyectos pro
on  pro.proyectos_cod=inf.proyectos_cod
inner join portafolio_experiencia exp
on  exp.experiencia_cod=inf.experiencia_cod;

Alter Table portafolio_datos add estado char(1) ;

ALTER TABLE portafolio_datos
ADD CONSTRAINT chk_estados
CHECK(estado in(1,0));

select * from portafolio_datos;
update portafolio_datos set estado=1 where datos_cod=3



