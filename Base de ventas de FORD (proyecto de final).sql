Create Database FORD 

Use FORD

--En esta base me dedicare esclusivamente al sector de ventas de vehiculos de la pagina de Ford Motors Compani Argentina (https://www.ford.com.ar/)

--2) a)Productos

--segunda linea de tablas

-- Tabla autos

create table KA (
idka int identity,
--Datos de tabla que ve el cliente
modelo nvarchar,
precio money,
bonificacion money,
precio_bonificado money,
disponibles int,
Solicitud_client int,
--Datos de tabla que ve el vendedor
vendidos int,
-- cuando cuando el cliente abona => vendidos = solicitud_client + vendidos
stock_depositoA int,
stock_depositoB int,
stock_depositoC int,
stock_concesionariaA int,
stock_concesionariaB int,
stock_concesionarioC int,
Primary key (idka),
)

Create table KA_mas (
idkamas int identity,
--Datos de tabla que ve el cliente
modelo nvarchar,
precio money,
bonificacion money,
precio_bonificado money,
disponibles int,
Solicitud_client int,
--Datos de tabla que ve el vendedor
vendidos int,
-- cuando cuando el cliente abona => vendidos = solicitud_client + vendidos
stock_depositoA int,
stock_depositoB int,
stock_depositoC int,
stock_concesionariaA int,
stock_concesionariaB int,
stock_concesionarioC int,
Primary key (idkamas),
)

Create table KA_FREESTYLE (
idkafre int identity,
--Datos de tabla que ve el cliente
modelo nvarchar,
precio money,
bonificacion money,
precio_bonificado money,
disponibles int,
Solicitud_client int,
--Datos de tabla que ve el vendedor
vendidos int,
-- cuando cuando el cliente abona => vendidos = solicitud_client + vendidos
stock_depositoA int,
stock_depositoB int,
stock_depositoC int,
stock_concesionariaA int,
stock_concesionariaB int,
stock_concesionarioC int,
Primary key (idkafre),
)

Create table Mondeo (
idmondeo int identity,
--Datos de tabla que ve el cliente
modelo nvarchar,
precio money,
bonificacion money,
precio_bonificado money,
disponibles int,
Solicitud_client int,
--Datos de tabla que ve el vendedor
vendidos int,
-- cuando cuando el cliente abona => vendidos = solicitud_client + vendidos
stock_depositoA int,
stock_depositoB int,
stock_depositoC int,
stock_concesionariaA int,
stock_concesionariaB int,
stock_concesionarioC int,
Primary key (idmondeo),
)

Create table Mondeo_Vignale_Hibrido (
idmondeohibri int identity,
--Datos de tabla que ve el cliente
modelo nvarchar,
precio money,
bonificacion money,
precio_bonificado money,
disponibles int,
Solicitud_client int,
--Datos de tabla que ve el vendedor
vendidos int,
-- cuando cuando el cliente abona => vendidos = solicitud_client + vendidos
stock_depositoA int,
stock_depositoB int,
stock_depositoC int,
stock_concesionariaA int,
stock_concesionariaB int,
stock_concesionarioC int,
Primary key (idmondeohibri),
)

Create table Mustang (
idmustang int identity,
--Datos de tabla que ve el cliente
modelo nvarchar,
precio money,
bonificacion money,
precio_bonificado money,
disponibles int,
Solicitud_client int,
--Datos de tabla que ve el vendedor
vendidos int,
-- cuando cuando el cliente abona => vendidos = solicitud_client + vendidos
stock_depositoA int,
stock_depositoB int,
stock_depositoC int,
stock_concesionariaA int,
stock_concesionariaB int,
stock_concesionarioC int,
Primary key (idmustang),
)

-- tabla pickups

Create Table Ecosport (
idecosport int identity,
--Datos de tabla que ve el cliente
modelo nvarchar,
precio money,
bonificacion money,
precio_bonificado money,
disponibles int,
Solicitud_client int,
--Datos de tabla que ve el vendedor
vendidos int,
-- cuando cuando el cliente abona => vendidos = solicitud_client + vendidos
stock_depositoA int,
stock_depositoB int,
stock_depositoC int,
stock_concesionariaA int,
stock_concesionariaB int,
stock_concesionarioC int,
Primary key (idecosport),
)

Create Table Nueva_Kuga_Hibrida (
idkuga int identity,
--Datos de tabla que ve el cliente
modelo nvarchar,
precio money,
bonificacion money,
precio_bonificado money,
disponibles int,
Solicitud_client int,
--Datos de tabla que ve el vendedor
vendidos int,
-- cuando cuando el cliente abona => vendidos = solicitud_client + vendidos
stock_depositoA int,
stock_depositoB int,
stock_depositoC int,
stock_concesionariaA int,
stock_concesionariaB int,
stock_concesionarioC int,
Primary key (idkuga),
)

Create table Ranger (
idranger int identity,
--Datos de tabla que ve el cliente
modelo nvarchar,
precio money,
bonificacion money,
precio_bonificado money,
disponibles int,
Solicitud_client int,
--Datos de tabla que ve el vendedor
vendidos int,
-- cuando cuando el cliente abona => vendidos = solicitud_client + vendidos
stock_depositoA int,
stock_depositoB int,
stock_depositoC int,
stock_concesionariaA int,
stock_concesionariaB int,
stock_concesionarioC int,
Primary key (idranger),
)

