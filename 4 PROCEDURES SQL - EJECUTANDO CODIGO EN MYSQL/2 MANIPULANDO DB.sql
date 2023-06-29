CALL manipulacion;

CALL incluir_producto;

SELECT * FROM tabla_de_productos WHERE NOMBRE_DEL_PRODUCTO LIKE 'Sabor In%';

CALL calcular_edad;

CALL incluir_producto_parametros('1000800', 'Sabor del Mar',
'700 ml', 'Naranja', 'Botella de vidrio', 2.25);

SELECT * FROM tabla_de_productos 
SELECT SABOR FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO='1078680';

CALL incluir_producto_parametros('1000801', 'Sabor del Mar',
'700 ml', 'Naranja', 'Botella de vidrio', 3.25);

SELECT * FROM tabla_de_productos;

SELECT SABOR FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = "1078680";

CALL mostrar_sabor('1101035');

CALL cantidad_facturas;