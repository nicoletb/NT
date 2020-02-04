CREATE DATABASE  IF NOT EXISTS `bd_miportafolio` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `bd_miportafolio`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bd_miportafolio
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.8-MariaDB

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
-- Table structure for table `portafolio_datos`
--

DROP TABLE IF EXISTS `portafolio_datos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portafolio_datos` (
  `datos_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `datos_nombre` varchar(150) DEFAULT NULL,
  `datos_descripcion` text DEFAULT NULL,
  `datos_foto` varchar(60) DEFAULT NULL,
  `datos_correo` varchar(120) DEFAULT NULL,
  `datos_twitter` varchar(120) DEFAULT NULL,
  `datos_facebook` varchar(120) DEFAULT NULL,
  `datos_github` varchar(120) DEFAULT NULL,
  `datos_instagram` varchar(120) DEFAULT NULL,
  `estado` char(1) DEFAULT NULL,
  PRIMARY KEY (`datos_codigo`),
  CONSTRAINT `chk_estados` CHECK (`estado` in (1,0))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portafolio_datos`
--

LOCK TABLES `portafolio_datos` WRITE;
/*!40000 ALTER TABLE `portafolio_datos` DISABLE KEYS */;
INSERT INTO `portafolio_datos` VALUES (1,'Armando Ruiz','Soy Desarrollador BackEnd Python Experto en Jinja2 y Flask','images/foto.png','aruiz.eu@gmail.com','SIN','SIN','SIN','SIN','1'),(3,'Oscar Ruiz','Soy Desarrollador BackEnd Python Experto en Jinja2 y Flask','images/foto2.jpg','oruiz@gmail.com','SIN','SIN','SIN','SIN','1'),(4,'Carmen Ruiz','Soy Desarrollador BackEnd Python Experto en Jinja2 y Flask','images/foto6.jfif','carmen@gmail.com','SIN','SIN','SIN','SIN','1'),(5,'RUIZ DAVILA','Soy Desarrollador BackEnd Python Experto en Jinja2 y Flask','images/foto4.png','RUIZ@GMAIL.COM','SIN','SIN','SIN','SIN','1');
/*!40000 ALTER TABLE `portafolio_datos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portafolio_experiencia`
--

DROP TABLE IF EXISTS `portafolio_experiencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portafolio_experiencia` (
  `experiencia_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `experiencia_titulo` varchar(100) DEFAULT NULL,
  `experiencia_descripcion` text DEFAULT NULL,
  `experiencia_foto` varchar(60) DEFAULT NULL,
  `experiencia_direccion_web` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`experiencia_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portafolio_experiencia`
--

LOCK TABLES `portafolio_experiencia` WRITE;
/*!40000 ALTER TABLE `portafolio_experiencia` DISABLE KEYS */;
INSERT INTO `portafolio_experiencia` VALUES (1,'Programador Backend Jr TATA','Lorem Ipsum es simplemente el texto de relleno \n  de las imprentas y archivos de texto. Lorem Ipsum h\n  a sido el texto de relleno estándar de las \n  industrias desde el año 1500, cuando un impresor \n  N. del T. persona que se dedica a la imprenta','images/codigo1.jpg','http://www.armando.com/tata'),(2,'Programador Fronted Inter GMD','Lorem Ipsum es simplemente el texto de relleno \n  de las imprentas y archivos de texto. Lorem Ipsum h\n  a sido el texto de relleno estándar de las \n  industrias desde el año 1500, cuando un impresor \n  N. del T. persona que se dedica a la imprenta','images/codigo2.jfif','http://www.armando.com/gmd'),(3,'Programador Back SR Optica','Lorem Ipsum es simplemente el texto de relleno \n  de las imprentas y archivos de texto. Lorem Ipsum h\n  a sido el texto de relleno estándar de las \n  industrias desde el año 1500, cuando un impresor \n  N. del T. persona que se dedica a la imprenta','images/codigo3.jfif','http://www.armando.com/optica'),(4,'Programador Full Stack en tecsup','Lorem Ipsum es simplemente el texto de relleno \n  de las imprentas y archivos de texto. Lorem Ipsum h\n  a sido el texto de relleno estándar de las \n  industrias desde el año 1500, cuando un impresor \n  N. del T. persona que se dedica a la imprenta','images/codigo4.jfif','http://www.armando.com/tecsup');
/*!40000 ALTER TABLE `portafolio_experiencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portafolio_informacion`
--

DROP TABLE IF EXISTS `portafolio_informacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portafolio_informacion` (
  `informacion_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `datos_codigo` int(11) DEFAULT NULL,
  `proyectos_codigo` int(11) DEFAULT NULL,
  `experiencia_codigo` int(11) DEFAULT NULL,
  PRIMARY KEY (`informacion_codigo`),
  KEY `datos_codigo` (`datos_codigo`),
  KEY `proyectos_codigo` (`proyectos_codigo`),
  KEY `experiencia_codigo` (`experiencia_codigo`),
  CONSTRAINT `portafolio_informacion_ibfk_1` FOREIGN KEY (`datos_codigo`) REFERENCES `portafolio_datos` (`datos_codigo`),
  CONSTRAINT `portafolio_informacion_ibfk_2` FOREIGN KEY (`proyectos_codigo`) REFERENCES `portafolio_proyectos` (`proyectos_codigo`),
  CONSTRAINT `portafolio_informacion_ibfk_3` FOREIGN KEY (`experiencia_codigo`) REFERENCES `portafolio_experiencia` (`experiencia_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portafolio_informacion`
--

LOCK TABLES `portafolio_informacion` WRITE;
/*!40000 ALTER TABLE `portafolio_informacion` DISABLE KEYS */;
INSERT INTO `portafolio_informacion` VALUES (1,1,1,1),(2,1,2,2),(4,1,3,3),(7,3,1,1),(8,3,2,2),(9,3,3,3),(10,4,3,3),(11,5,4,4);
/*!40000 ALTER TABLE `portafolio_informacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portafolio_proyectos`
--

DROP TABLE IF EXISTS `portafolio_proyectos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portafolio_proyectos` (
  `proyectos_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `proyectos_titulo` varchar(100) DEFAULT NULL,
  `proyectos_subtitulo` varchar(50) DEFAULT NULL,
  `proyectos_fecha` date DEFAULT NULL,
  `proyectos_direccion_web` varchar(80) DEFAULT NULL,
  `proyectos_descripcion` text DEFAULT NULL,
  `proyectos_foto` varchar(260) DEFAULT NULL,
  PRIMARY KEY (`proyectos_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portafolio_proyectos`
--

LOCK TABLES `portafolio_proyectos` WRITE;
/*!40000 ALTER TABLE `portafolio_proyectos` DISABLE KEYS */;
INSERT INTO `portafolio_proyectos` VALUES (1,'Portafolio en Flask','Integracion con Mysql','2020-01-16','http://www.armando.com/portafolio','Lorem Ipsum es simplemente el texto de relleno \n  de las imprentas y archivos de texto. Lorem Ipsum h\n  a sido el texto de relleno estándar de las \n  industrias desde el año 1500, cuando un impresor \n  N. del T. persona que se dedica a la imprenta','images/python.png'),(2,'Portafolio en Django','Integracion con MongoDB','2020-01-20','http://www.armando.com/portafoliomongo','Lorem Ipsum es simplemente el texto de relleno \n  de las imprentas y archivos de texto. Lorem Ipsum h\n  a sido el texto de relleno estándar de las \n  industrias desde el año 1500, cuando un impresor \n  N. del T. persona que se dedica a la imprenta','images/piton.png'),(3,'Ecommerce DJANGO','Integracion con POSTGRESS','2020-01-22','http://www.armando.com/ecommerce','Lorem Ipsum es simplemente el texto de relleno \n  de las imprentas y archivos de texto. Lorem Ipsum h\n  a sido el texto de relleno estándar de las \n  industrias desde el año 1500, cuando un impresor \n  N. del T. persona que se dedica a la imprenta','images/icon.png'),(4,'BIG DATA','Integracion con SQL','2020-02-22','http://www.armando.com/bigdata','Lorem Ipsum es simplemente el texto de relleno \n  de las imprentas y archivos de texto. Lorem Ipsum h\n  a sido el texto de relleno estándar de las \n  industrias desde el año 1500, cuando un impresor \n  N. del T. persona que se dedica a la imprenta','images/python.png');
/*!40000 ALTER TABLE `portafolio_proyectos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'bd_miportafolio'
--
/*!50003 DROP PROCEDURE IF EXISTS `datos_portafolio` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `datos_portafolio`(in cod int)
begin
SELECT 
per.datos_nombre,
per.datos_descripcion,
per.datos_foto,
per.datos_correo,
per.datos_twitter,
per.datos_facebook,
per.datos_github,
per.datos_instagram,
pro.proyectos_titulo,
pro.proyectos_subtitulo,
pro.proyectos_fecha,
pro.proyectos_direccion_web,
pro.proyectos_descripcion,
pro.proyectos_foto,
exp.experiencia_titulo,
exp.experiencia_descripcion,
exp.experiencia_foto,
exp.experiencia_direccion_web
from portafolio_datos per inner join portafolio_informacion inf 
on per.datos_codigo=inf.datos_codigo
inner join portafolio_proyectos pro 
on  pro.proyectos_codigo=inf.proyectos_codigo
inner join portafolio_experiencia exp 
on  exp.experiencia_codigo=inf.experiencia_codigo
where per.datos_codigo=cod and per.estado='1';
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `personas_proyectos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `personas_proyectos`(cod int)
begin
select pp.proyectos_titulo,pd.datos_nombre
from portafolio_datos pd 
inner join portafolio_informacion pi
on pd.datos_codigo=pi.datos_codigo
inner join portafolio_proyectos pp 
on pp.proyectos_codigo=pi.proyectos_codigo
where pd.datos_codigo=cod;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `usuarios_activos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usuarios_activos`(in est int)
begin
select * from portafolio_datos where estado=est;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-01-20 10:56:46
