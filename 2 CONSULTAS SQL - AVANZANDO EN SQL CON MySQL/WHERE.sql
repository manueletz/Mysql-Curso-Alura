SELECT * FROM tabla_de_productos;

SELECT * FROM tabla_de_productos WHERE SABOR = 'MANGO' AND TAMANO = '470 ml';

SELECT * FROM tabla_de_productos WHERE  NOT (SABOR = 'MANGO') or TAMANO = '470 ml';

SELECT * FROM tabla_de_productos WHERE  NOT (SABOR = 'MANGO' AND TAMANO = '470 ml');

SELECT * FROM tabla_de_productos WHERE  SABOR = 'MANGO' AND NOT (TAMANO = '470 ml');

SELECT * FROM tabla_de_productos WHERE  SABOR IN ('MANGO', 'UVA');

SELECT * FROM tabla_de_productos WHERE  SABOR = 'MANGO' OR SABOR = 'UVA';

SELECT * FROM tabla_de_clientes WHERE CIUDAD IN ('ciudad de mexico' , 'Guadalajar');

SELECT * FROM tabla_de_clientes WHERE CIUDAD IN ('ciudad de mexico' , 'Guadalajar')
AND EDAD>21;

SELECT * FROM tabla_de_clientes WHERE CIUDAD IN ('ciudad de mexico' , 'Guadalajar')
AND (EDAD BETWEEN 20 AND 25);