-- PRIVILEGIOS DE DBA A TODO PERO DESDE EL LOCALHOST
CREATE USER 'admin02'@'localhost' IDENTIFIED BY 'admin02';

GRANT ALL PRIVILEGES ON *.* TO 'admin02'@'localhost' WITH GRANT OPTION;

-- PRIVILEGIOS RESTRINGIDOS
CREATE USER 'user02'@'localhost' IDENTIFIED BY 'user02';

GRANT SELECT, INSERT, UPDATE, DELETE,
CREATE TEMPORARY TABLES, LOCK TABLES,
EXECUTE ON *.* TO 'user02'@'localhost';

-- PRIVILEGIOS RESTRINGIDOS BUSINESS INTELLIGENCE
CREATE USER 'read01'@'localhost' IDENTIFIED BY 'read01';

GRANT SELECT, EXECUTE ON *.* TO 'read01'@'localhost';

-- PRIVILEGIOS RESTRINGIDOS PARA HACER ENCARGADO DE BACKUP
CREATE USER 'back01'@'localhost' IDENTIFIED BY 'back01';

GRANT SELECT, RELOAD, LOCK TABLES, REPLICATION CLIENT ON *.* TO 'back01'@'localhost';

-- PRIVILEGIOS DE USUARIO GENERICO PARA QUE SE CONECTE DESDE CUALQUIER PARTE
CREATE USER 'admingeneric02'@'%' IDENTIFIED BY 'admingeneric02';

GRANT ALL PRIVILEGES ON *.* TO 'admingeneric02'@'%' WITH GRANT OPTION;

-- PRIVILEGIOS RESTRINGIDOS PARA SOLO UN SCHEMA
CREATE USER 'user04'@'%' IDENTIFIED BY 'user04';

GRANT SELECT, INSERT, UPDATE, DELETE, 
CREATE TEMPORARY TABLES, LOCK TABLES,
EXECUTE ON jugos_ventas.* TO 'user04'@'%';


-- PRIVILEGIOS RESTRINGIDOS PARA SOLO UN SCHEMA Y TABLA
CREATE USER 'user05'@'%' IDENTIFIED BY 'user05';

GRANT SELECT, INSERT, UPDATE, DELETE ON jugos_ventas.facturas TO 'user05'@'%';

GRANT SELECT ON jugos_ventas.tabla_de_vendedores TO 'user05'@'%';

-- VER TODOS LOS PRIVILEGIOS DE LOS USUARIOS
SELECT * FROM mysql.user;

SHOW GRANTS FOR 'user02'@'localhost';

-- REVOCAR PRIVILEGIOS
REVOKE ALL PRIVILEGES, GRANT OPTION FROM 'user02'@'localhost';

-- PROBAR QUE EL USUARIO user05 no puede ejecutar insert
INSERT INTO `jugos_ventas`.`tabla_de_vendedores`
(`MATRICULA`,
`NOMBRE`,
`PORCENTAJE_COMISION`,
`FECHA_ADMISION`,
`VACACIONES`,
`BARRIO`)
VALUES
('256',
'Jose García',
0.15,
'20190303',
0,
'Oblatos');
