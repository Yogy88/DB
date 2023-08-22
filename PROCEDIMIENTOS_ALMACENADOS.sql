create database PROCEDIMIENTOS_ALMACENADOS

USE PROCEDIMIENTOS_ALMACENADOS

create table viajeros (
idviajero int identity (1,1) not null,
nombre nvarchar (50),
apellido nvarchar (50),
DNI int,
fecha_de_viaje date,
fecha_de_retorno date,
primary key (idviajero)
)

insert into viajeros (nombre,apellido,DNI,fecha_de_viaje,fecha_de_retorno) values

('Nestor', 'Altamira', 34263321,'20/12/2011','12/01/2012')

select * from viajeros


--1) Crear un procedimiento almacenado que realice un INSERT en una tabla.
if OBJECT_ID ('insercion') is not null
begin
	drop procedure insercion
end

go

create procedure insercion
as

	insert into viajeros (nombre, apellido, DNI, fecha_de_viaje, fecha_de_retorno) values 
	('Gaston',  'Santarelli', 33485723, '02/10/2013', '10/11/2013')
go
	  
exec insercion

select * from viajeros

--2) Crear un procedimiento almacenado que realice un ABM (alta, baja y modificación) de una
--tabla.

if OBJECT_ID ('alta_baja_modificacion') is not null
begin
	drop procedure alta_baja_modificacion
end

go

create procedure alta_baja_modificacion
as
	insert into viajeros (nombre, apellido, DNI, fecha_de_viaje, fecha_de_retorno) values 
	('Gabriel',  'Menendez', 33485824, '03/11/2013', '10/12/2013')
	delete viajeros where idviajero = 1
	update viajeros set nombre = 'Mariano', apellido = 'Centeno', DNI=32495632, fecha_de_viaje = '10/10/2015', fecha_de_retorno='11/12/2015'
	where idviajero = 7
go

exec alta_baja_modificacion

select * from viajeros

--3) Crear un procedimiento almacenado que devuelva los registros de un rango de fechas.
--PROCEDIMIENTOS DEFINIDOS POR EL USUARIO

if object_id ('fechas') is not null
begin 
	drop procedure fechas
end 

go

create procedure fechas

as 
	select * from viajeros as Parcial where (fecha_de_viaje between '01/01/2011' and '01/10/2011')
go

exec fechas

--XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

--1) Crear un procedimiento almacenado que reciba como parámetro un id de un cliente y como
--salida su nombre


CREATE PROCEDURE RECIBIR_INFORMACION
@N1 INT,
@NUMERO NVARCHAR (20) OUTPUT
AS
BEGIN
SELECT @NUMERO =  nombre FROM viajeros WHERE @N1 = idviajero
END

DECLARE @SALIDA NVARCHAR (20)
EXECUTE RECIBIR_INFORMACION 6, @SALIDA OUTPUT

SELECT @SALIDA AS 'NOMBRE SOLICITADO'





--2) Crear un procedimiento almacenado que funcione como calculadora (+, (+,--,*,/) la variable de
--salida será el r esultado.



CREATE PROCEDURE CALCULADORA
@N1 INT,
@N2 INT,
@SIGNO CHAR,
@TIPO_OPERACION INT OUTPUT
AS
BEGIN
SELECT @TIPO_OPERACION = case @SIGNO
			when '+' then @N1 + @N2
			when '-' then @N1 - @N2
			when '*' then @N1 * @N2
			when '/' then @N1 / @N2
			END
END

DECLARE @OBTENIDO INT
EXECUTE CALCULADORA 10,3,'*',@OBTENIDO OUTPUT

SELECT @OBTENIDO AS RESULTADO