Create table Ranger_Raptor (
id_ranger_raptor int identity,
--Datos de tabla que ve el cliente
modelo nvarchar,
precio money,
bonificacion money,
precio_bonificado money,
disponibles int,
Solicitud_client int,
--Datos de tabla que ve el vendedor
vendidos int,
-- cuando cuando el cliente abona => vendidos = solicitud_client + vendidos
stock_depositoA int,
stock_depositoB int,
stock_depositoC int,
stock_concesionariaA int,
stock_concesionariaB int,
stock_concesionarioC int,
Primary key (id_ranger_raptor),
)

Create table Nueva_F150 (
idf150 int identity,
--Datos de tabla que ve el cliente
modelo nvarchar,
precio money,
bonificacion money,
precio_bonificado money,
disponibles int,
Solicitud_client int,
--Datos de tabla que ve el vendedor
vendidos int,
-- cuando cuando el cliente abona => vendidos = solicitud_client + vendidos
stock_depositoA int,
stock_depositoB int,
stock_depositoC int,
stock_concesionariaA int,
stock_concesionariaB int,
stock_concesionarioC int,
Primary key (idf150),
)

Create Table Nueva_F150_Raptor (
id_f150_raptor int identity,
--Datos de tabla que ve el cliente
modelo nvarchar,
precio money,
bonificacion money,
precio_bonificado money,
disponibles int,
Solicitud_client int,
--Datos de tabla que ve el vendedor
vendidos int,
-- cuando cuando el cliente abona => vendidos = solicitud_client + vendidos
stock_depositoA int,
stock_depositoB int,
stock_depositoC int,
stock_concesionariaA int,
stock_concesionariaB int,
stock_concesionarioC int,
Primary key (id_f150_raptor),
)

--Tabla utilitarios

Create Table Nueva_Transit_Chasis (
id_transit_chasis int identity,
--Datos de tabla que ve el cliente
modelo nvarchar,
precio money,
bonificacion money,
precio_bonificado money,
disponibles int,
Solicitud_client int,
--Datos de tabla que ve el vendedor
vendidos int,
-- cuando cuando el cliente abona => vendidos = solicitud_client + vendidos
stock_depositoA int,
stock_depositoB int,
stock_depositoC int,
stock_concesionariaA int,
stock_concesionariaB int,
stock_concesionarioC int,
Primary key (id_transit_chasis),
)

Create Table Nueva_Transit_Van (
id_transit_van int identity,
--Datos de tabla que ve el cliente
modelo nvarchar,
precio money,
bonificacion money,
precio_bonificado money,
disponibles int,
Solicitud_client int,
--Datos de tabla que ve el vendedor
vendidos int,
-- cuando cuando el cliente abona => vendidos = solicitud_client + vendidos
stock_depositoA int,
stock_depositoB int,
stock_depositoC int,
stock_concesionariaA int,
stock_concesionariaB int,
stock_concesionarioC int,
Primary key (id_transit_van),
)

Create Table Nueva_Transit_Minibus (
id_transit_minibus int identity,
--Datos de tabla que ve el cliente
modelo nvarchar,
precio money,
bonificacion money,
precio_bonificado money,
disponibles int,
Solicitud_client int,
--Datos de tabla que ve el vendedor
vendidos int,
-- cuando cuando el cliente abona => vendidos = solicitud_client + vendidos
stock_depositoA int,
stock_depositoB int,
stock_depositoC int,
stock_concesionariaA int,
stock_concesionariaB int,
stock_concesionarioC int,
Primary key (id_transit_minibus),
)

-- Tabla Camiones

Create Table F_4000 (
id_f4000 int identity,
--Datos de tabla que ve el cliente
modelo nvarchar,
precio money,
bonificacion money,
precio_bonificado money,
disponibles int,
Solicitud_client int,
--Datos de tabla que ve el vendedor
vendidos int,
-- cuando cuando el cliente abona => vendidos = solicitud_client + vendidos
stock_depositoA int,
stock_depositoB int,
stock_depositoC int,
stock_concesionariaA int,
stock_concesionariaB int,
stock_concesionarioC int,
Primary key (id_f4000),
)

Create Table Cargo_916 (
id_cargo916 int identity,
--Datos de tabla que ve el cliente
modelo nvarchar,
precio money,
bonificacion money,
precio_bonificado money,
disponibles int,
Solicitud_client int,
--Datos de tabla que ve el vendedor
vendidos int,
-- cuando cuando el cliente abona => vendidos = solicitud_client + vendidos
stock_depositoA int,
stock_depositoB int,
stock_depositoC int,
stock_concesionariaA int,
stock_concesionariaB int,
stock_concesionarioC int,
Primary key (id_cargo916),
)

Create Table Cargo_1119 (
id_cargo1119 int identity,
--Datos de tabla que ve el cliente
modelo nvarchar,
precio money,
bonificacion money,
precio_bonificado money,
disponibles int,
Solicitud_client int,
--Datos de tabla que ve el vendedor
vendidos int,
-- cuando cuando el cliente abona => vendidos = solicitud_client + vendidos
stock_depositoA int,
stock_depositoB int,
stock_depositoC int,
stock_concesionariaA int,
stock_concesionariaB int,
stock_concesionarioC int,
Primary key (id_cargo1119),
)

