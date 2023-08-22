Create Database REMAX 

Use REMAX

--1)Log de auditoría de movimientos de los clientes (la base de datos deberá registrar cada acción que
--realicen los usuarios y clientes independientemente si se efectúa o no la compra, se necesitará saber el id la
--fecha y la tarea que realizó)


Create Server Audit Auditoria Servidor
to file
(
filepath = NºC:\Auditoria,
maxsize = 0 MB,
max_rollover_files = 2147483647,
reserve_disk_space = OFF
)
with
(
QUEVE_DELAY = 1000,
On_Failure = Continue
)

Create server audit specification [Auditoria Nivel de SQL]
for server audit [Auditoria SErvidor]
add (DATABASE_ROLE_MEMBER_CHANGE_GROUP);
add (SERVER_ROLE_MEMBER_CHANGE_GROUP);
add (DATABASE_PERMISSION_CHANGE_GROUP);
add (SERVER_OBJET_PERMISSION_CHANGE_GROUP);
add (SERVER_PERMISSION_CHANGE_GROUP);
add (SERVER_PRINCIPAL_CHANGE_GROUP);


--1)						PRODUCTOS (Propiedad)




--									3ra linea de tablas


create table Tipo_de_casa (
id_casa int identity,
casa nvarchar check (casa like 'Casa'),
Primary key (id_casa),
CONSTRAINT chk_casa check (casa like 'Duplex'),
CONSTRAINT chk_casa check (casa like 'Triplex')
)

--Valores prestablecidos para "Tipo_de_casa"

insert into Tipo_de_casa (casa) values ('Casa')
insert into Tipo_de_casa (casa) values ('Duplex')
insert into Tipo_de_casa (casa) values ('Triplex')



create table Tipo_de_departamento (
id_dep int identity,
depto nvarchar check (depto like 'Duplex'),
Primary key (id_dep),
Constraint chk_dep check (depto like 'Estandar'),
Constraint chk_dep check (depto like 'Loft'),
Constraint chk_dep check (depto like 'Penthouse'),
Constraint chk_dep check (depto like 'Piso'),
Constraint chk_dep check (depto like 'Semipiso'),
Constraint chk_dep check (depto like 'Triplex')
)

--Valores prestablecidos para "Tipo_de_departamento"

insert into Tipo_de_departamento (depto) values ('Duplex')
insert into Tipo_de_departamento (depto) values ('Estandar')
insert into Tipo_de_departamento (depto) values ('Loft')
insert into Tipo_de_departamento (depto) values ('Monoambiente')
insert into Tipo_de_departamento (depto) values ('Penthouse')
insert into Tipo_de_departamento (depto) values ('Piso')
insert into Tipo_de_departamento (depto) values ('Semipiso')
insert into Tipo_de_departamento (depto) values ('Triplex')



--								2da linea de tablas



create table Tipo_de_propiedad (
id_tipoprop int identity,
id_dep int,
id_casa int,
propiedad nvarchar check (propiedad like 'ph'),
Primary key (id_tipoprop),
Foreign key (id_dep) References Tipo_de_departamento (id_dep),
Foreign key (id_casa) References Tipo_de_casa (id_casa),
Constraint chk_prop check (propiedad like 'Terreno y Lotes'),
Constraint chk_prop check (propiedad like 'Cochera'),
Constraint chk_prop check (propiedad like 'Local'),
Constraint chk_prop check (propiedad like 'Oficina'),
Constraint chk_prop check (propiedad like 'Quinta'),
Constraint chk_prop check (propiedad like 'Galpon'),
Constraint chk_prop check (propiedad like 'Campo'),
Constraint chk_prop check (propiedad like 'Hotel'),
Constraint chk_prop check (propiedad like 'Fondo de comercio'),
Constraint chk_prop check (propiedad like 'Edificios'),
Constraint chk_prop check (propiedad like 'Otros'),
)

--Valores prestablecidos para "Tipo_de_propiedad"

insert into Tipo_de_propiedad (propiedad) values ('Ph')
insert into Tipo_de_propiedad (propiedad) values ('Terrenos y Lotes')
insert into Tipo_de_propiedad (propiedad) values ('Cocheras')
insert into Tipo_de_propiedad (propiedad) values ('Local')
insert into Tipo_de_propiedad (propiedad) values ('Oficina')
insert into Tipo_de_propiedad (propiedad) values ('Quinta')
insert into Tipo_de_propiedad (propiedad) values ('Galpon')
insert into Tipo_de_propiedad (propiedad) values ('Campo')
insert into Tipo_de_propiedad (propiedad) values ('Hotel')
insert into Tipo_de_propiedad (propiedad) values ('Fondo de Comercio')
insert into Tipo_de_propiedad (propiedad) values ('Edificios')
insert into Tipo_de_propiedad (propiedad) values ('Otros')



