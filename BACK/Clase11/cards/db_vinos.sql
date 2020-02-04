CREATE DATABASE  IF NOT EXISTS `db_vinos` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `db_vinos`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_vinos
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.11-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vinos_productos`
--

DROP TABLE IF EXISTS `vinos_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vinos_productos` (
  `prod_cod` int(11) NOT NULL AUTO_INCREMENT,
  `prod_nombre` varchar(100) DEFAULT NULL,
  `prod_det_mini` text DEFAULT NULL,
  `prod_det` text DEFAULT NULL,
  `prod_cant` varchar(10) DEFAULT NULL,
  `prod_prov` int(11) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`prod_cod`),
  KEY `prod_prov` (`prod_prov`),
  CONSTRAINT `vinos_productos_ibfk_1` FOREIGN KEY (`prod_prov`) REFERENCES `vinos_proveedores` (`prov_cod`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vinos_productos`
--

LOCK TABLES `vinos_productos` WRITE;
/*!40000 ALTER TABLE `vinos_productos` DISABLE KEYS */;
INSERT INTO `vinos_productos` VALUES (1,'VINO ESPAÑOL CASA DE LA ERMITA JOVEN','Vino Tinto','Aromas de frutas rojas y negras así como notas florales que recuerdan a la violeta. Buena estructura en boca, aromático, intenso y fresco, con gran carga frutal.','500 ml',1,NULL),(2,'VINO ESPAÑOL CASA DE LA ERMITA IDILICO','Vino Tinto','Elaborado por el enologo Marcial Martinez con uvas seleccionadas de Monastrell (de viñas con más de setenta años) y Petit Verdot de los viñedos que rodean la bodega a 700 metros de altitud.','750 ml',NULL,NULL),(3,'VINO ESPAÑOL CASA DE LA ERMITA VIOGNIER','Vino Blanco','Limpio y brillante,se presenta con matiz de color amarillo verdoso. Atractivas notas frutales. Cabe destacar aromas de albaricoque, melocotón, melón, pera, piña, maracuyá, azahar y jazmín.','375 ml',1,NULL),(4,'VINO BLANCO AFINCADO TARDIO 2010 TERRAZAS','Vino Blanco','Single vineyard Los Aromos, producido en cantidades limitadas. Pura expresión del terroir de Perdriel terroir y la experiencia de Terrazas. Expresión contintental del Cabernet Sauvignon.','375 ml',NULL,NULL),(5,'VINO BLANCO ICEWINE RED LEAF','Vino Blanco','El sabor de este vino de hielo revela todo su opulencia con la riqueza girando con gracia y llenando el paladar con una explosión de exuberantes frutos de mango, maracuyá, piña y lichis.','600 ml',1,NULL),(6,'VINO BLANCO MAROON LATE HARVEST MUSCAT','Vino Blanco','Con aromas y sabores de melocotón dulce de albaricoque y miel. Destellos dorados brillantes. Con aromas y sabores de melocotón dulce de albaricoque y miel. Sensación en la boca agradable y un final persistente.','750 ml',NULL,NULL);
/*!40000 ALTER TABLE `vinos_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vinos_proveedores`
--

DROP TABLE IF EXISTS `vinos_proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vinos_proveedores` (
  `prov_cod` int(11) NOT NULL AUTO_INCREMENT,
  `prov_nombre` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`prov_cod`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vinos_proveedores`
--

LOCK TABLES `vinos_proveedores` WRITE;
/*!40000 ALTER TABLE `vinos_proveedores` DISABLE KEYS */;
INSERT INTO `vinos_proveedores` VALUES (1,'Bodega Dante Robino'),(2,'Bodega De Martino');
/*!40000 ALTER TABLE `vinos_proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_vinos'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-21 10:16:39