Create Table Cargo_1519 (
id_cargo1519 int identity,
--Datos de tabla que ve el cliente
modelo nvarchar,
precio money,
bonificacion money,
precio_bonificado money,
disponibles int,
Solicitud_client int,
--Datos de tabla que ve el vendedor
vendidos int,
-- cuando cuando el cliente abona => vendidos = solicitud_client + vendidos
stock_depositoA int,
stock_depositoB int,
stock_depositoC int,
stock_concesionariaA int,
stock_concesionariaB int,
stock_concesionarioC int,
Primary key (id_cargo1519),
)

Create Table Cargo_1723_4x2 (
id_cargo1723 int identity,
--Datos de tabla que ve el cliente
modelo nvarchar,
precio money,
bonificacion money,
precio_bonificado money,
disponibles int,
Solicitud_client int,
--Datos de tabla que ve el vendedor
vendidos int,
-- cuando cuando el cliente abona => vendidos = solicitud_client + vendidos
stock_depositoA int,
stock_depositoB int,
stock_depositoC int,
stock_concesionariaA int,
stock_concesionariaB int,
stock_concesionarioC int,
Primary key (id_cargo1723),
)

Create table Cargo_1723_6x2 (
id_cargo1723_6x2 int identity,
--Datos de tabla que ve el cliente
modelo nvarchar,
precio money,
bonificacion money,
precio_bonificado money,
disponibles int,
Solicitud_client int,
--Datos de tabla que ve el vendedor
vendidos int,
-- cuando cuando el cliente abona => vendidos = solicitud_client + vendidos
stock_depositoA int,
stock_depositoB int,
stock_depositoC int,
stock_concesionariaA int,
stock_concesionariaB int,
stock_concesionarioC int,
Primary key (id_cargo1723_6x2),
)

Create table Cargo_1729_4x2 (
id_cargo1729_4x2 int identity,
--Datos de tabla que ve el cliente
modelo nvarchar,
precio money,
bonificacion money,
precio_bonificado money,
disponibles int,
Solicitud_client int,
--Datos de tabla que ve el vendedor
vendidos int,
-- cuando cuando el cliente abona => vendidos = solicitud_client + vendidos
stock_depositoA int,
stock_depositoB int,
stock_depositoC int,
stock_concesionariaA int,
stock_concesionariaB int,
stock_concesionarioC int,
Primary key (id_cargo1729_4x2),
)

Create Table Cargo_1933 (
id_cargo1933 int identity,
--Datos de tabla que ve el cliente
modelo nvarchar,
precio money,
bonificacion money,
precio_bonificado money,
disponibles int,
Solicitud_client int,
--Datos de tabla que ve el vendedor
vendidos int,
-- cuando cuando el cliente abona => vendidos = solicitud_client + vendidos
stock_depositoA int,
stock_depositoB int,
stock_depositoC int,
stock_concesionariaA int,
stock_concesionariaB int,
stock_concesionarioC int,
Primary key (id_cargo1933),
)

Create Table Cargo_3129 (
id_cargo3129 int identity,
--Datos de tabla que ve el cliente
modelo nvarchar,
precio money,
bonificacion money,
precio_bonificado money,
disponibles int,
Solicitud_client int,
--Datos de tabla que ve el vendedor
vendidos int,
-- cuando cuando el cliente abona => vendidos = solicitud_client + vendidos
stock_depositoA int,
stock_depositoB int,
stock_depositoC int,
stock_concesionariaA int,
stock_concesionariaB int,
stock_concesionarioC int,
Primary key (id_cargo3129),
)

Create table Cargo_2042 (
id_cargo2042 int identity,
--Datos de tabla que ve el cliente
modelo nvarchar,
precio money,
bonificacion money,
precio_bonificado money,
disponibles int,
Solicitud_client int,
--Datos de tabla que ve el vendedor
vendidos int,
-- cuando cuando el cliente abona => vendidos = solicitud_client + vendidos
stock_depositoA int,
stock_depositoB int,
stock_depositoC int,
stock_concesionariaA int,
stock_concesionariaB int,
stock_concesionarioC int,
Primary key (id_cargo2042),
)

Create Table Cargo_2842 (
id_cargo2842 int identity,
--Datos de tabla que ve el cliente
modelo nvarchar,
precio money,
bonificacion money,
precio_bonificado money,
disponibles int,
Solicitud_client int,
--Datos de tabla que ve el vendedor
vendidos int,
-- cuando cuando el cliente abona => vendidos = solicitud_client + vendidos
stock_depositoA int,
stock_depositoB int,
stock_depositoC int,
stock_concesionariaA int,
stock_concesionariaB int,
stock_concesionarioC int,
Primary key (id_cargo2842),
)

--Primera linea de tablas

Create table Autos(
id_autos int identity,
idka int,
idkamas int,
idkafre int,
idmondeohibri int,
idmustang int,
Primary key (id_autos),
Foreign key (idka) References Ka (idka),
Foreign key (idkamas) References Ka_mas (idkamas),
Foreign key (idkafre) References KA_FREESTYLE (idkafre),
Foreign key (idmondeohibri) References Mondeo_Vignale_Hibrido (idmondeohibri),
Foreign key (idmustang) References Mustang (idmustang)
)

