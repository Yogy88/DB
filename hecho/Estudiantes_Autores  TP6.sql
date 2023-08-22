create database TP_6

use TP_6
--Creo Base de Datos

CREATE TABLE Autores (
idautor int identity (1,1) not null,
nombre nvarchar (100),
Nombre_Obra nvarchar (100),
Tematica nvarchar (100),
Nacionalidad_Autor nvarchar (100),
Editorial nvarchar (100),
Fecha_Prestamo date not null,
Fecha_Devuelve date not null,
primary key (idautor),
)

CREATE TABLE Estudiantes (
idEstudiante int identity (1,1) not null,
nombre nvarchar (100),
apellido nvarchar (100),
edad int,
carrera nvarchar (100),
Libro_Prestado nvarchar (100),
primary key (idEstudiante),
idautor int foreign key (idautor) REFERENCES Autores,
)

-- Inserto valores a las tablas

insert into Autores (nombre, Nombre_Obra, Tematica, Nacionalidad_Autor, Editorial, Fecha_Prestamo,Fecha_Devolucion) 
values ('El Gato con botas','Harry Potter y las reliquias de la muerte','Biblia','La biblia y el Calefon','Como hacerse millonario en 10 dias(para que estoy estudiando entonces?)','Segunda Guerra Mundial','Ruinas Marcianas')


insert into Estudiantes (nombre,apellido,edad,Libro_Prestado, carrera)
values ('Matias','Braga',31,'Base de Datos', 'Sistemas')

--Resuelvo las busquedas:

SELECT * FROM Estudiantes


--1)	Listar los datos de los autores 
select * from Autores

--2)	Listar nombre y edad de los estudiantes 
select nombre, edad from Estudiantes

--3)	¿Qué estudiantes pertenecen a la carrera de Informática? 
select * from Estudiantes where (carrera in ('informatica'))

--4)	Listar los nombres de los estudiantes cuyo apellido comience con la letra G? 
select * from Estudiantes where ((nombre like '%g%'))

--5)   ¿Quiénes son los autores del libro “Visual Studio Net”?, listar solamente los nombres
select * from Autores where (Nombre_Obra in ('Visual Studio Net')) 

--6)	¿Qué autores son de nacionalidad USA o Francia? 
select * from Autores where (Nacionalidad_Autor in ('EEUU') or Nacionalidad_Autor in ('frances')) 

--7)	¿Qué libros No Son del Área de Internet?
select * from Autores where   (Tematica  not like 'Internet')

--8)	¿Qué libros se prestó al Lector “Raul Valdez”?
select Libro_Prestado from Estudiantes where (nombre like'Raul') 

--9)	 Listar el nombre del estudiante de menor edad
select nombre, apellido, edad from Estudiantes  order by edad asc

--10)	 Listar los nombres de los estudiantes que se prestaron Libros de Base de Datos
select nombre, apellido from Estudiantes where (Libro_Prestado like'Organizacion de la Informacion')

--11)	 Listar los libros de editorial Alfa y Omega
select Nombre_Obra from Autores where (Editorial like 'Alfa y Omega')

--12)	 Listar los libros que pertenecen al autor Mario Benedetti
select Nombre_Obra from Autores where (nombre like 'Mario Benedetti')

--13)	 Listar los títulos de los libros que debían devolverse el 10/04/07

select Nombre_Obra from Autores where (Fecha_Devuelve = '10/04/07')

--14)	 Hallar la suma de las edades de los estudiantes

select sum (edad) as "Suma total de todas las edades" from Estudiantes

--15)	 Listar los datos de los estudiantes cuya edad es mayor al promedio
select avg (edad) as "Edad Promedio" from Estudiantes 

select * from Estudiantes where (edad >33)
