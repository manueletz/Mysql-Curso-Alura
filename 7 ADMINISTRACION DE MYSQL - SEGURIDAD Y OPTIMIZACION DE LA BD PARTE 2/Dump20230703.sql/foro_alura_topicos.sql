-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: foro_alura
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `topicos`
--

DROP TABLE IF EXISTS `topicos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topicos` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `mensaje` varchar(500) NOT NULL,
  `fecha_creacion` date NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `id_usuario` bigint DEFAULT NULL,
  `id_curso` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `titulo` (`titulo`),
  UNIQUE KEY `mensaje` (`mensaje`),
  KEY `id_usuario` (`id_usuario`),
  KEY `id_curso` (`id_curso`),
  CONSTRAINT `topicos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `topicos_ibfk_2` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topicos`
--

LOCK TABLES `topicos` WRITE;
/*!40000 ALTER TABLE `topicos` DISABLE KEYS */;
INSERT INTO `topicos` VALUES (1,'PROBLEMAS CON SQL','NO PUEDO CREAR UN LLAVE FORANEA','2023-06-01','NO_RESPONDIDO',1,1),(2,'PROBLEMAS CON JAVA','NO PUEDO CREAR USAR ENUM','2023-06-02','NO_RESPONDIDO',2,2),(3,'PROBLEMAS CON PYTHON','NO PUEDO CREAR UNA LISTA','2023-06-03','NO_RESPONDIDO',3,3),(4,'PROBLEMAS CON SPRING BOOT','NO PUEDO CREAR USAR JPA','2023-06-04','NO_RESPONDIDO',4,4),(5,'PROBLEMAS CON HTML','NO PUEDO CREAR UN DIV','2023-06-05','NO_RESPONDIDO',5,5),(6,'problemas con SQL7','Tengo dudas de como crear una llave foranea7','2023-06-09','NO_RESPONDIDO',1,1);
/*!40000 ALTER TABLE `topicos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-03 15:21:24