Create Table Pick_ups_y_Suv_s (
id_Pick_ups int identity,
idecosport int,
idkuga int,
idranger int,
id_ranger_raptor int,
idf150 int,
id_f150_raptor int,
Primary key (id_Pick_ups),
Foreign key (idecosport) References Ecosport (idecosport),
Foreign key (idkuga) References Nueva_Kuga_Hibrida (idkuga),
Foreign key (idranger) References Ranger (idranger),
Foreign key (id_ranger_raptor) References Ranger_Raptor (id_ranger_raptor),
Foreign key (idf150) References Nueva_F150 (idf150),
Foreign key (id_f150_raptor) References Nueva_F150_Raptor (id_f150_raptor)
)

Create table Utilitarios (
id_utilitarios int identity,
id_transit_chasis int,
id_transit_van int,
id_transit_minibus int,
Primary key (id_utilitarios),
Foreign key (id_transit_chasis) References Nueva_Transit_Chasis (id_transit_chasis),
Foreign key (id_transit_van) References Nueva_Transit_Van (id_transit_van),
Foreign key (id_transit_minibus) References Nueva_Transit_Minibus (id_transit_minibus)
)

Create table Flotas_y_Ventas_Especiales (
id_flotas int identity,
Primary key (id_flotas),
)

Create table Camiones (
id_camiones int identity,
id_f4000 int,
id_cargo916 int,
id_cargo1119 int,
id_cargo1519 int,
id_cargo1723 int,
id_cargo1723_6x2 int,
id_cargo1729_4x2 int,
id_cargo1933 int,
id_cargo3129 int,
id_cargo2042 int,
id_cargo2842 int,
Primary key (id_camiones),
Foreign key (id_f4000) References F_4000 (id_f4000),
Foreign key (id_cargo916) References Cargo_916 (id_cargo916),
Foreign key (id_cargo1119) References Cargo_1119 (id_cargo1119),
Foreign key (id_cargo1519) References Cargo_1519 (id_cargo1519),
Foreign key (id_cargo1723) References Cargo_1723_4x2 (id_cargo1723),
Foreign key (id_cargo1723_6x2) References Cargo_1723_6x2 (id_cargo1723_6x2),
Foreign key (id_cargo1729_4x2) References Cargo_1729_4x2 (id_cargo1729_4x2),
Foreign key (id_cargo1933) References Cargo_1933 (id_cargo1933),
Foreign key (id_cargo3129) References Cargo_3129 (id_cargo3129),
Foreign key (id_cargo2042) References Cargo_2042 (id_cargo2042),
Foreign key (id_cargo2842) References Cargo_2842 (id_cargo2842),
)




-- Insert de ejemplo para llenar base

--Ejemplo de un ingreso de precios de un vendedor 

insert into Ecosport (modelo,precio,bonificacion,precio_bonificado) values ('s',250,12,238)

--Ejemplo de una venta echa por un cliente

insert into Ecosport (Solicitud_client) values (2)

--b)Clientes

create table Clientes (
idcliente int identity,
--cantidad de productos en su poder
Stockcliente int,
estadocompra nvarchar,
idfactura int,
foreign key (idfactura) references Factura (idfactura),
nombre nvarchar,
apellido nvarchar,
DNI int,
direccion nvarchar,
CodigoPostal int,
primary key (idcliente)
)


--c)Permisos




--d) Menu del sitio web completo (sin incluir la seccion de ventas ya que fue creada anteriormente)

--tercera linea de tablas

create table FordPass (
idfordpass int identity,
primary key (idfordpass)
)

create table FordAssistance (
idfordassis int identity,
primary key (idfordassis)
)

create table TutorialesFord (
idtutoriales int identity,
primary key (idtutoriales)
)

create table Manuales_de_Montaje (
idmanuales int identity,
primary key (idmanuales)
)

create table SolicitaTurno (
idturno int identity,
primary key (idturno)
)

Create table Posventa (
idposventa int identity,
primary key (idposventa)
)

Create table Plan_de_Mantenimiento (
idmantenimiento int identity,
primary key (idmantenimiento)
)

create table MecanicaLigera (
idmecligera int identity,
primary key (idmecligera)
)

create table FordProtect (
idprotect int identity,
primary key (idprotect)
)

create table QuickLane (
idquicklane int identity,
primary key (idquicklane)
)

create table Accesorios (
idaccesorios int identity,
primary key (idaccesorios)
)

create table MercadoLibre (
idmercadolibre int identity,
primary key (idmercadolibre)
)

Create table Oportunidades (
idoportunidades int identity,
primary key (idoportunidades)
)

Create table Pickup_y_delivery (
idpyd int identity,
primary key (idpyd)
)

create table Contactless (
idcontact int identity,
primary key (idcontact)
)



Create table Conocenos (
idconocenos int identity,
primary key (idconocenos)
)

create table Recursos_Humanos (
idRRHH int identity,
primary key (idRRHH)
)

create table Novedades (
idnovedades int identity,
primary key (idnovedades)
)

Create table NuestroCompromiso (
idcompromiso int identity,
primary key (idcompromiso)
)

create table NuestraHistoria (
idhistoria int identity,
primary key (idhistoria)
)

Create table Contacto (
idcontacto int identity,
primary key (idcontacto)
)

create table SYNC (
idsync int identity,
primary key (idsync)
)


--segunda linea de tablas

create table fordcredit (
idfordcredit int identity,
primary key (idfordcredit)
)

create table planovalo (
idplanovalo int identity,
primary key (idplanovalo)
)

