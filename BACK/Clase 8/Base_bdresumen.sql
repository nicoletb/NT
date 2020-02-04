create database bdresumen;
use bdresumen;

create table tbl_alumnos(
codalumno int auto_increment primary key,
nombre varchar(200));
create table tbl_cursos(
codcurso int auto_increment primary key,
curso varchar(200));
create table tbl_profesores(
codprof int auto_increment primary key,
profesor varchar(200));
create table tbl_inscripcion(
codins int auto_increment primary key,
codalumno int ,
codcurso int ,
codprof int ,
foreign key(codalumno) references tbl_alumnos(codalumno),
foreign key(codcurso) references tbl_cursos(codcurso),
foreign key(codprof) references tbl_profesores(codprof));