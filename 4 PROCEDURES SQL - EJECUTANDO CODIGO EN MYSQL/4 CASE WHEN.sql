SELECT DISTINCT SABOR FROM tabla_de_productos;



/* 
Maracuyá Rico
Limón Rico
Frutilla Rico
Uva Rico
Sandilla Normal
Mango Normal
Los demás Comunes
*/

SELECT * FROM tabla_de_productos;

SELECT SABOR FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = '1002767';

CALL define_sabor('1002767');

CALL define_sabor('544931');

CALL define_sabor('243083');

CALL define_sabor('1096818');

SELECT SABOR, CODIGO_DEL_PRODUCTO FROM tabla_de_productos;

CALL define_sabor_con_error('812829');

DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `precio_producto_case`(vcodigo VARCHAR(20))
BEGIN
DECLARE vresultado VARCHAR(40);
DECLARE vprecio FLOAT;
SELECT PRECIO_DE_LISTA INTO vprecio FROM tabla_de_productos 
WHERE CODIGO_DEL_PRODUCTO = vcodigo;
CASE 
WHEN vprecio >= 12 THEN SET vresultado = 'Producto costoso.';
WHEN vprecio >= 7 AND vprecio < 12 THEN SET vresultado = 'Producto asequible';
WHEN vprecio < 7 THEN SET vresultado = 'Producto barato';
END CASE;
SELECT vresultado;
END
$$

CALL precio_producto_case('1000801');
CALL precio_producto_case('1013793');
CALL precio_producto_case('1096818');