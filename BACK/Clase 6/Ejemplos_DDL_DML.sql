use bdresumen;
#Muestra todas la Tablas de mi BD
show tables;
#Muestra la estrucutura de una tabla
describe tbl_alumnos;
describe tbl_inscripcion;
#Inserta registros a la Tabla
insert into tbl_alumnos(nombre)values('Armando Ruiz');
insert into tbl_alumnos(nombre)values('Jose Ruiz');
insert into tbl_alumnos(nombre)values('Manuel Ruiz');
insert into tbl_alumnos(nombre)values('Carmen Ruiz');
insert into tbl_alumnos(nombre)values('Fidel Rosales');
insert into tbl_alumnos(nombre)values('Maria Tapia');
#Elimina solo el registro especifico;
delete from tbl_alumnos where codalumno=6;
#Elimina todos los registros de la tabla;
truncate tbl_alumnos;
#Elimina Fisicamente toda la tabla y la saca de la BD;
drop table tbl_alumnos2;
#Recupera todos los registros de la tabla mencionada
select * from tbl_alumnos;
#Modificar el dato de un registro
update tbl_alumnos set nombre='Fidel Ruiz' where codalumno=5;
#Comandos para modificar la estructura de una tabla
#Agregar una columna nueva
Alter Table tbl_alumnos add estado char(1);
update tbl_alumnos set estado='1' where codalumno in(1,2,3,4,5,6,7);
#Modificar el nombre de la columna
Alter Table tbl_alumnos CHANGE estado estadof char(1);
#Modificar el tipo de dato de la columna
Alter Table tbl_alumnos modify column estadof char(2);
#Eliminar la columna
ALTER TABLE tbl_alumnos drop column estadof;