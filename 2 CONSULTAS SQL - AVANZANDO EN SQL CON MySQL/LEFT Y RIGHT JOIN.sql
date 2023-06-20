SELECT count(*) FROM tabla_de_clientes;

SELECT DISTINCT B.DNI, B.NOMBRE, B.CIUDAD, A.DNI FROM facturas as A
RIGHT JOIN
tabla_de_clientes B
ON A.DNI = B.DNI
WHERE A.DNI IS NULL;

