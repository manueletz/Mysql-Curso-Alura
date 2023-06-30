SELECT 
f_cliente_aleatorio() AS CLIENTE,
f_producto_aleatorio() AS PRODUCTO,
f_vendedor_aleatorio() AS VENDEDOR;

SELECT MAX(NUMERO) + 1 FROM facturas;

CALL sp_venta('20210619', 15, 100);