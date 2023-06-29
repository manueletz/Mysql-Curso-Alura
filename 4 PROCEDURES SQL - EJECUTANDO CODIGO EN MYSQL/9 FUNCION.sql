-- Mysql por defecto no habilita crear funciones se debe habilitar el siguiente parametro
SET GLOBAL log_bin_trust_function_creators = 1;

SELECT f_define_sabor('Maracuyá');

SELECT NOMBRE_DEL_PRODUCTO, SABOR, f_define_sabor(SABOR) AS TIPO FROM tabla_de_productos;

SELECT NOMBRE_DEL_PRODUCTO, SABOR FROM tabla_de_productos
WHERE f_define_sabor(SABOR) = 'Muy Rico';

DELIMITER $$
CREATE FUNCTION `f_numero_facturas`(fecha DATE) 
RETURNS INTEGER
BEGIN
DECLARE n_facturas INT;
SELECT COUNT(*) INTO n_facturas FROM facturas WHERE FECHA_VENTA = fecha;
RETURN n_facturas;
END $$

SELECT f_numero_facturas('2015-01-01') AS RESULTADO;