create table Tipo_de_Moneda (
id_moneda int identity,
moneda nvarchar check (moneda like 'Dolar'),
Primary key (id_moneda),
Constraint chk_moneda check (moneda like 'Peso Argentino'),
Constraint chk_moneda check (moneda like 'Peso'),
)

--Valores prestablecidos para "Tipo_de_moneda"

insert into Tipo_de_Moneda (moneda) values ('Dolar')
insert into Tipo_de_Moneda (moneda) values ('Peso Argentino')


Create table Tipo_de_Operacion (
id_tipop int identity,
tipo_de_operacion nvarchar check (tipo_de_operacion like 'Compra'),
Primary key (id_tipop),
Constraint chk_operacion check (moneda like 'Alquiler'),
Constraint chk_operacion check (moneda like 'Alquiler Temporario'),
)

--Valores prestablecidos para "Tipo_de_Operacion"

insert into Tipo_de_Operacion (tipo_de_operacion) values ('Compra')
insert into Tipo_de_Operacion (tipo_de_operacion) values ('Alquiler')
insert into Tipo_de_Operacion (tipo_de_operacion) values ('Alquiler Temporario')

--								1ra linea de tablas


create table Propiedad (
id_prop int identity,
id_tipoprop int,
id_moneda int,
ubicacion nvarchar,
id_tipop nvarchar,
precio int CHECK (precio>=0),
superficie decimal check (superficie>0),
superficie_cubierta decimal check (superficie_cubierta>0 and superficie>=superficie_cubierta),
descripcion nvarchar,
Primary key (id_prop),
Foreign key (id_tipoprop) References Tipo_de_Propiedad (id_tipoprop),
Foreign key (id_moneda) References Tipo_de_Moneda (id_moneda),
Foreign key (id_tipop) References Tipo_de_Operacion (id_tipop))


--Valores Ejemplo para "Propiedad"

insert into Propiedad (ubicacion,precio,superficie,superficie_cubierta,descripcion) values ('Villa Urquiza, CABA',300000,52,13,'Zona cerca del centro, linda fachada...')
insert into Propiedad (ubicacion,precio,superficie,superficie_cubierta,descripcion) values ('Villa Pueyrredon, CABA',600000,52,13,'Zona cerca del centro, linda fachada...')
insert into Propiedad (ubicacion,precio,superficie,superficie_cubierta,descripcion) values ('Villa Mataderos, CABA',1500000,52,13,'Zona cerca del centro, linda fachada...')
insert into Propiedad (ubicacion,precio,superficie,superficie_cubierta,descripcion) values ('Villa Recoleta, CABA',30000,52,13,'Zona cerca del centro, linda fachada...')
insert into Propiedad (ubicacion,precio,superficie,superficie_cubierta,descripcion) values ('Villa Urquiza, CABA',8000000,52,13,'Zona cerca del centro, linda fachada...')



--Vistas

accounts_view:

select 
casa,depto,propiedad,moneda,tipo_de_operacion,ubicacion,precio,superficie,superficie_cubierta,descripcion
from 
Propiedad join Tipo_de_Operacion join Tipo_de_Moneda join Tipo_de_propiedad join Tipo_de_departamento join Tipo_de_casa
on 
a.id_prop = b.id_tipop on b.id_tipop = c.id_moneda on c.id_moneda = d.id_tipoprop on d.id_tipoprop = id_dep on id_dep = id_casa


  
--		2)					Clientes (cantidad de productos en su poder, estado de sus compras, sus facturas, datos del perfil)


-- La cantidad de productos en su poder esta contenido en la tabla facturas ya que una factura puede contener varias propiedades
--Las facturas estan contenidad dentro de clientes ya que los clientes pueden tener varias facturas



-- 4ta linea de tablas


create table Vendedor (
id_vendedor int identity,
nombre nvarchar,
apellido nvarchar,
cuil int,
Primary key (id_vendedor)
)

--Valores Ejemplo para "Vendedor"

