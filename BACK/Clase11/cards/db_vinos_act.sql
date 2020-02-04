create database db_vinos;
use db_vinos;

create table vinos_proveedores(
prov_cod int auto_increment primary key,
prov_nombre varchar(20));

create table vinos_productos(
prod_cod int auto_increment primary key,
prod_nombre varchar(100),
prod_det_mini text, #Descripción Card
prod_det text, #Descripción larga
prod_cant varchar(10), #ml
prod_prov int,
estado char(1),
foreign key(prod_prov) references vinos_proveedores(prov_cod));

insert into vinos_productos(prod_nombre, prod_det_mini, prod_det, prod_cant, estado) 
values ('VINO ESPAÑOL CASA DE LA ERMITA JOVEN', 'Vino Tinto', 'Aromas de frutas rojas y negras así como notas florales que recuerdan a la violeta. Buena estructura en boca, aromático, intenso y fresco, con gran carga frutal.', '500 ml', '1');

insert into vinos_productos(prod_nombre, prod_det_mini, prod_det, prod_cant, estado) 
values ('VINO ESPAÑOL CASA DE LA ERMITA IDILICO', 'Vino Tinto', 'Elaborado por el enologo Marcial Martinez con uvas seleccionadas de Monastrell (de viñas con más de setenta años) y Petit Verdot de los viñedos que rodean la bodega a 700 metros de altitud.', '750 ml', '1');

insert into vinos_productos(prod_nombre, prod_det_mini, prod_det, prod_cant, estado) 
values ('VINO ESPAÑOL CASA DE LA ERMITA VIOGNIER', 'Vino Blanco', 'Limpio y brillante,se presenta con matiz de color amarillo verdoso. Atractivas notas frutales. Cabe destacar aromas de albaricoque, melocotón, melón, pera, piña, maracuyá, azahar y jazmín.', '375 ml', '1');

insert into vinos_productos(prod_nombre, prod_det_mini, prod_det, prod_cant, estado)
values ('VINO BLANCO AFINCADO TARDIO 2010 TERRAZAS', 'Vino Blanco', 'Single vineyard Los Aromos, producido en cantidades limitadas. Pura expresión del terroir de Perdriel terroir y la experiencia de Terrazas. Expresión contintental del Cabernet Sauvignon.', '375 ml', '1');

insert into vinos_productos(prod_nombre, prod_det_mini, prod_det, prod_cant, estado) 
values ('VINO BLANCO ICEWINE RED LEAF', 'Vino Blanco', 'El sabor de este vino de hielo revela todo su opulencia con la riqueza girando con gracia y llenando el paladar con una explosión de exuberantes frutos de mango, maracuyá, piña y lichis.', '600 ml', '1');

insert into vinos_productos(prod_nombre, prod_det_mini, prod_det, prod_cant, estado) 
values ('VINO BLANCO MAROON LATE HARVEST MUSCAT', 'Vino Blanco', 'Con aromas y sabores de melocotón dulce de albaricoque y miel. Destellos dorados brillantes. Con aromas y sabores de melocotón dulce de albaricoque y miel. Sensación en la boca agradable y un final persistente.', '750 ml', '1');

insert into vinos_proveedores(prov_nombre) 
values ('Bodega Dante Robino');

insert into vinos_proveedores(prov_nombre) 
values ('Bodega De Martino');

select * from vinos_productos;
select * from vinos_proveedores;
select * from vinos_prod_prov;

create table vinos_prod_prov(
prod_prov_cod int auto_increment primary key,
prod_cod int,
prov_cod int,
foreign key(prod_cod) references vinos_productos(prod_cod),
foreign key(prov_cod) references vinos_proveedores(prov_cod));

#Mostrar productos con sus respectivos productores
SELECT per.prod_nombre,pro.prov_nombre
from vinos_productos per inner join vinos_prod_prov inf
on per.prod_cod=inf.prod_cod
inner join vinos_proveedores pro
on  pro.prov_cod=inf.prov_cod;

delimiter  $$
create procedure informacion()
begin
SELECT per.prod_nombre,pro.prov_nombre
from vinos_productos per inner join vinos_prod_prov inf
on per.prod_cod=inf.prod_cod
inner join vinos_proveedores pro
on  pro.prov_cod=inf.prov_cod;
end;



Alter Table vinos_productos add estado char(1);


delimiter $$
create procedure productos_disponibles()
begin
select * from vinos_productos
where estado=1;
end;

delimiter $$
create procedure productos()
begin
select * from vinos_productos;
end;

delimiter $$
create procedure proveedores()
begin
select * from vinos_proveedores;
end;







