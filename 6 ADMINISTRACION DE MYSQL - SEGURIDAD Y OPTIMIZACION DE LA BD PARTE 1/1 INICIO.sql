SHOW STATUS;

SHOW GLOBAL STATUS LIKE 'Created_tmp_disk_tables';

SHOW GLOBAL STATUS LIKE 'Created_tmp_tables';

SHOW GLOBAL VARIABLES LIKE 'tmp_table_size';

SET GLOBAL tmp_table_size = 69206016;

CREATE TABLE df_table (ID INT, NOMBRE VARCHAR(100));

ALTER TABLE df_table ENGINE = MyISAM; 

CREATE TABLE df_table1 (ID INT, NOMBRE VARCHAR(100)) ENGINE = MEMORY; 

SHOW ENGINES;

CREATE DATABASE base;

-- Ver el directorio donde se guarda la base de datos\
-- ver datadir
SHOW VARIABLES WHERE Variable_Name LIKE '%dir';

DROP DATABASE BASE;