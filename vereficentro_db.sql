-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: verificentro
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `calendario`
--

DROP TABLE IF EXISTS `calendario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calendario` (
  `cal_cve_calendario` int NOT NULL AUTO_INCREMENT,
  `cal_mes` varchar(15) NOT NULL,
  `cal_ultimo_digito` smallint NOT NULL,
  `cal_color` varchar(10) NOT NULL,
  PRIMARY KEY (`cal_cve_calendario`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calendario`
--

LOCK TABLES `calendario` WRITE;
/*!40000 ALTER TABLE `calendario` DISABLE KEYS */;
INSERT INTO `calendario` VALUES (1,'Enero',5,'Amarillo'),(2,'Enero',6,'Amarillo'),(3,'Febrero',5,'Amarillo'),(4,'Febrero',6,'Amarillo'),(5,'Julio',5,'Amarillo'),(6,'Julio',6,'Amarillo'),(7,'Agosto',5,'Amarillo'),(8,'Agosto',6,'Amarillo'),(9,'Febrero',7,'Rosa'),(10,'Febrero',8,'Rosa'),(11,'Marzo',7,'Rosa'),(12,'Marzo',8,'Rosa'),(13,'Agosto',7,'Rosa'),(14,'Agosto',8,'Rosa'),(15,'Septiembre',7,'Rosa'),(16,'Septiembre',8,'Rosa'),(17,'Marzo',3,'Rojo'),(18,'Marzo',4,'Rojo'),(19,'Abril',3,'Rojo'),(20,'Abril',4,'Rojo'),(21,'Septiembre',3,'Rojo'),(22,'Septiembre',4,'Rojo'),(23,'Octubre',3,'Rojo'),(24,'Octubre',4,'Rojo'),(25,'Abril',1,'Verde'),(26,'Abril',2,'Verde'),(27,'Mayo',1,'Verde'),(28,'Mayo',2,'Verde'),(29,'Octubre',1,'Verde'),(30,'Octubre',2,'Verde'),(31,'Noviembre',1,'Verde'),(32,'Noviembre',2,'Verde'),(33,'Mayo',9,'Azul'),(34,'Junio',9,'Azul'),(35,'Junio',0,'Azul'),(36,'Noviembre',9,'Azul'),(37,'Noviembre',0,'Azul'),(38,'Diciembre',9,'Azul'),(39,'Diciembre',0,'Azul');
/*!40000 ALTER TABLE `calendario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `centro_verificacion`
--

DROP TABLE IF EXISTS `centro_verificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `centro_verificacion` (
  `cev_cve_centro_verificacion` int NOT NULL AUTO_INCREMENT,
  `cev_unidad_verificacion` varchar(5) NOT NULL,
  `cev_calle` varchar(40) DEFAULT NULL,
  `cev_numero` varchar(8) DEFAULT NULL,
  `cev_provincia` varchar(40) DEFAULT NULL,
  `cev_estado` varchar(22) NOT NULL,
  `cev_codigo_postal` varchar(5) NOT NULL,
  `mun_cve_municipio` int DEFAULT NULL,
  PRIMARY KEY (`cev_cve_centro_verificacion`),
  UNIQUE KEY `cev_unidad_verificacion` (`cev_unidad_verificacion`),
  KEY `mun_cve_municipio` (`mun_cve_municipio`),
  CONSTRAINT `centro_verificacion_ibfk_1` FOREIGN KEY (`mun_cve_municipio`) REFERENCES `municipio` (`mun_cve_municipio`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centro_verificacion`
--

LOCK TABLES `centro_verificacion` WRITE;
/*!40000 ALTER TABLE `centro_verificacion` DISABLE KEYS */;
INSERT INTO `centro_verificacion` VALUES (1,'17','Morelos Poniente','43',NULL,'Hidalgo','12345',1),(2,'15','Carretera México Laredo',NULL,'Los Frailes','Hidalgo','23456',2),(3,'40','Las Granjas',NULL,'Pozo Grande','Hidalgo','34567',2),(4,'14','Carr. Tula-Jorobas Km.9+50',NULL,'El Cardonal','Hidalgo','45678',3),(5,'35','Camino a San Martín',NULL,'Barrio El Libramiento','Hidalgo','56789',4),(6,'29','Calle de Morelos','110','Centro','Hidalgo','67890',5),(7,'64','Boulevard Adolfo López Mateos',NULL,'Aviación Civil','Hidalgo','78901',6),(8,'12','Camino viejo a la Cienega',NULL,'Abundio Martínez','Hidalgo','09876',7),(9,'13','Carretera México Laredo km.165',NULL,NULL,'Hidalgo','98765',8),(10,'49','Carretera México - Tampico km.104','21','Barrio de Casas Quemadas','Hidalgo','87654',9),(11,'9','Avenida Universidad','505','CEUNI','Hidalgo','52864',10),(12,'11','Boulevard Nuevo Hidalgo','509','La colonia','Hidalgo','14865',10),(13,'24','Guadalupe Escamilla','115','Pachuquilla','Hidalgo','32586',10),(14,'37','Boulevard las Torres','1504','Ejido San Antonio el Desmonte','Hidalgo','35629',10),(15,'43','Boulevard Rio de las Avenidas','2303','Industrial La Paz','Hidaldo','65892',10),(16,'44','Avenida Santa Cecilia','169','La provincia Siglo XXI','Hidalgo','23785',10),(17,'45','12 de Diciembre','5','San Antonio el Desmonte','Hidalgo','86492',10),(18,'62','Carr Pachuca/Cd Sahagun km 6','629','La Noria','Hidalgo','32869',10),(19,'2','Avenida Juarez','903','Periodistas','Hidalgo','87659',11),(20,'4','Boulevard Valle San Javier','145','Real del Valle','Hidalgo','32564',11),(21,'5','Boulevard Everardo Marquez','814','Del Bosque','Hidalgo','15326',11),(22,'6','Boulevard Felipe Angeles','1523','Santa Julia','Hidalgo','32501',11),(23,'8','Av. Universidad','100','Cespedes','Hidalgo','65981',11),(24,'10','Av. Cuauhtecmoc','1300','Maestranza','Hidalgo','86451',11);
/*!40000 ALTER TABLE `centro_verificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_calendario_vehiculo`
--

DROP TABLE IF EXISTS `detalle_calendario_vehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_calendario_vehiculo` (
  `veh_cve_vehiculo` int DEFAULT NULL,
  `cal_cve_calendario` int DEFAULT NULL,
  KEY `cal_cve_calendario` (`cal_cve_calendario`),
  KEY `veh_cve_vehiculo` (`veh_cve_vehiculo`),
  CONSTRAINT `detalle_calendario_vehiculo_ibfk_1` FOREIGN KEY (`cal_cve_calendario`) REFERENCES `calendario` (`cal_cve_calendario`),
  CONSTRAINT `detalle_calendario_vehiculo_ibfk_2` FOREIGN KEY (`veh_cve_vehiculo`) REFERENCES `vehiculo` (`veh_cve_vehiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_calendario_vehiculo`
--

LOCK TABLES `detalle_calendario_vehiculo` WRITE;
/*!40000 ALTER TABLE `detalle_calendario_vehiculo` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_calendario_vehiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_holograma`
--

DROP TABLE IF EXISTS `detalle_holograma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_holograma` (
  `deh_cve_holograma` int NOT NULL AUTO_INCREMENT,
  `deh_tipo_auto` varchar(45) NOT NULL,
  `hol_cve_holograma` int DEFAULT NULL,
  PRIMARY KEY (`deh_cve_holograma`),
  KEY `hol_cve_holograma` (`hol_cve_holograma`),
  CONSTRAINT `detalle_holograma_ibfk_1` FOREIGN KEY (`hol_cve_holograma`) REFERENCES `holograma` (`hol_cve_holograma`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_holograma`
--

LOCK TABLES `detalle_holograma` WRITE;
/*!40000 ALTER TABLE `detalle_holograma` DISABLE KEYS */;
INSERT INTO `detalle_holograma` VALUES (1,'Híbridos',1),(2,'Eléctricos',1),(3,'Nuevos',2),(4,'Vehículos con convertidor catalico de 3 vías',3),(5,'SBD',3),(6,'No presente la luz MIL prendida',3),(7,'No presente códigos de fallas',3),(8,'No exceder los límites máximos permisibles',3),(9,'No exceder los límites máximos permisibles',4),(10,'No exceder los límites máximos permisibles',5);
/*!40000 ALTER TABLE `detalle_holograma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_vehiculo_holograma`
--

DROP TABLE IF EXISTS `detalle_vehiculo_holograma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_vehiculo_holograma` (
  `hol_cve_holograma` int DEFAULT NULL,
  `veh_cve_vehiculo` int DEFAULT NULL,
  KEY `veh_cve_vehiculo` (`veh_cve_vehiculo`),
  KEY `hol_cve_holograma` (`hol_cve_holograma`),
  CONSTRAINT `detalle_vehiculo_holograma_ibfk_1` FOREIGN KEY (`veh_cve_vehiculo`) REFERENCES `vehiculo` (`veh_cve_vehiculo`),
  CONSTRAINT `detalle_vehiculo_holograma_ibfk_2` FOREIGN KEY (`hol_cve_holograma`) REFERENCES `holograma` (`hol_cve_holograma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_vehiculo_holograma`
--

LOCK TABLES `detalle_vehiculo_holograma` WRITE;
/*!40000 ALTER TABLE `detalle_vehiculo_holograma` DISABLE KEYS */;
INSERT INTO `detalle_vehiculo_holograma` VALUES (1,1),(1,2),(4,3),(2,4),(3,5);
/*!40000 ALTER TABLE `detalle_vehiculo_holograma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_verificador`
--

DROP TABLE IF EXISTS `detalle_verificador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_verificador` (
  `cev_cve_centro_verificacion` int DEFAULT NULL,
  `veh_cve_vehiculo` int DEFAULT NULL,
  KEY `cev_cve_centro_verificacion` (`cev_cve_centro_verificacion`),
  KEY `veh_cve_vehiculo` (`veh_cve_vehiculo`),
  CONSTRAINT `detalle_verificador_ibfk_1` FOREIGN KEY (`cev_cve_centro_verificacion`) REFERENCES `centro_verificacion` (`cev_cve_centro_verificacion`),
  CONSTRAINT `detalle_verificador_ibfk_2` FOREIGN KEY (`veh_cve_vehiculo`) REFERENCES `vehiculo` (`veh_cve_vehiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_verificador`
--

LOCK TABLES `detalle_verificador` WRITE;
/*!40000 ALTER TABLE `detalle_verificador` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_verificador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `holograma`
--

DROP TABLE IF EXISTS `holograma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `holograma` (
  `hol_cve_holograma` int NOT NULL AUTO_INCREMENT,
  `hol_clave` varchar(2) NOT NULL,
  `hol_lugar_tramite` varchar(40) NOT NULL,
  `hol_precio` double NOT NULL,
  PRIMARY KEY (`hol_cve_holograma`),
  UNIQUE KEY `hol_clave` (`hol_clave`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `holograma`
--

LOCK TABLES `holograma` WRITE;
/*!40000 ALTER TABLE `holograma` DISABLE KEYS */;
INSERT INTO `holograma` VALUES (1,'EX','SEMARNATH',168),(2,'00','Unidad de Verificación Vehicular',891),(3,'0','Unidad de Verificación Vehicular',445),(4,'1','Unidad de Verificación Vehicular',309),(5,'2','Unidad de Verificación Vehicular',309);
/*!40000 ALTER TABLE `holograma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `municipio`
--

DROP TABLE IF EXISTS `municipio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `municipio` (
  `mun_cve_municipio` int NOT NULL AUTO_INCREMENT,
  `mun_municipio` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`mun_cve_municipio`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `municipio`
--

LOCK TABLES `municipio` WRITE;
/*!40000 ALTER TABLE `municipio` DISABLE KEYS */;
INSERT INTO `municipio` VALUES (1,'Apan'),(2,'Actopan'),(3,'Atitalaquia'),(4,'Atotonilco El Grande'),(5,'Cuautepec de Hinojosa'),(6,'Huejutla'),(7,'Huichapan'),(8,'Ixmiquilpan'),(9,'Mineral del Monte'),(10,'Mineral de la Reforma'),(11,'Pachuca de Soto');
/*!40000 ALTER TABLE `municipio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propietario`
--

DROP TABLE IF EXISTS `propietario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `propietario` (
  `pro_cve_propietario` int NOT NULL AUTO_INCREMENT,
  `pro_nombre_pila` varchar(30) NOT NULL,
  `pro_apellido_materno` varchar(15) DEFAULT NULL,
  `pro_apellido_paterno` varchar(15) DEFAULT NULL,
  `pro_municipio` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`pro_cve_propietario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propietario`
--

LOCK TABLES `propietario` WRITE;
/*!40000 ALTER TABLE `propietario` DISABLE KEYS */;
INSERT INTO `propietario` VALUES (1,'Luis','Rodriguez','Alfaro','Mineral de la reforma'),(2,'Henry','Salvador','Ordaz','Villa de Tezontepec'),(3,'Cesar','Castro','Torres','Tolcayuca'),(4,'Alberto','Martinez','Juarez','Zapotlan de Juarez'),(5,'Rodolfo','Hernandez','Cruz','Tizayuca');
/*!40000 ALTER TABLE `propietario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculo`
--

DROP TABLE IF EXISTS `vehiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiculo` (
  `veh_cve_vehiculo` int NOT NULL AUTO_INCREMENT,
  `veh_numero_matricula` varchar(10) NOT NULL,
  `veh_modelo` int NOT NULL,
  `veh_marca` varchar(10) NOT NULL,
  `pro_cve_propietario` int DEFAULT NULL,
  PRIMARY KEY (`veh_cve_vehiculo`),
  UNIQUE KEY `veh_numero_matricula` (`veh_numero_matricula`),
  KEY `pro_cve_propietario` (`pro_cve_propietario`),
  CONSTRAINT `vehiculo_ibfk_1` FOREIGN KEY (`pro_cve_propietario`) REFERENCES `propietario` (`pro_cve_propietario`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculo`
--

LOCK TABLES `vehiculo` WRITE;
/*!40000 ALTER TABLE `vehiculo` DISABLE KEYS */;
INSERT INTO `vehiculo` VALUES (1,'as12s134n3',2016,'Audi',1),(2,'ki8hdh21',2000,'Wolkswagen',1),(3,'b19u3719j2',2020,'Ford',2),(4,'768yhda721',2019,'Seat',2),(5,'109jsh7892',2018,'Chevrolet',3),(9,'ki8hdh2382',2001,'Wolkswagen',1),(10,'ki8hdh2381',2001,'Wolkswagen',1),(12,'ki8hdh211',2000,'Wolkswagen',1);
/*!40000 ALTER TABLE `vehiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculo_nuevo`
--

DROP TABLE IF EXISTS `vehiculo_nuevo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiculo_nuevo` (
  `ven_cve_vehiculo_nuevo` int NOT NULL AUTO_INCREMENT,
  `ven_carta_factura` varchar(30) NOT NULL,
  `ven_alta_placas` varchar(30) NOT NULL,
  `veh_cve_vehiculo` int DEFAULT NULL,
  PRIMARY KEY (`ven_cve_vehiculo_nuevo`),
  UNIQUE KEY `ven_alta_placas` (`ven_alta_placas`),
  KEY `veh_cve_vehiculo` (`veh_cve_vehiculo`),
  CONSTRAINT `vehiculo_nuevo_ibfk_1` FOREIGN KEY (`veh_cve_vehiculo`) REFERENCES `vehiculo` (`veh_cve_vehiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculo_nuevo`
--

LOCK TABLES `vehiculo_nuevo` WRITE;
/*!40000 ALTER TABLE `vehiculo_nuevo` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehiculo_nuevo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehiculo_usado`
--

DROP TABLE IF EXISTS `vehiculo_usado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehiculo_usado` (
  `vey_cve_vehiculo_usado` int NOT NULL AUTO_INCREMENT,
  `veu_certificado_anterior` varchar(15) NOT NULL,
  `veu_tarjeta_circulacion` varchar(20) NOT NULL,
  `veh_cve_vehiculo` int DEFAULT NULL,
  PRIMARY KEY (`vey_cve_vehiculo_usado`),
  UNIQUE KEY `veu_tarjeta_circulacion` (`veu_tarjeta_circulacion`),
  KEY `veh_cve_vehiculo` (`veh_cve_vehiculo`),
  CONSTRAINT `vehiculo_usado_ibfk_1` FOREIGN KEY (`veh_cve_vehiculo`) REFERENCES `vehiculo` (`veh_cve_vehiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehiculo_usado`
--

LOCK TABLES `vehiculo_usado` WRITE;
/*!40000 ALTER TABLE `vehiculo_usado` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehiculo_usado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vwrptvehiculopropietario`
--

DROP TABLE IF EXISTS `vwrptvehiculopropietario`;
/*!50001 DROP VIEW IF EXISTS `vwrptvehiculopropietario`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vwrptvehiculopropietario` AS SELECT 
 1 AS `clave`,
 1 AS `modelo`,
 1 AS `marca`,
 1 AS `matricula`,
 1 AS `clave_propietario`,
 1 AS `nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vwvehiculo`
--

DROP TABLE IF EXISTS `vwvehiculo`;
/*!50001 DROP VIEW IF EXISTS `vwvehiculo`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vwvehiculo` AS SELECT 
 1 AS `veh_cve_vehiculo`,
 1 AS `veh_numero_matricula`,
 1 AS `veh_modelo`,
 1 AS `veh_marca`,
 1 AS `pro_cve_propietario`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'verificentro'
--
/*!50003 DROP PROCEDURE IF EXISTS `spdelpropietario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spdelpropietario`(
in propietario		int			-- <--------------------
)
begin
	if exists(select pro_cve_propietario from propietario
					where pro_cve_propietario = propietario) then
		-- SI EXISTE PROPIETARIO, SE PROCEDE A VALIDAR SI TIENE AUTOS REGISTRADOS
		if not exists(select pro_cve_propietario from vehiculo
					      where pro_cve_propietario = propietario) then
			delete from propietario 
			where  pro_cve_propietario = propietario;
			select '1';
		else
			select '-1';
		end if;
	else
		select '0';
	end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spdelvehiculo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spdelvehiculo`(
in clave	int
)
begin
	if exists(select veh_cve_vehiculo from vehiculo
					where veh_cve_vehiculo = clave) then
		-- SI EXISTE VEHÍCULO, SE PROCEDE A VALIDAR SI TIENE HOLOGRAMAS REGISTRADOS
		if not exists(select veh_cve_vehiculo from detalle_vehiculo_holograma
					      where veh_cve_vehiculo = clave) then
			delete from vehiculo 
			where  veh_cve_vehiculo = clave;
			select '1';
		else
			select '-1';
		end if;
	else
		select '0';
	end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spElimPropietario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spElimPropietario`(
    in clave      int
)
begin
    if exists(select pro_cve_propietario from propietario where pro_cve_propietario = clave) then
        delete from propietario where pro_cve_propietario = clave;
        select 'Se elimino exitosamente al propietario' as 'Resultado';
    else
        select 'No se eliminó, no hay propietario con esa clave' as 'Resultado';
    end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spInserPropietario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spInserPropietario`(
    in nombre      varchar(30),
    in apellido_ma varchar(15),
    in apellido_pa varchar(15),
    in municipio   varchar(40)
)
begin
    if exists(select pro_nombre_pila, pro_apellido_paterno, pro_apellido_materno from propietario as p 
                            where p.pro_nombre_pila = nombre and p.pro_apellido_paterno = apellido_pa 
                            and p.pro_apellido_materno = apellido_ma) then
        -- Ya existe un propietario con el nombre y apellidos
            select '-1';
    else
        -- No hay propietario con ese nombre y apellidos
        insert into propietario values(null, nombre, apellido_ma, apellido_pa, municipio);
        -- select 'Propietario insertado exitosamente' as 'Resultado';
        select '1';
    end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spInsVehiculoValidado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spInsVehiculoValidado`(
in matricula varchar(10),
in modelo int,
in marca varchar(10),
in propietario int
)
begin
	if exists(select pro_cve_propietario from propietario
										where pro_cve_propietario = propietario) then
		if modelo>=1970 and modelo<=2020 then
			insert into vehiculo values(null, matricula, modelo, marca, propietario);
            select '1';
		else	
			select '-1';
		end if;
	else
		select '0';
	end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spModPropietario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spModPropietario`(
    in clave      varchar(30),
    in nombre      varchar(30),
    in apellido_ma varchar(15),
    in apellido_pa varchar(15),
    in municipio        varchar(40)
)
begin
    if exists(select pro_cve_propietario from propietario where pro_cve_propietario = clave) then
        if exists(select pro_nombre_pila, pro_apellido_paterno, pro_apellido_materno from propietario as p 
                                where p.pro_nombre_pila = nombre and p.pro_apellido_paterno = apellido_pa 
                                and p.pro_apellido_materno = apellido_ma) then
			--  select 'No se ha podido modificar, ya existe el propietario con ese nombre y apellidos' as 'Resultado';
            select 'No se ha podido modificar, ya existe el propietario con ese nombre y apellidos' as 'Resultado';
        else
            update propietario set pro_nombre_pila = nombre, pro_apellido_paterno = apellido_pa,
                pro_apellido_materno = apellido_ma, pro_municipio = municipio where pro_cve_propietario = clave;
            select 'El propietario se ha modificado exitosamente' as 'Resultado';
        end if;
    else
        select 'No se ha podido modificar dado que no existe un propietario con esa clave' as 'Resultado';
    end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spQryVehiculo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spQryVehiculo`()
begin
	select * from vehiculo;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spRptVehiculoPropietarioFiltrado` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spRptVehiculoPropietarioFiltrado`(
	in marcaFiltro varchar(10)
)
begin
	select rpt.clave, rpt.matricula, rpt.modelo, rpt.marca, rpt.clave_propietario
    from vwRptVehiculoPropietario rpt
    where rpt.marca like concat('%', marcaFiltro, '%')
    or convert(rpt.modelo, char) = marcaFiltro;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spupdpropietario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spupdpropietario`(
in propietario		int,			-- <--------------------
in paterno			varchar(15),
in materno			varchar(15),
in nombre			varchar(30),
in municipio		varchar(40)
)
begin
	if exists(select pro_cve_propietario from propietario
					where pro_cve_propietario = propietario) then

		update propietario 
		set	   pro_apellido_paterno = paterno, pro_apellido_materno = materno,
			   pro_nombre_pila = nombre, pro_municipio = municipio
		where  pro_cve_propietario = propietario;

		select '1';
	else
		select '0';
	end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `spUpdVehiculo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `spUpdVehiculo`(
in clave		int,
in matricula	varchar(10),
in modelo		int(15),
in marca		varchar(10),
in propietario int
)
begin
	if exists(select veh_cve_vehiculo from vehiculo
					where veh_cve_vehiculo = clave) then
		if exists(select pro_cve_propietario from propietario
					where pro_cve_propietario = propietario)then
                    -- si existe el propietario indicado
						if not exists(select veh_numero_matricula from vehiculo
							where veh_numero_matricula = matricula and veh_cve_vehiculo != clave)then
								update vehiculo 
								set	   veh_numero_matricula = matricula, veh_modelo = modelo,
									   veh_marca = marca, pro_cve_propietario = propietario
								where  veh_cve_vehiculo = clave;
								select '1';
						else
							select '2';
						end if;
		else
			select '-1';
		end if;
	else
		select '0';
	end if;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vwrptvehiculopropietario`
--

/*!50001 DROP VIEW IF EXISTS `vwrptvehiculopropietario`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwrptvehiculopropietario` AS select `v`.`veh_cve_vehiculo` AS `clave`,`v`.`veh_modelo` AS `modelo`,`v`.`veh_marca` AS `marca`,`v`.`veh_numero_matricula` AS `matricula`,`p`.`pro_cve_propietario` AS `clave_propietario`,concat(`p`.`pro_apellido_paterno`,' ',`p`.`pro_apellido_materno`,' ',`p`.`pro_nombre_pila`) AS `nombre` from (`vwvehiculo` `v` join `propietario` `p`) where (`p`.`pro_cve_propietario` = `v`.`pro_cve_propietario`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vwvehiculo`
--

/*!50001 DROP VIEW IF EXISTS `vwvehiculo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vwvehiculo` AS select `vehiculo`.`veh_cve_vehiculo` AS `veh_cve_vehiculo`,`vehiculo`.`veh_numero_matricula` AS `veh_numero_matricula`,`vehiculo`.`veh_modelo` AS `veh_modelo`,`vehiculo`.`veh_marca` AS `veh_marca`,`vehiculo`.`pro_cve_propietario` AS `pro_cve_propietario` from `vehiculo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-12  2:33:46
