-- COST 8849.05
SELECT * FROM facturas WHERE FECHA_VENTA='20170101';

-- COST 25.90
ALTER TABLE FACTURAS ADD INDEX(FECHA_VENTA);

-- COST 8645.35
SELECT * FROM facturas1 WHERE FECHA_VENTA='20170101';