insert into Vendedor (nombre,apellido,cuil) values ('Eugenio','Mendez',20339546643)
insert into Vendedor (nombre,apellido,cuil) values ('Matias','Balcarce',20379346453)
insert into Vendedor (nombre,apellido,cuil) values ('Marcos','Soza',30377856245)



-- 3ra linea de tablas



create table Sucursal (
id_sucursal int identity,
direccion nvarchar,
id_vendedor int,
gerente nvarchar,
Primary key (id_sucursal),
Foreign key (id_vendedor) References Vendedor (id_vendedor)
)

--Valores ejemplo de "Sucursal"

insert into Sucursal (direccion,gerente) values ('Santa Fe 582, CABA', 'Roberto')
insert into Sucursal (direccion,gerente) values ('Ramon Falcon 640, GBA', 'Roberto')
insert into Sucursal (direccion,gerente) values ('Hemisario Tabora 584, Rio de Janeiro', 'Juan')





-- 2da linea de tablas

create table Factura (
id_factura int identity,
fecha_hora smalldatetime,
id_prop int,
id_sucursal int,
Observaciones nvarchar
Primary key (id_factura),
Foreign key (id_prop) References Propiedad (id_prop), --> hace referencia al punto 1 a la tabla pedida como "producto"
Foreign key (id_sucursal) References Sucursal (id_sucursal)
)

-- Valores de ejemplo de "Factura"

insert into Factura (fecha_hora,Observaciones) values ('01/01/2011/11:00/P','cliente se queda con la llave') 
insert into Factura (fecha_hora,Observaciones) values ('21/05/2014/18:00/P','cliente se queda con la llave') 
insert into Factura (fecha_hora,Observaciones) values ('7/12/2018/16:00/P','cliente se queda con la llave') 
insert into Factura (fecha_hora,Observaciones) values ('09/10/2015/9:00/P','cliente se queda con la llave') 



create table telefono (
id_tel int identity,
tipo nvarchar check (tipo like 'casa'),
numero int,
Primary key (id_tel),
Constraint chk_tel check (tipo like 'Celular'),
Constraint chk_tel check (tipo like 'Oficina'),
)

Valores de ejemplo para "telefono"

insert into telefono (numero) values (555-4280)
insert into telefono (numero) values (555-8761)
insert into telefono (numero) values (555-3972)
insert into telefono (numero) values (555-1265)





--1ra linea de tablas

create table Clientes (
id_cliente int identity,
id_factura int,
nombre nvarchar,
apellido nvarchar,
dni int check (dni >0) ,
cuil int check (cuil like [0-9][0-9]dni[0-9]),
domicilio nvarchar,
provincia nvarchar,
id_tel int,
mail nvarchar check (mail like %@%),
codigo_postal int check (codigo_postal>0),
Primary key (id_cliente),
Foreign key (id_factura) References Factura (id_factura),
Foreign key (id_tel) References telefono (id_tel),

)

--Valores de ejemplo para "clientes"

insert into Clientes (nombre,apellido,dni,cuil,domicilio,provincia,mail,codigo_postal) values ('Ignacio','Bertin',1254321,2125432120,'Crisologo Larralde 5434','Buenos Aires','ignaciobertin@gmail.com','1431')


--Vistas

accounts_view:
-------------
SELECT
nombre,apellido,cuil,gerente,direccion,fecha_hora,observaciones,tipo,numero,nombre,apellido,codigo_postal,dni,cuil,domicilio,provincia,mail
FROM 
Clientes join telefono join Factura join Sucursal join Vendedor 
on
a.id_cliente = b.id_tel on b.id_tel = c.id_factura on c.id_factura = d.id_sucursal




--		3)						Permisos

-- Otorgados en el punto 5 "Usuarios"


--		4)				Menu del sitio


--	2da linea de tablas


create table home (
id_home int identity,
Primary key (id_home)
)

create table comprar (
id_comprar int identity,
id_prop int,
Primary key (id_comprar),
Foreign key (id_prop) References Propiedad (id_prop)
)

create table vender (
id_vender int identity,
nombre_y_apellido nvarchar,
email nvarchar,
telefono int,
ubicacion nvarchar,
id_tipoprop int,
ambientes int,
Primary key (id_vender),
Foreign key (id_tipoprop) References Tipo_de_propiedad (id_tipoprop)
)

create table alquilar (
id_alquilar int identity,
id_prop int,
Primary key (id_alquilar),
Foreign key (id_prop) References Propiedad (id_prop)
)

create table franquicias (
id_franq int identity,
Primary key (id_franq)
)

