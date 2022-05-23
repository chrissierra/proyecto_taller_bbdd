--Procedimientos Listar
create proc listar_usuarios
as
select id as ID, nombre as Nombre, primer_apellido as PrimerApellido, segundo_apellido as SegundoApellido
from usuarios
order by ID asc
go


create proc listar_materiales_educativos
as
select *
from materiales_educativos
order by ID asc
go


create proc listar_prestamos_vigentes
as
select *
from prestamos_vigentes
order by ID asc
go


create proc listar_historiales
as
select *
from historiales
order by ID asc
go



--Procedimiento Buscar
create proc buscar_materiales_educativos_por_categoria
@categoria varchar(255)
as
select *
from materiales_educativos
where nombre like '%' + @categoria + '%'
order by nombre_material asc
go

     

--Procedimiento Insertar
create proc insertar_materiales_educativos
@nombre_material varchar(255),
@titulo varchar(255),
@autor varchar(255),
@anio_publicacion varchar(255),
@categoria varchar(255)
as
insert into materiales_educativos (nombre_material,titulo, autor, anio_publicacion, categoria) values (@nombre_material,@titulo,@autor,@anio_publicacion,@categoria)
go





--Procedimiento Eliminar
create proc prestamos_vigentes_eliminar
@id int
as
delete from prestamos_vigentes
where id=@id
go

