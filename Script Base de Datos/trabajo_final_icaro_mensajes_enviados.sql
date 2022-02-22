-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: trabajo_final_icaro
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `mensajes_enviados`
--

DROP TABLE IF EXISTS `mensajes_enviados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mensajes_enviados` (
  `id_mensajes` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `mensaje` int NOT NULL,
  `usuario` int NOT NULL,
  PRIMARY KEY (`id_mensajes`),
  KEY `fk_mensaje_idx` (`mensaje`),
  KEY `fk_usuario_remitente_idx` (`usuario`),
  CONSTRAINT `fk_mensaje` FOREIGN KEY (`mensaje`) REFERENCES `mensajes` (`id_mensajes`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_usuario_remitente` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensajes_enviados`
--

LOCK TABLES `mensajes_enviados` WRITE;
/*!40000 ALTER TABLE `mensajes_enviados` DISABLE KEYS */;
INSERT INTO `mensajes_enviados` VALUES (1,'2022-01-31',5,1),(2,'2022-01-31',7,1),(3,'2022-02-01',2,4),(4,'2022-02-01',1,2),(5,'2022-02-01',4,2),(6,'2022-02-01',3,1),(7,'2022-02-01',6,3);
/*!40000 ALTER TABLE `mensajes_enviados` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-13 23:04:50