create table blog (
id_blog int identity,
Primary key (id_blog)
)

create table contacto (
id_contacto int identity,
nombre nvarchar,
mail nvarchar,
telefono nvarchar,
direccion nvarchar,
categoria nvarchar,
comentarios nvarchar,
Primary key (id_contacto)
)



--		5)				Usuarios (usuarios del Sistema con su nivel de acceso y estadísticas de carga de datos)



--AUDITOR (no puede ver los datos dentro de la tabla)

Create login Auditor with password= '1234'
CREATE USER Marcos FOR LOGIN Auditor 
alter role db_denydatareader with member= marcos


--CLIENTE (solo pueden ver los datos de la tabla)

Create login Cliente with password= '1234'
CREATE USER Francisco FOR LOGIN Cliente 
alter role db_denydatawriter with member = marcos


--EMPLEADO (puede modificar, agregar o eliminar datos de las tablas)

Create login Empleado with password= '1234'
CREATE USER Pedro FOR LOGIN Empleado 
alter role db_datawriter with member = Pedro

--Gerente (puede modificar, agregar o eliminar datos de las tablas)

Create login Empleado with password= '1234'
create user Julio for Login Empleado 
alter role dbo_datawriter with member = Julio


-- ADMIN (tiene acceso completo)
create login Administrador with password= '1234'
CREATE USER Pablo FOR LOGIN Administrador 
alter role dbo_owner with member = Pablo




--		6)		Facturas

--La tabla "Facturas" se encuentra en el punto "2)3)" devido a la organizacion del DER y para evitar posibles errores en el codigo



--		7)		 Auditoria (consulta de todas las acciones de los usuarios y clientes del Sistema)




-- 3) Todas las altas, Bajas y modificaciones de cada una de las tablas deberán contar con control de errores y manejo de transacciones.

-- establecido en cada tabla a modo de ejemplo



-- 4)	1)		 Nombre del sitio web que va a ser soporte nuestra base de datos. Ej: https://demotores.com.ar/

--https://www.remax.com.ar/


--		2)		Diagrama Entidad Relacion con un documento que indique una descripción de lo que realiza cada tabla

--DER entregado en un archivo excel aparte


--		3)		Script para cada consuta con una descripcion de lo que realiza


--Consulta sobre tipo de propiedades con un valor entre 100.000 y 800.000 dolares

select propiedad  from Propiedad inner join Tipo_de_propiedad on Propiedad.id_tipoprop = Tipo_de_propiedad.id_tipoprop inner join Tipo_de_Moneda on Propiedad.id_moneda = Tipo_de_Moneda.id_moneda where (precio between 100000 and 800000)and (moneda like 'Dolar')


--Todos los vendedores que su nombre que empiece "M"

select * from Vendedor where (nombre like 'M%')


--consultar sobre sucursales que administre Roberto

select * from Sucursal where (gerente like 'Roberto')


--Consultar las facturas echas entre el 2014 y 2018

select * from Factura where (fecha_hora between 1/1/2014 and 1/1/2018)


--consultar el 20% de los telefonos almacenados

select top (20) percent * from telefono


--consultar todos los clientes de capital (CABA) y se llame Facundo

Select * from Clientes where (provincia like 'CABA')and (nombre like 'Facundo')


--Casas duplex en venta en dolares (utilizando vistas)

Simple query

SELECT 
casa,depto,propiedad,moneda,tipo_de_operacion,ubicacion,precio,superficie,superficie_cubierta,descripcion
where (casa like 'duplex') and (moneda like 'dolares') and (tipo_de_operacion like 'Compra')


FROM accounts_view
  
  
  
  

--		4)Script para cada procedimiento almacenado con su descripcion

--Este procedimiento indica el valor del dolar tomado a la fecha

create procedure valor_de_dolar
as
begin
	print 'valor de dolar tomado a 147'

end


--ensayo de procedimiento
execute valor_de_dolar


--		5) Script para cada tirgger con la descripción de la acción que realiza


Alter table Propiedad 
add precio_cambio decimal

-- Trigger de cambio de moneda

create trigger Propiedad on Propiedad for insert
as
declare @valor_inicial decimal,
@valor_final decimal

select @valor_inicial = precio from Propiedad
if(select precio from inserted)like 'dolar'
	begin
		select @valor_final = @valor_inicial * 147
	end
else
	begin
		select @valor_final = @valor_inicial / 147
	end
select @valor_final as precio_cambio