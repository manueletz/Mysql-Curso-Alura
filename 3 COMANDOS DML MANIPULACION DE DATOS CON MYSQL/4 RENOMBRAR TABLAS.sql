USE VENTAS_JUGOS;

ALTER TABLE tb_venta RENAME tb_factura;

ALTER TABLE facturas RENAME tb_factura;
ALTER TABLE clientes RENAME tb_cliente;
ALTER TABLE items_facturas RENAME tb_items_facturas;

CREATE TABLE tb_items_facturas(
NUMERO VARCHAR(5) NOT NULL,
CODIGO VARCHAR(10) NOT NULL,
CANTIDAD INT,
PRECIO FLOAT,
PRIMARY KEY (NUMERO,CODIGO)
);

ALTER TABLE tb_items_facturas ADD CONSTRAINT FK_FACTURA
FOREIGN KEY (NUMERO) REFERENCES tb_facturas(NUMERO);

ALTER TABLE tb_items_facturas ADD CONSTRAINT FK_PRODUCTO
FOREIGN KEY (CODIGO) REFERENCES tb_productos(CODIGO);

ALTER TABLE tb_factura ADD CONSTRAINT FK_ITEM_FACTURAS
FOREIGN KEY (NUMERO) REFERENCES tb_items_facturas(NUMERO);