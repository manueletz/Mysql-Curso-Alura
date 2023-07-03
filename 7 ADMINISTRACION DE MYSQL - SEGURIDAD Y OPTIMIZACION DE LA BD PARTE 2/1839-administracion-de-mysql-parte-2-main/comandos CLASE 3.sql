/*
En este notebook encontrarás todos los comandos SQL que ejecutaremos durante el desarrollo del entrenamiento. 

¡Te deseo éxito en tus estudios!
*/


/* PROYECTO DEL AULA ANTERIOR 1*/


-- cost 3.75
SELECT A.CODIGO_DEL_PRODUCTO FROM tabla_de_productos A;

-- cost 60654.92
SELECT A.CODIGO_DEL_PRODUCTO, C.CANTIDAD FROM tabla_de_productos A 
INNER JOIN items_facturas C ON A.CODIGO_DEL_PRODUCTO = C.CODIGO_DEL_PRODUCTO;

-- cost 211939.80
SELECT A.CODIGO_DEL_PRODUCTO, YEAR(B.FECHA_VENTA) AS ANO,C.CANTIDAD FROM tabla_de_productos A 
INNER JOIN items_facturas C ON A.CODIGO_DEL_PRODUCTO = C.CODIGO_DEL_PRODUCTO 
INNER JOIN facturas B ON C.NUMERO = B.NUMERO;

-- cost 211939.80
SELECT A.CODIGO_DEL_PRODUCTO, YEAR(B.FECHA_VENTA) AS ANO, SUM(C.CANTIDAD) AS CANTIDAD FROM tabla_de_productos A 
INNER JOIN items_facturas C ON A.CODIGO_DEL_PRODUCTO = C.CODIGO_DEL_PRODUCTO 
INNER JOIN facturas B ON C.NUMERO = B.NUMERO 
GROUP BY A.CODIGO_DEL_PRODUCTO, YEAR(B.FECHA_VENTA) 
ORDER BY A.CODIGO_DEL_PRODUCTO, YEAR(B.FECHA_VENTA);


# Los siguientes comandos se ejecutan en mysql desde el símbolo del sistema 

mysql> EXECUTE SELECT A.CODIGO_DEL_PRODUCTO FROM tabla_de_productos A;

mysql> EXECUTE FORMAT=JSON SELECT A.CODIGO_DEL_PRODUCTO FROM tabla_de_productos A \G;

mysql> EXECUTE FORMAT=JSON SELECT A.CODIGO_DEL_PRODUCTO, C.CANTIDAD FROM tabla_de_productos A INNER JOIN items_facturas C ON A.CODIGO_DEL_PRODUCTO = C.CODIGO_DEL_PRODUCTO \G;

mysql> EXECUTE FORMAT=JSON SELECT A.CODIGO_DEL_PRODUCTO, YEAR(B.FECHA_VENTA) AS ANO,C.CANTIDAD FROM tabla_de_productos A INNER JOIN items_facturas C ON A.CODIGO_DEL_PRODUCTO = C.CODIGO_DEL_PRODUCTO INNER JOIN facturas B ON C.NUMERO = B.NUMERO \G;

mysql> EXECUTE FORMAT=JSON SELECT A.CODIGO_DEL_PRODUCTO, YEAR(B.FECHA_VENTA) AS ANO, SUM(C.CANTIDAD) AS CANTIDAD FROM tabla_de_productos A INNER JOIN items_facturas C ON A.CODIGO_DEL_PRODUCTO = C.CODIGO_DEL_PRODUCTO INNER JOIN facturas B ON C.NUMERO = B.NUMERO GROUP BY A.CODIGO_DEL_PRODUCTO, YEAR(B.FECHA_VENTA) ORDER BY A.CODIGO_DEL_PRODUCTO, YEAR(B.FECHA_VENTA) \G;


/* PROYECTO DEL AULA ANTERIOR 2*/


# Los siguientes comandos se ejecutan en mysql desde el símbolo del sistema 

mysql> SELECT * FROM facturas WHERE FECHA_VENTA='20170101';

mysql> EXPLAIN FORMAT=JSON SELECT * FROM FACTURAS WHERE FECHA_VENTA='20170101' \G; 

mysql> ALTER TABLE facturas ADD INDEX(FECHA_VENTA);

mysql> EXPLAIN FORMAT=JSON SELECT * FROM FACTURAS WHERE FECHA_VENTA='20170101' \G; 

mysql> SELECT * FROM facturas WHERE FECHA_VENTA='20170101';

mysql> ALTER TABLE FACTURAS DROP INDEX FECHA_VENTA;

mysql> EXPLAIN FORMAT=JSON SELECT * FROM FACTURAS WHERE FECHA_VENTA='20170101' \G; 


/* PROYECTO DEL AULA ANTERIOR 3*/


-- cost 3.75
SELECT A.CODIGO_DEL_PRODUCTO FROM tabla_de_productos1 A;

-- cost 747020.43
SELECT A.CODIGO_DEL_PRODUCTO, C.CANTIDAD FROM tabla_de_productos1 A 
INNER JOIN items_facturas1 C ON A.CODIGO_DEL_PRODUCTO = C.CODIGO_DEL_PRODUCTO;

-- cost 6 billones...
SELECT A.CODIGO_DEL_PRODUCTO, YEAR(B.FECHA_VENTA) AS ANO,C.CANTIDAD FROM tabla_de_productos1 A 
INNER JOIN items_facturas1 C ON A.CODIGO_DEL_PRODUCTO = C.CODIGO_DEL_PRODUCTO INNER JOIN facturas1 B ON C.NUMERO = B.NUMERO;

-- cost 6 billones...
SELECT A.CODIGO_DEL_PRODUCTO, YEAR(B.FECHA_VENTA) AS ANO, SUM(C.CANTIDAD) AS CANTIDAD FROM tabla_de_productos1
A INNER JOIN items_facturas1 C ON A.CODIGO_DEL_PRODUCTO = C.CODIGO_DEL_PRODUCTO INNER JOIN facturas1 B ON C.NUMERO = B.NUMERO 
GROUP BY A.CODIGO_DEL_PRODUCTO, YEAR(B.FECHA_VENTA) ORDER BY A.CODIGO_DEL_PRODUCTO, YEAR(B.FECHA_VENTA);


CREATE TABLE `facturas1` (
  `DNI` varchar(11) NOT NULL,
  `MATRICULA` varchar(5) NOT NULL,
  `FECHA_VENTA` date DEFAULT NULL,
  `NUMERO` int NOT NULL,
  `IMPUESTO` float NOT NULL  
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `items_facturas1` (
  `NUMERO` int NOT NULL,
  `CODIGO_DEL_PRODUCTO` varchar(10) NOT NULL,
  `CANTIDAD` int NOT NULL,
  `PRECIO` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `tabla_de_productos1` (
  `CODIGO_DEL_PRODUCTO` varchar(10) NOT NULL,
  `NOMBRE_DEL_PRODUCTO` varchar(50) DEFAULT NULL,
  `TAMANO` varchar(10) DEFAULT NULL,
  `SABOR` varchar(20) DEFAULT NULL,
  `ENVASE` varchar(20) DEFAULT NULL,
  `PRECIO_DE_LISTA` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO facturas1
SELECT * FROM facturas;

INSERT INTO items_facturas1
SELECT * FROM items_facturas;

INSERT INTO tabla_de_productos1
SELECT * FROM tabla_de_productos;