create table Miford (
idmiford int identity,
idfordpass int,
Foreign key (idfordpass) References FordPass (idfordpass),
idfordassis int,
Foreign key (idfordassis) References FordAssistance (idfordassis),
idtutoriales int,
Foreign key (idtutoriales) References TutorialesFord (idtutoriales),
idmanuales int,
Foreign key (idmanuales) References Manuales_de_Montaje (idmanuales),
idturno int,
Foreign key (idturno) References SolicitaTurno (idturno),
primary key (idmiford)
)

create table servicio (
idservicio int identity,
primary key (idservicio),
idposventa int,
Foreign key (idposventa) References Posventa (idposventa),
idmantenimiento int,
Foreign key (idmantenimiento) References Plan_de_Mantenimiento (idmantenimiento),
idmecligera int,
Foreign key (idmecligera) References MecanicaLigera (idmecligera),
idprotect int,
Foreign key (idprotect) References FordProtect (idprotect),
idquicklane int,
Foreign key (idquicklane) References QuickLane (idquicklane)
)

Create table Repuestos_y_accesorios(
idrepuestos int identity,
idaccesorios int,
Foreign key (idaccesorios) References Accesorios (idaccesorios),
idmercadolibre int,
Foreign key (idmercadolibre) References MercadoLibre (idmercadolibre),
primary key (idrepuestos)
)

create table Novedadess (
idnovedades int identity,
idoportunidades int,
idpyd int,
idcontact int,
Foreign key (idoportunidades) references Oportunidades (idoportunidades),
Foreign key (idpyd)references Pickup_y_delivery (idpyd),
Foreign key (idcontact) references Contactless (idcontact),
primary key (idnovedades)
)

Create table Conocenoss (
idconocenos int identity,
primary key (idconocenos),
idconocenoss int,
idRRHH int,
idnovedades int,
idcompromiso int,
idhistoria int,
idcontacto int,
Foreign key (idconocenos) references Conocenos (idconocenos),
foreign key (idRRHH) references Recursos_Humanos (idRRHH),
foreign key (idnovedades) references Novedades (idnovedades),
foreign key (idcompromiso) references NuestroCompromiso (idcompromiso),
foreign key (idhistoria) references NuestraHistoria (idhistoria),
foreign key (idcontacto) references Contacto (idcontacto)
)

Create table Tecnologia (
idtecnologia int identity,
primary key (idtecnologia),
idsync int,
foreign key (idsync) references SYNC (idsync),
)

--primera linea de tablas

create table #SomosResponsables (
idresponsables int identity,
primary key (idresponsables)
)

create table Vehiculos (
idvehiculos int identity,
id_autos int,
id_Pick_ups int,
id_utilitarios int,
id_flotas int,
id_camiones int,
Foreign key (id_autos) References Autos (id_autos),
Foreign key (id_Pick_ups) References Pick_ups_y_Suv_s (id_Pick_ups),
Foreign key (id_utilitarios) References Utilitarios (id_utilitarios),
Foreign key (id_flotas) References Utilitarios (id_flotas),
Foreign key (id_camiones) References Camiones (id_camiones),
primary key (idvehiculos)
)

create table Financiamiento (
idfinanciamiento int identity,
idfordcredit int,
idplanovalo int,
foreign key (idfordcredit) references fordcredit (idfordcredit),
foreign key (idplanovalo) references planovalo (idplanovalo),
primary key (idfinanciamiento)
)

Create table Oportunidadess (
idoportunidades int identity,
primary key (idoportunidades),
)

create table Posventaa (
idposventa int identity,
idmiford int,
idservicio int,
idrepuestos int,
idnovedades int,
Foreign key (idmiford) references Miford (idmiford),
Foreign key (idservicio) references servicio (idservicio),
Foreign key (idrepuestos) references Repuestos_y_accesorios (idrepuestos),
Foreign key (idnovedades) references Novedades (idnovedades),
primary key (idposventa)
)

Create table Conocenosss (
idconocenos int identity,
idconocenoss int,
idtecnologia int,
foreign key (idconocenoss) references Conocenoss (idconocenos),
Foreign key (idtecnologia) references Tecnologia (idtecnologia),
primary key (idconocenos)
)



--f) Facturacion

create table Factura (
idfactura int identity,
fechayhora smalldatetime,
vehiculo nvarchar,
modelo nvarchar,
precio money,
bonificacion money,
precio_bonificado money,
disponibles int,
Solicitud_client int,
Observaciones nvarchar,
primary key (idfactura)
)

--g) Auditoria


USE [master]

GO

CREATE SERVER AUDIT [AUDITORIA PARA USUARIOS Y CLIENTES]
TO FILE 
(	FILEPATH = N'C:\AUDITORIA'
	,MAXSIZE = 0 MB
	,MAX_ROLLOVER_FILES = 2147483647
	,RESERVE_DISK_SPACE = OFF
)
WITH
(	QUEUE_DELAY = 1000
	,ON_FAILURE = CONTINUE
)

GO

--EVENTOS QUE SE VAN A AUDITAR

USE [master]

GO

