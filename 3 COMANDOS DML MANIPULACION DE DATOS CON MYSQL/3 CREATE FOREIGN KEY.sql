CREATE TABLE tb_venta(
NUMERO VARCHAR(5) NOT NULL,
FECHA DATE NULL,
DNI VARCHAR(11) NOT NULL,
MATRICULA VARCHAR(5) NOT NULL,
IMPUESTO FLOAT,
PRIMARY KEY(NUMERO)
);

ALTER TABLE tb_venta ADD CONSTRAINT FK_CLIENTE
FOREIGN KEY (DNI) REFERENCES tb_cliente(DNI);

ALTER TABLE tb_venta ADD CONSTRAINT FK_VENDEDOR
FOREIGN KEY (MATRICULA) REFERENCES tb_vendedor(MATRICULA);

CREATE TABLE items_facturas
(NUMERO VARCHAR(5) NOT NULL,
CODIGO VARCHAR(10) NOT NULL,
CANTIDAD INT,
PRECIO FLOAT,
PRIMARY KEY (NUMERO, CODIGO));

ALTER TABLE items_facturas ADD CONSTRAINT FK_FACTURAS
FOREIGN KEY (NUMERO)
REFERENCES facturas(NUMERO);