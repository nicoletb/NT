create schema bdvinos;
use bdvinos;

create table tbl_det_pedidos(
cod_det_pedidos int auto_increment primary key,
detalle varchar(100));

create table tbl_proveedores(
codprov int auto_increment primary key,
nombre varchar(20));

create table tbl_det_promocion(
cod_det_promo int auto_increment primary key, 
nombre varchar(10));

create table tbl_cab_promocion(
cod_cab_promo int auto_increment primary key, 
cod_det_promo int,
cod_cab_pedidos int,
foreign key(cod_det_promo) references tbl_det_promocion(cod_det_promo),
foreign key(cod_cab_pedidos) references tbl_cab_pedidos(cod_cab_pedidos));

create table tbl_cab_pedidos(
cod_cab_pedidos int auto_increment primary key,
info_cab_pedidos varchar(50));

create table tbl_productos(
cod_prod int auto_increment primary key, 
nombre varchar(20),
cod_det_promo int,
codprov int,
cod_det_pedidos int,
foreign key(cod_det_promo) references tbl_det_promocion(cod_det_promo),
foreign key(codprov) references tbl_proveedores(codprov),
foreign key(cod_det_pedidos) references tbl_det_pedidos(cod_det_pedidos));


show tables