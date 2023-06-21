SELECT * FROM tabla_de_vendedores;

SELECT * FROM facturas;

SELECT * FROM tabla_de_vendedores A
INNER JOIN 
facturas B 
ON A.MATRICULA = B.MATRICULA;

SELECT A.NOMBRE, B.MATRICULA, COUNT(*)  FROM tabla_de_vendedores A
INNER JOIN 
facturas B 
ON A.MATRICULA = B.MATRICULA
GROUP BY A.NOMBRE, B.MATRICULA;

SELECT A.NOMBRE, B.MATRICULA, COUNT(*)  
FROM tabla_de_vendedores A, facturas B 
WHERE A.MATRICULA = B.MATRICULA
GROUP BY A.NOMBRE, B.MATRICULA;

SELECT * FROM FACTURAS;
SELECT * FROM items_facturas;

SELECT YEAR(F.FECHA_VENTA), 
ROUND(SUM(I.CANTIDAD * I.PRECIO),2) VENTAS
FROM facturas F
INNER JOIN items_facturas I
ON F.NUMERO = I.NUMERO
GROUP BY YEAR(F.FECHA_VENTA)