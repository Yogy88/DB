--La empresa “FRAVEGA” vende productos a varios clientes. Se necesita conocer los datos personales de los clientes (nombre, apellidos, DNI, dirección y fecha de nacimiento). Cada producto tiene un nombre, un código y un precio unitario. 
--Un cliente puede comprar varios productos a la empresa, y un mismo producto puede ser comprado por varios clientes. Tener en cuenta que solo se registran solicitudes de compras sin facturación
--Los productos son suministrados por diferentes proveedores. Se debe tener en cuenta que un producto sólo puede ser suministrado por un proveedor, y que un proveedor puede suministrar diferentes productos. De cada proveedor se desea conocer el Código, nombre y dirección”. 
--A partir del enunciado se desea:

--1)	Realizar el DER (diagrama entidad-relación).

--solicitudes de compras

--	ID_Solicitud (primary key)
--	ID_cliente (foreign key)

--	Clientes
--		i.	ID_Cliente (primary key)
--		ii.	Nombre
--		iii.	Apellido
--		iv.	DNI
--		v.	Direccion
--		vi.	Fecha de nacimiento
--		vii.	ID_Producto (Foreign key)

--		Productos

--			1.	ID_Producto(PRIMARY KEY)
--			2.	Nombre
--			3.	Codigo_Producto 
--			4.	Precio Unitario
--			5.	ID_Proveedor (Foreign key)

--		Proveedores
--			1.	ID_Proveedor (primari key)
--			2.	Codigo_Proveedor
--			3.	Nombre
--			4.	Direccion

--2)	Crear la base de datos “FRAVEGA” y sus respectivas tablas, utilizando el analizador de consultas y teniendo en cuenta lo siguiente:

--a)	Claves Primarias y foráneas.
--b)	Id de cada tabla con enteros auto numéricos obligatorios.
--c)	Tipo de dato establecido, según su descripción.


--Create database FRAVEGA

USE  FRAVEGA

CREATE TABLE Solicitudes_compra(
	IDSolici_comp INT IDENTITY (1,1),
	IDCliente INT,
	PRIMARY KEY (IDSolici_comp),
	FOREIGN KEY (IDCliente) REFERENCES Clientes (IDCliente)

)

CREATE TABLE Clientes (
	IDCliente INT IDENTITY (1,1),
	Nombre NVARCHAR (100),
	Apellido Nvarchar (100),
	DNI int,
	Direccion Nvarchar (100),
	Fecha_nacimiento date,
	IDProducto int,
	IDProveedor int,
	Foreign Key (IDProducto) References Productos (IDProducto),
Foreign Key (IDProveedor) References Proveedores (IDProveedor),
	PRIMARY KEY (IDCliente)

)

Create Table Productos(
	IDProducto int identity (1,1),
	Nombre Nvarchar,
	Codigo_Producto int,
	Precio_unitario int,
	IDProveedor int,
	Foreign Key (IDProveedor) References Proveedores (IDProveedor),
	Primary key (IDProducto)

)

Create Table Proveedores(
	IDProveedor int identity,
	Codigo_Proveedor int,
	Nombre Nvarchar (100),
	Direccion Nvarchar (100),
	Primary key (IDProveedor)
)

--Alter Table Solicitudes_compra 
--ADD
--FOREIGN KEY (IDCliente) REFERENCES Clientes (IDCliente)

--Alter Table Clientes
--ADD
--Foreign Key (IDProducto) References Productos (IDProducto),
--Foreign Key (IDProveedor) References Proveedores (IDProveedor)

--Alter Table Productos 
--ADD
--Foreign Key (IDProveedor) References Proveedores (IDProveedor)


--3)	Insertar 10 registros en cada una de las tablas teniendo en cuenta todas las restricciones. 

Insert into Clientes (Nombre,Apellido,DNI,Direccion,Fecha_nacimiento) 
	values ('Julieta','Venegas',345323,'Siempreviva 585','23/09/1750')

Insert into Clientes (Nombre,Apellido,DNI,Direccion,Fecha_nacimiento) 
	values (^'Pablo','Charcas',345323,'Lebreton 585','08/10/1858')

--4)	Guardar todos los Scripts de la base de datos realizados.
--5)	Crear una nueva base de datos llamada “GARBARINO” y sus respectivas  tablas, utilizando el entorno gráfico del SQL. Server Management Studio.
--6)	Borrar la base de datos “GARBARINO”
Use GARBARINO
Drop GARBARINO
--7)	Borrar todos los registros de los clientes.
Use FRAVEGA
delete Clientes
--8)	Borrar todos los productos cuyo importe sea mayor a $100.
Delete * from Productos Where (Precio_unitario>100)
--9)	Actualizar el nombre de los proveedores con el Id de Proveedor “2”.
Update Proveedores set Nombre Where (IDProveedor=2)
--10)	Obtener los siguientes datos:
--a)	Todos los registros de los clientes.
Select * from Clientes
--b)	Nombre y Apellido de los clientes ordenados por DNI de manera ascendente.
Select Nombre, Apellido from Clientes order by DNI
--c)	Cantidad de clientes registrados.
Select Count (IDCliente) from Clientes
--11)	Agregar Un campo “Fecha_Registro” en la tabla de clientes con un valor de fecha predeterminado.
Alter table Clientes
ADD
Fecha_Registro date
--12)	Eliminar El campo “Direccion” en la tabla de clientes.
Alter table Clientes
Drop Column Direccion
--13)	Eliminar la tabla “Sol_Compras” (tener en cuenta sacar la restricción con anterioridad).
Drop table Solicitudes_compra