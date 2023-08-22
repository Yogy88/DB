create database VideoClub

use VideoClub

create table Clientes
(
Id_Cliente numeric (18,0) primary key not null,
Nombre nvarchar(50),
Direccion nvarchar(50)

)

create table Soportes
(
Id_Soporte numeric (18,0) primary key not null,
Descripcion nvarchar(50)
)

create table Peliculas
(
Id_Pelicula numeric (18,0) primary key not null,
Id_Soporte numeric (18,0),
FOREIGN KEY (Id_Soporte) REFERENCES Soportes (Id_Soporte),
Nombre nvarchar(50)
)

create table Alquileres
(
Id_Alquiler numeric (18,0) primary key not null,
Fecha_Alquiler smalldatetime,
Fecha_Devolucion smalldatetime,
Cantidad numeric(18,0),
Valor money,
Id_Cliente numeric (18,0),
FOREIGN KEY (Id_Cliente) REFERENCES Clientes (Id_Cliente),
Id_Pelicula numeric (18,0),
FOREIGN KEY (Id_Pelicula) REFERENCES Peliculas (Id_Pelicula)
)

create procedure SP_ABM_Alquileres
(
@Id_Alquiler numeric(18,0),
@Fecha_Alquiler smalldatetime,
@Fecha_Devolucion smalldatetime,
@Cantidad numeric (18,0),
@Valor money,
@Id_Cliente numeric (18,0),
@Id_Pelicula numeric (18,0),
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
	    BEGIN
		insert into Alquileres(Id_Alquiler,Fecha_Alquiler,Fecha_Devolucion,Cantidad,Valor,Id_Cliente,Id_Pelicula)
		values (@Id_Alquiler,@Fecha_Alquiler,@Fecha_Devolucion,@Cantidad,@Valor,@Id_Cliente,@Id_Pelicula)
		set @Id=@@identity
		SET @Error='Error'
		END
			ELSE IF (@OPERACION='B')
	  BEGIN
			DELETE FROM Alquileres WHERE @Id_Alquiler=Id_Alquiler
	  END
			ELSE IF(@OPERACION='M')
	  BEGIN
			UPDATE Alquileres SET @Fecha_Alquiler=Fecha_Alquiler,@Fecha_Devolucion=Fecha_Devolucion,
			@Cantidad=Cantidad,@Valor=Valor,@Id_Cliente=Id_Cliente,@Id_Pelicula=Id_Pelicula
			WHERE @Id_Alquiler=Id_Alquiler;
	  END
		COMMIT TRAN
	end try
	begin catch-------------------
		SET @Id=0
		SET @Error= ERROR_MESSAGE() + ' lINEA error: ' +  CAST(ERROR_NUMBER() AS NVARCHAR(30))		
		ROLLBACK TRAN
	end catch----------------
end

exec SP_ABM_Alquileres 
@OPERACION='A',
@Id_Alquiler=1,
@Fecha_Alquiler= ,
@Fecha_Devolucion=,
@Cantidad=2,
@Valor=200,
@Id_Cliente=1,
@Id_Pelicula=7

exec SP_ABM_Alquileres 
@OPERACION='M',
@Id_Alquiler=1,
@Fecha_Devolucion=,
@Cantidad=2,
@Valor=200,
@Id_Cliente=1,
@Id_Pelicula=7

exec SP_ABM_Alquileres 
@OPERACION='B',
@Id_Alquiler=1

Insert into Clientes (Id_Cliente,Nombre,Direccion)
values ('1','Diego','bilungurst 200'),
('2','Gonzalo','Av La Plata 490'),
('3','Marcela','Curapaligue 589'),
('4','Veronica','Posadas 1234'),
('5','Osvaldo','Estados Unidos 3421'),
('6','Daniel','Bulnes 421')

Insert into Soportes (Id_Soporte,Descripcion)
values ('1','DVD'),
('2','Blu-ray'),
('3','VHS'),
('4','CD'),
('5','LaserDisk')

Insert into Peliculas (Id_Pelicula,Id_Soporte,Nombre)
values ('1','2','Transformers'),
('2','1','Esperando La Carroza'),
('3','1','La Caida'),
('4','1','Get Smart'),
('5','1','El Hacker'),
('6','1','Que paso ayer'),
('7','1','Star Wars I'),
('8','1','Star Wars II'),
('9','3','Star Wars III'),
('10','1','El Padrino')

