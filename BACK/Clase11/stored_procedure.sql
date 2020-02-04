delimiter $$
create procedure personas_proyectos(cod int)
begin
select pp.proyectos_titulo,pd.datos_nombre
from portafolio_datos pd
inner join portafolio_informacion pi
on pd.datos_cod=pi.datos_cod
inner join portafolio_proyectos pp
on pp.proyectos_cod=pi.proyectos_cod
where pd.datos_cod=cod;
end

call personas_proyectos(1)