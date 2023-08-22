
CREATE DATABASE FUNCIONES

USE FUNCIONES


--1) Realizar una función en SQL SERVER que trabaje como una calculadora. 
--En la misma se recibirán los siguientes parámetros: NUMEROA,NUMEROB,TIPO_OPERACION

drop function F_Calculadora

ALTER function CALCULADORA
(
@numero_A float,
@numero_B float,
@operacion_elegida char
)
returns float
as
begin
declare @TIPO_OPERACION float
set @TIPO_OPERACION = (case @operacion_elegida
when '+' then @numero_A + @numero_B
when '-' then @numero_A - @numero_B
when '*' then @numero_A * @numero_B
when '/' then @numero_A / @numero_B
else @TIPO_OPERACION end)
return	@TIPO_OPERACION
end


select dbo.CALCULADORA (10,4,'+') RESULTADO


--2)Crear una función que me devuelva el día teniendo en cuenta que:
--1=’Lunes’ 2=’Martes’……
--La función recibe como parámetro el NRO_DIA


alter function dias_semana
(
@numero_semanal int
)
returns nvarchar (100)
as
begin
declare @ingreso_dias char (100)
set @ingreso_dias  =(case @numero_semanal
when '1' then 'Lunes'
when '2' then 'Martes'
when '3' then 'Miercoles'
when '4' then 'Jueves'
when '5' then 'Viernes'
when '6' then 'Sabado'
when '7' then 'Domingo'
else @ingreso_dias end)
return @ingreso_dias
end

select dbo.dias_semana (1) as 'Dia de la semana'

--3) Crear una función que me devuelva el nombre y apellido en un mismo registro y con mayúscula.
--La función recibe como parámetro el NOMBRE Y APELLIDO en diferentes variables



create function Identificacion 
(
@Nombre nvarchar (50),
@Apellido nvarchar (50)
)
returns nvarchar (50)
as 
begin
declare @DatosIngresados nvarchar(50)

set @DatosIngresados = (UPPER(@Nombre) + (' ')+ UPPER(@Apellido))

return @DatosIngresados
end

select dbo.Identificacion ('Tony', 'Stark') as 'Identificacion Ingresada'

--4) Utilizando la base de datos creada se solicita en un mismo registro obtener:
--Nro de Factura, Cliente, Productos y Total.
--Para que los productos aparezcan en un mismo registro se debe crear una función Obtener_Productos. 
--Esta función concatenara todos los productos separados por ‘,’


create table CLIENTES(
IDCLIENTE int identity (1,1) not null,
NOMBRE nvarchar (100),
primary key (IDCLIENTE)
)

create table FACTURAS(
IDFACTURA int identity (1,1) not null,
FK_IDCLIENTE int,
primary key (IDFACTURA),
foreign key (FK_IDCLIENTE) references CLIENTES (IDCLIENTE)
)

create table PRODUCTOS(
IDPRODUCTO int identity (1,1) not null,
NOMBRE_PRODUCTO nvarchar (100),
PRECIO_UNIDAD money,
primary key (IDPRODUCTO)
)


create table INFO_FACTURAS(
IDINFO_FACTURA INT IDENTITY (1,1) NOT NULL,
CANTIDAD int,
FK_IDPRODUCTO int,
FK_IDFACTURA int,
primary key (IDINFO_FACTURA),
foreign key (FK_IDPRODUCTO) references PRODUCTOS (IDPRODUCTO),
foreign key (FK_IDFACTURA) references FACTURAS (IDFACTURA)
)


CREATE FUNCTION F_OBTENER_PRODUCTOS(
@VALOR_A INT
) RETURNS varchar(200)
AS
BEGIN
DECLARE @resultado varchar(200)
SET @resultado = (select stuff ((select ', '+P.NOMBRE_PRODUCTO from PRODUCTOS P
inner join INFO_FACTURAS df on DF.FK_IDPRODUCTO = P.IDPRODUCTO 
WHERE DF.FK_IDFACTURA =@VALOR_A
for xml path ('')),1,2,''))
RETURN @resultado
END

CREATE FUNCTION F_OPERACION(
@VALOR_A INT
) RETURNS MONEY
AS
BEGIN
DECLARE @RESULTADO MONEY
SET @RESULTADO = (SELECT SUM(P.PRECIO_UNIDAD) FROM PRODUCTOS P 
INNER JOIN INFO_FACTURAS DF ON DF.FK_IDFACTURA = P.IDPRODUCTO 
WHERE DF.FK_IDFACTURA = @VALOR_A)
RETURN @RESULTADO
END



select distinct(F.IDFACTURA) as IDFACTURA, 
(CLIENTES.NOMBRE) as CLIENTE, 
(DBO.F_OBTENER_PRODUCTOS)(2) as PRODUCTOS, 
dbo.F_OPERACION (2) as TOTAL
from FACTURAS F
inner join INFO_FACTURAS df on df.FK_IDFACTURA = f.IDFACTURA
inner join CLIENTES c on f.FK_IDCLIENTE = c.IDCLIENTE
inner join PRODUCTOS p on df.FK_IDPRODUCTO = p.IDPRODUCTO
where f.IDFACTURA = 2


