SELECT COUNT(*) FROM clientes;

SELECT * FROM clientes;

SELECT * FROM clientes LIMIT 16,1;

SELECT * FROM clientes LIMIT 0,1;

SELECT * FROM clientes LIMIT 1,1;

SELECT f_cliente_aleatorio() AS CLIENTE;

SELECT f_producto_aleatorio() AS PRODUCTO;

SELECT f_vendedor_aleatorio() AS VENDEDOR;
