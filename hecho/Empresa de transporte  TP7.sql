create database TP_7

use TP_7


	Create table Paquetes (
	id_paquete int identity (1,1) not null,
	codigo_paquete nvarchar (100),
	descripcion_destinatario nvarchar (100),
	primary key (id_paquete),
	fecha_salida date,
	fecha_entrega date
	)

	Create table Provincias (
	id_provincia int identity (1,1) not null,
	codigo_provincia nvarchar (100),
	nombre_provincia nvarchar (100),
	primary key (id_provincia),
	id_paquete int,
	foreign key (id_paquete) references Paquetes (id_paquete)
	)

	Create table camiones (
	id_camion int identity (1,1) not null,
	matricula nvarchar (100),
	modelo nvarchar (100),
	tipo nvarchar (100),
	potencia int,
	primary key (id_camion)
	)

	create table Camionero (
	id_camionero int identity (1,1) not null,
	DNI int,
	nombre_camionero nvarchar (100),
	telefono int,
	direccion_camionero nvarchar (100),
	salario money,
	ciudad_camionero nvarchar (100),
	id_paquete int,
	id_camion int,
	primary key (id_camionero),
	Foreign key (id_paquete) References Paquetes (id_paquete),
	foreign key (id_camion) references camiones (id_camion)
	)

	



	--insertar eliminar y modificar un registro de cada tabla
	insert into Paquetes (codigo_paquete, descripcion_destinatario, fecha_salida, fecha_entrega) values ('GB_3465_er', 'fravega', '23/07/1855', '23/12/1986')
	insert into camiones (matricula,modelo,tipo,potencia) values ('AFD-234','Scania','Volcador','1300')
	insert into Camionero (DNI, nombre_camionero, telefono, direccion_camionero, salario, ciudad_camionero) values ('3358323','Roberto','45364343','avenida siempre viva 564','$126','Posadas')
	insert into Provincias (codigo_provincia, nombre_provincia) values ('3424','Cordoba')

	--agregar un campo "kilometros" en tabla paquetes
	alter table Paquetes
	add
	kilometros numeric (18,0)

--	Consultas:
--Todos los paquetes cuya provincia de destino contenga el texto ‘bu’.

Select codigo_paquete, descripcion_destinatario from Paquetes INNER JOIN Provincias on nombre_provincia like ('%bu%')

--La suma total de todos los salarios de los camioneros cuyo valor este entre 25000 y 30000.

Select sum (salario) as "Suma total de todos los salarios de los camioneros" from Camionero where salario between (25000 & 30000)

--La cantidad de paquetes entregados en el año 2016 en las provincias de Buenos Aires, Córdoba y San Luis.
 
Select count (*) from Paquetes Inner Join Provincias on fecha_entrega in ('2016') and (nombre_provincia in ('Buenos Aires') or nombre_provincia in ('Cordoba') or nombre_provincia in ('San Luis'))

--Nombre, teléfono, dirección y salario de camioneros que manejaron vehículos con más de 200 caballos de fuerza.

Select nombre_camionero, telefono,salario from Camionero Inner Join camiones on potencia > 200

--Obtener Nombre del camionero, Matricula del camión, Descripción de la provincia, Km recorridos y gasto realizado. (el valor del km es de $10)

Select nombre_camionero, matricula, nombre_provincia, codigo_provincia, sum (kilometros), sum (kilometros)*10 from Camionero Inner Join Provincias Inner Join camiones Inner Join Paquetes

	--Funciones
	-- 1) Crear Funcion que segun el id de paquete que le envie, me muestre la cantidad de dias que tardo


 select id_paquete, datediff (day, fecha_salida, fecha_entrega) as cantidad_dias from Paquetes

 --2)	Crear una función que me retorne la cantidad de dinero que gasto un camión en un recorrido. Se envía por parámetro el valor del km en $ y  la cantidad de kilómetros recorridos.

 select kilometros as Kilometraje_Recorrido, (kilometros * 10) as Gasto_Realizado from Paquetes