CREATE SERVER AUDIT SPECIFICATION [AUDITORIA A NIVEL SQL]
FOR SERVER AUDIT [AUDITORIA PARA USUARIOS Y CLIENTES]
ADD (DATABASE_ROLE_MEMBER_CHANGE_GROUP),
ADD (SERVER_ROLE_MEMBER_CHANGE_GROUP),
ADD (DATABASE_PERMISSION_CHANGE_GROUP),
ADD (SERVER_OBJECT_PERMISSION_CHANGE_GROUP),
ADD (DATABASE_PRINCIPAL_CHANGE_GROUP),
ADD (DATABASE_PERMISSION_CHANGE_GROUP),
ADD (SERVER_PRINCIPAL_CHANGE_GROUP)

GO


--3)  Todas las altas, Bajas y modificaciones de cada una de las tablas deberán contar con control de errores
--y manejo de transacciones.

--tomo la tabla vehiculos solamente porque es la unica que tiene variables donde se pueden insertar datos

create procedure SP_ABM_Vehiculos
(
@idvehiculos int,
--Datos de tabla que ve el cliente
@modelo nvarchar,
@precio money,
@bonificacion money,
@precio_bonificado money,
@disponibles int,
@Solicitud_client int,
--Datos de tabla que ve el vendedor
@vendidos int,
-- cuando cuando el cliente abona => vendidos = solicitud_client + vendidos
@stock_depositoA int,
@stock_depositoB int,
@stock_depositoC int,
@stock_concesionariaA int,
@stock_concesionariaB int,
@stock_concesionarioC int,
@OPERACION VARCHAR=1,
--parametro de salida
@Id int Output,
@Error nvarchar(100) Output
)
as
begin
	begin try--------------------------
		BEGIN TRAN
		IF (@OPERACION='A')
		--la opcion "a" almacena datos, la opcion "b" los elimina y los M los actualiza
	    BEGIN
		insert into Vehiculos(@modelo,@precio,@bonificacion,@precio_bonificado,@disponibles,@Solicitud_client,@vendidos,@stock_depositoA,@stock_depositoB,@stock_depositoC,@stock_concesionariaA,@stock_concesionariaB,@stock_concesionarioC)
		values (@modelo,@precio,@bonificacion,@precio_bonificado,@disponibles,@Solicitud_client,@vendidos,@stock_depositoA,@stock_depositoB,@stock_depositoC,@stock_concesionariaA,@stock_concesionariaB,@stock_concesionarioC)
		set @Id=@@identity
		SET @Error='Error'
		END
			ELSE IF (@OPERACION='B')
	  BEGIN
			DELETE FROM Vehiculos WHERE @idvehiculos=idvehiculos
	  END
			ELSE IF(@OPERACION='M')
	  BEGIN
			UPDATE Vehiculos SET @modelo=modelo,@precio=precio,@bonificacion=bonificacion,@precio_bonificado=precio_bonificado,@disponibles=disponibles,@Solicitud_client=Solicitud_client,@vendidos=vendidos,@stock_depositoA=stock_depositoA,@stock_depositoB=stock_depositoB,@stock_depositoC=stock_depositoC,@stock_concesionariaA=stock_concesionariaA,@stock_concesionariaB=stock_concesionariaB,@stock_concesionarioC=stock_concesionarioC)
			WHERE @idvehiculos=idvehiculos
	  END
		COMMIT TRAN
	end try
	begin catch-------------------
		SET @Id=0
		SET @Error= ERROR_MESSAGE() + ' lINEA error: ' +  CAST(ERROR_NUMBER() AS NVARCHAR(30))		
		ROLLBACK TRAN
	end catch----------------
end


--2) e) Usuarios y permisos


--Creacion de Cliente


USE [master]
GO
CREATE LOGIN [Cliente] WITH PASSWORD=N'1234', DEFAULT_DATABASE=[FORD], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
USE [FORD]
GO
CREATE USER [Cliente] FOR LOGIN [Cliente]
GO
USE [FORD]
GO
EXEC sp_addrolemember N'db_accessadmin', N'Cliente'
GO
USE [FORD]
GO
EXEC sp_addrolemember N'db_datareader', N'Cliente'
GO
USE [FORD]
GO
EXEC sp_addrolemember N'db_datawriter', N'Cliente'
GO
USE [FORD]
GO
EXEC sp_addrolemember N'db_owner', N'Cliente'
GO

--permisos


