SELECT * FROM tabla_de_clientes;

SELECT FECHA_DE_NACIMIENTO FROM tabla_de_clientes
WHERE DNI = '1471156710';

CALL edad_clientes('50534475787');

CALL edad_clientes('5648641702');

SELECT * FROM FACTURAS;

CALL evaluacion_facturas('2015-01-01');

SELECT * FROM tabla_de_productos;

/*
precio > 12 producto costoso
precio >7 y precio< 12 producto asequible
precio < 7 producto barato
*/

SELECT PRECIO_DE_LISTA FROM tabla_de_productos 
WHERE CODIGO_DEL_PRODUCTO = '1000800';

CALL precio_producto('1000801');
CALL precio_producto('1013793');
CALL precio_producto('1096818');

SELECT * FROM FACTURAS;

CALL comparacion_ventas('2015-01-01','2015-01-02');