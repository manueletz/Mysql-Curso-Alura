SELECT LTRIM("   MYSQL es fácil");

SELECT LTRIM("MYSQL es fácil   ");

SELECT TRIM("  MYSQL es fácil   ");

SELECT CONCAT("MYSQL es fácil,", " no lo crees?");

SELECT UPPER("mysql es una base de datos interesante");

SELECT LOWER("MYSQL ES UNA BASE DE DATOS INTERESANTE");

SELECT SUBSTR("mysql es una base de datos interesante",1,5);

SELECT CONCAT(NOMBRE," ", DNI) FROM tabla_de_clientes;

SELECT NOMBRE, CONCAT(DIRECCION_1, ' ', BARRIO, ' ', CIUDAD, ' ', ESTADO) AS COMPLETO FROM tabla_de_clientes;