ALTER AUTHORIZATION ON SCHEMA::[db_owner] TO [Clientes]
ALTER AUTHORIZATION ON SCHEMA::[db_datareader] TO [Clientes]
ALTER AUTHORIZATION ON SCHEMA::[db_datawriter] TO [Clientes]
EXEC sp_addrolemember N'db_datareader', N'Clientes'
EXEC sp_addrolemember N'db_owner', N'Clientes'
EXEC sp_addrolemember N'db_datawriter', N'Clientes'
GRANT SELECT ON [dbo].[sysdiagrams] TO [Clientes]
DENY UPDATE ON [dbo].[sysdiagrams] TO [Clientes]
DENY VIEW CHANGE TRACKING ON [dbo].[sysdiagrams] TO [Clientes]
GRANT SELECT ON [dbo].[Ranger] TO [Clientes]
DENY UPDATE ON [dbo].[Ranger] TO [Clientes]
DENY VIEW CHANGE TRACKING ON [dbo].[Ranger] TO [Clientes]
GRANT SELECT ON [dbo].[Ranger_Raptor] TO [Clientes]
DENY UPDATE ON [dbo].[Ranger_Raptor] TO [Clientes]
DENY VIEW CHANGE TRACKING ON [dbo].[Ranger_Raptor] TO [Clientes]
GRANT SELECT ON [dbo].[Nueva_F150] TO [Clientes]
DENY UPDATE ON [dbo].[Nueva_F150] TO [Clientes]
DENY VIEW CHANGE TRACKING ON [dbo].[Nueva_F150] TO [Clientes]
GRANT SELECT ON [dbo].[Nueva_Transit_Van] TO [Clientes]
GO
use [FORD]
GO
DENY UPDATE ON [dbo].[Nueva_Transit_Van] TO [Clientes]
GO
use [FORD]
GO
DENY VIEW CHANGE TRACKING ON [dbo].[Nueva_Transit_Van] TO [Clientes]
GO
use [FORD]
GO
GRANT SELECT ON [dbo].[Cargo_1723_4x2] TO [Clientes]
GO
use [FORD]
GO
DENY UPDATE ON [dbo].[Cargo_1723_4x2] TO [Clientes]
GO
use [FORD]
GO
DENY VIEW CHANGE TRACKING ON [dbo].[Cargo_1723_4x2] TO [Clientes]
GO
use [FORD]
GO
GRANT SELECT ON [dbo].[Cargo_916] TO [Clientes]
GO
use [FORD]
GO
DENY UPDATE ON [dbo].[Cargo_916] TO [Clientes]
GO
use [FORD]
GO
DENY VIEW CHANGE TRACKING ON [dbo].[Cargo_916] TO [Clientes]
GO
use [FORD]
GO
GRANT SELECT ON [dbo].[Nueva_Transit_Chasis] TO [Clientes]
GO
use [FORD]
GO
DENY UPDATE ON [dbo].[Nueva_Transit_Chasis] TO [Clientes]
GO
use [FORD]
GO
DENY VIEW CHANGE TRACKING ON [dbo].[Nueva_Transit_Chasis] TO [Clientes]
GO
use [FORD]
GO
GRANT SELECT ON [dbo].[KA] TO [Clientes]
GO
use [FORD]
GO
DENY UPDATE ON [dbo].[KA] TO [Clientes]
GO
use [FORD]
GO
DENY VIEW CHANGE TRACKING ON [dbo].[KA] TO [Clientes]
GO
use [FORD]
GO
GRANT SELECT ON [dbo].[Ecosport] TO [Clientes]
GO
use [FORD]
GO
DENY UPDATE ON [dbo].[Ecosport] TO [Clientes]
GO
use [FORD]
GO
DENY VIEW CHANGE TRACKING ON [dbo].[Ecosport] TO [Clientes]
GO
use [FORD]
GO
GRANT SELECT ON [dbo].[Nueva_Kuga_Hibrida] TO [Clientes]
GO
use [FORD]
GO
DENY UPDATE ON [dbo].[Nueva_Kuga_Hibrida] TO [Clientes]
GO
use [FORD]
GO
DENY VIEW CHANGE TRACKING ON [dbo].[Nueva_Kuga_Hibrida] TO [Clientes]
GO
use [FORD]
GO
GRANT SELECT ON [dbo].[Cargo_2842] TO [Clientes]
GO
use [FORD]
GO
DENY UPDATE ON [dbo].[Cargo_2842] TO [Clientes]
GO
use [FORD]
GO
DENY VIEW CHANGE TRACKING ON [dbo].[Cargo_2842] TO [Clientes]
GO
use [FORD]
GO
GRANT SELECT ON [dbo].[KA_mas] TO [Clientes]
GO
use [FORD]
GO
DENY UPDATE ON [dbo].[KA_mas] TO [Clientes]
GO
use [FORD]
GO
DENY VIEW CHANGE TRACKING ON [dbo].[KA_mas] TO [Clientes]
GO
use [FORD]
GO
GRANT SELECT ON [dbo].[Cargo_1519] TO [Clientes]
GO
use [FORD]
GO
DENY UPDATE ON [dbo].[Cargo_1519] TO [Clientes]
GO
use [FORD]
GO
DENY VIEW CHANGE TRACKING ON [dbo].[Cargo_1519] TO [Clientes]
GO
use [FORD]
GO
GRANT SELECT ON [dbo].[KA_FREESTYLE] TO [Clientes]
GO
use [FORD]
GO
DENY UPDATE ON [dbo].[KA_FREESTYLE] TO [Clientes]
GO
use [FORD]
GO
DENY VIEW CHANGE TRACKING ON [dbo].[KA_FREESTYLE] TO [Clientes]
GO
use [FORD]
GO
GRANT SELECT ON [dbo].[F_4000] TO [Clientes]
GO
use [FORD]
GO
DENY UPDATE ON [dbo].[F_4000] TO [Clientes]
GO
use [FORD]
GO
DENY VIEW CHANGE TRACKING ON [dbo].[F_4000] TO [Clientes]
GO
use [FORD]
GO
GRANT SELECT ON [dbo].[Cargo_1723_6x2] TO [Clientes]
GO
use [FORD]
GO
DENY UPDATE ON [dbo].[Cargo_1723_6x2] TO [Clientes]
GO
use [FORD]
GO
DENY VIEW CHANGE TRACKING ON [dbo].[Cargo_1723_6x2] TO [Clientes]
GO
use [FORD]
GO
GRANT SELECT ON [dbo].[Mustang] TO [Clientes]
GO
use [FORD]
GO
DENY UPDATE ON [dbo].[Mustang] TO [Clientes]
GO
use [FORD]
GO
DENY VIEW CHANGE TRACKING ON [dbo].[Mustang] TO [Clientes]
GO
use [FORD]
GO
GRANT SELECT ON [dbo].[Cargo_2042] TO [Clientes]
GO
use [FORD]
GO
DENY UPDATE ON [dbo].[Cargo_2042] TO [Clientes]
GO
use [FORD]
GO
DENY VIEW CHANGE TRACKING ON [dbo].[Cargo_2042] TO [Clientes]
GO
use [FORD]
GO
GRANT SELECT ON [dbo].[Nueva_Transit_Minibus] TO [Clientes]
GO
use [FORD]
GO
DENY UPDATE ON [dbo].[Nueva_Transit_Minibus] TO [Clientes]
GO
use [FORD]
GO
DENY VIEW CHANGE TRACKING ON [dbo].[Nueva_Transit_Minibus] TO [Clientes]
GO
use [FORD]
GO
GRANT SELECT ON [dbo].[Cargo_3129] TO [Clientes]
GO
use [FORD]
GO
DENY UPDATE ON [dbo].[Cargo_3129] TO [Clientes]
GO
use [FORD]
GO
DENY VIEW CHANGE TRACKING ON [dbo].[Cargo_3129] TO [Clientes]
GO
use [FORD]
GO
GRANT SELECT ON [dbo].[Mondeo] TO [Clientes]
GO
use [FORD]
GO
DENY UPDATE ON [dbo].[Mondeo] TO [Clientes]
GO
use [FORD]
GO
DENY VIEW CHANGE TRACKING ON [dbo].[Mondeo] TO [Clientes]
GO
use [FORD]
GO
GRANT SELECT ON [dbo].[Mondeo_Vignale_Hibrido] TO [Clientes]
GO
use [FORD]
GO
DENY UPDATE ON [dbo].[Mondeo_Vignale_Hibrido] TO [Clientes]
GO
use [FORD]
GO
DENY VIEW CHANGE TRACKING ON [dbo].[Mondeo_Vignale_Hibrido] TO [Clientes]
GO
use [FORD]
GO
GRANT SELECT ON [dbo].[Cargo_1933] TO [Clientes]
GO
use [FORD]
GO
DENY UPDATE ON [dbo].[Cargo_1933] TO [Clientes]
GO
use [FORD]
GO
DENY VIEW CHANGE TRACKING ON [dbo].[Cargo_1933] TO [Clientes]
GO
use [FORD]
GO
GRANT SELECT ON [dbo].[Flotas_y_Ventas_Especiales] TO [Clientes]
GO
use [FORD]
GO
DENY UPDATE ON [dbo].[Flotas_y_Ventas_Especiales] TO [Clientes]
GO
use [FORD]
GO
DENY VIEW CHANGE TRACKING ON [dbo].[Flotas_y_Ventas_Especiales] TO [Clientes]
GO
use [FORD]
GO
GRANT SELECT ON [dbo].[Cargo_1119] TO [Clientes]
GO
use [FORD]
GO
DENY UPDATE ON [dbo].[Cargo_1119] TO [Clientes]
GO
use [FORD]
GO
DENY VIEW CHANGE TRACKING ON [dbo].[Cargo_1119] TO [Clientes]
GO
use [FORD]
GO
GRANT SELECT ON [dbo].[Utilitarios] TO [Clientes]
GO
use [FORD]
GO
DENY UPDATE ON [dbo].[Utilitarios] TO [Clientes]
GO
use [FORD]
GO
DENY VIEW CHANGE TRACKING ON [dbo].[Utilitarios] TO [Clientes]
GO
use [FORD]
GO
GRANT SELECT ON [dbo].[Cargo_1729_4x2] TO [Clientes]
GO
use [FORD]
GO
DENY UPDATE ON [dbo].[Cargo_1729_4x2] TO [Clientes]
GO
use [FORD]
GO
DENY VIEW CHANGE TRACKING ON [dbo].[Cargo_1729_4x2] TO [Clientes]
GRANT SELECT ON [dbo].[Nueva_F150_Raptor] TO [Clientes]
DENY UPDATE ON [dbo].[Nueva_F150_Raptor] TO [Clientes]
DENY VIEW CHANGE TRACKING ON [dbo].[Nueva_F150_Raptor] TO [Clientes]
GRANT SELECT ON [dbo].[Pick_ups_y_Suv_s] TO [Clientes]
DENY UPDATE ON [dbo].[Pick_ups_y_Suv_s] TO [Clientes]
DENY VIEW CHANGE TRACKING ON [dbo].[Pick_ups_y_Suv_s] TO [Clientes]


--Creacion de Vendedores


USE [master]
GO
CREATE LOGIN [Vendedor] WITH PASSWORD=N'1234', DEFAULT_DATABASE=[FORD], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
USE [FORD]
GO
CREATE USER [Vendedor] FOR LOGIN [Vendedor]
GO
USE [FORD]
GO
EXEC sp_addrolemember N'db_accessadmin', N'Vendedor'
GO
USE [FORD]
GO
EXEC sp_addrolemember N'db_datareader', N'Vendedor'
GO
USE [FORD]
GO
EXEC sp_addrolemember N'db_datawriter', N'Vendedor'
GO
USE [FORD]
GO
EXEC sp_addrolemember N'db_owner', N'Vendedor'
GO

--permisos

