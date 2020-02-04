use bdresumen;
select * from tbl_cursos;
insert into tbl_cursos(curso) values('PYTHON');
insert into tbl_cursos(curso) values('FLASK');
insert into tbl_cursos(curso) values('DJANGO');
insert into tbl_cursos(curso) values('MYSQL');
insert into tbl_cursos(curso) values('NODEJS');
insert into tbl_cursos(curso) values('FIREBASE');
insert into tbl_cursos(curso) values('DRF');

SET FOREIGN_KEY_CHECKS = 0;
truncate tbl_cursos;
SET FOREIGN_KEY_CHECKS = 1;
