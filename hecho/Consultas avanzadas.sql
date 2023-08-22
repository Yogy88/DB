Create Data CONSULTAS_AVANZADAS

Use CONSULTAS_AVANZADAS

Create Table OPERACIONES (
IDOPERACION Int Identity (1,1) NOT NULL,
NUM_FACTURA Int,
COD_FACTURA Int,
FECHA Date,
NOMBRE_PRODUCTO Nvarchar (50),
NOMBRE_CLIENTE Nvarchar  (50),
APELLIDO_CLIENTE nvarchar (50),
PROVEEDOR NVARCHAR (50),
PRECIO Int,
SUB_TOTAL Int,
TOTAL int
)

--Crear vistas para las consultas del TP de consultas Avanzadas 
--agregarle un alias a cada campo y filtrar que la cantidad de registros que retorne la vista no sean mayores a 100.
DROP VIEW V_OPERACIONES

CREATE VIEW V_OPERACIONES
AS
SELECT IDOPERACION, NUM_FACTURA,COD_FACTURA,FECHA,NOMBRE_PRODUCTO,NOMBRE_CLIENTE,APELLIDO_CLIENTE,PROVEEDOR,PRECIO,SUB_TOTAL,TOTAL
FROM OPERACIONES;

SELECT TOP (100) NUM_FACTURA AS 'NUMERO DE FACTURAS',COD_FACTURA AS 'CODIGOS', FECHA AS 'CALENDARIO',NOMBRE_PRODUCTO AS 'IDENTIFICACION', 
NOMBRE_CLIENTE AS 'CLIENTES',APELLIDO_CLIENTE AS 'APELLIDOS', PROVEEDOR AS 'ABASTECIMIENT',
PRECIO AS 'INGRESO',SUB_TOTAL AS 'SUB', TOTAL AS 'ABSOLUTO' FROM V_OPERACIONES 


--Ejercicios: Tomar una base de datos que tengamos creada y generar los índices necesarios. Explicar el motivo de la creación.

CREATE CLUSTERED INDEX CLIENTES_NOMBRE
ON OPERACIONES ( TOTAL)

DROP INDEX CLIENTES_NOMBRE ON OPERACIONES

SELECT * FROM OPERACIONES

--MOTIVO PARA EL INDICE: FACILITAR LA VISUALIZACION ORDENADA DE ACUERDO A LOS PRINCIPALES CLIENTEN QUE REPRESENTARON UNA MAYOR FACTURACION PARA LA EMPRESA



DELETE OPERACIONES  WHERE IDOPERACION = 16

INSERT INTO OPERACIONES (NUM_FACTURA,COD_FACTURA,FECHA,NOMBRE_PRODUCTO,NOMBRE_CLIENTE,APELLIDO_CLIENTE,PROVEEDOR,PRECIO,SUB_TOTAL,TOTAL) VALUES

(15,310,'2017-05-15','PERSONAS','NARCO','TRAFICO','ESTADO NACIONAL',8274,8274,8274)

--a)	Listar el número de factura, nombre del cliente, apellido del cliente, nombre del producto y Subtotal del detalle de la factura.

SELECT NUM_FACTURA,NOMBRE_CLIENTE,APELLIDO_CLIENTE,NOMBRE_PRODUCTO,SUB_TOTAL FROM OPERACIONES

--b)	Listar el número de factura, nombre del cliente, apellido del cliente, nombre del producto y Total de la factura.

SELECT NUM_FACTURA,NOMBRE_CLIENTE,APELLIDO_CLIENTE,NOMBRE_PRODUCTO,TOTAL FROM OPERACIONES

--c)	Mostrar el producto de mayor y menor valor en diferentes consultas.

SELECT * FROM OPERACIONES WHERE PRECIO > 25000

SELECT * FROM OPERACIONES WHERE PRECIO < 200

--d)	Mostrar el nombre del producto, proveedor  y precio de mayor valor.

SELECT NOMBRE_PRODUCTO, PROVEEDOR FROM OPERACIONES WHERE PRECIO >25000

--e)	Mostrar el nombre del producto, proveedor y precio de menor valor.

SELECT NOMBRE_PRODUCTO, PROVEEDOR FROM OPERACIONES WHERE PRECIO <200

--f)	Mostrar el valor promedio de todos los productos que tengo registrados.

SELECT AVG (PRECIO) AS PROMEDIO_DE_PRECIOS FROM OPERACIONES

--g)	Mostrar el importe promedio de facturas realizadas en el 2015.

SELECT AVG (PRECIO) AS PROMEDIO_2015 FROM OPERACIONES WHERE FECHA < '2016'

--h)	Mostrar el total de las facturas siempre y cuando la suma del detalle supere los $300.

SELECT TOTAL FROM OPERACIONES WHERE TOTAL >300

--i)	Mostrar el código de factura, total de las facturas siempre y cuando la suma del detalle supere los $300.

SELECT COD_FACTURA TOTAL FROM OPERACIONES WHERE TOTAL >300