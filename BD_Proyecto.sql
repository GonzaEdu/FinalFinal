CREATE DATABASE  IF NOT EXISTS `db_sistemaprestamos` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_sistemaprestamos`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: db_sistemaprestamos
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `montos`
--

DROP TABLE IF EXISTS `montos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `montos` (
  `idmontos` int NOT NULL AUTO_INCREMENT,
  `dias` int DEFAULT NULL,
  `cientocincuenta` double DEFAULT NULL,
  `doscientos` double DEFAULT NULL,
  `trescientos` double DEFAULT NULL,
  `cuatrocientos` double DEFAULT NULL,
  `quinientos` double DEFAULT NULL,
  PRIMARY KEY (`idmontos`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `montos`
--

LOCK TABLES `montos` WRITE;
/*!40000 ALTER TABLE `montos` DISABLE KEYS */;
INSERT INTO `montos` VALUES (1,15,154.11,205.49,308.23,410.98,513.72),(2,20,155.49,207.32,310.98,414.64,518.3),(3,25,156.68,209.15,313.72,418.3,522.88),(4,30,157.23,210.98,316.47,421.96,527.45),(5,35,159.61,212.81,319.22,425.62,532.03);
/*!40000 ALTER TABLE `montos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos` (
  `idpagos` int NOT NULL AUTO_INCREMENT,
  `montodiario` double DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `idUsuario_Usuario` int DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `idSolicitud_Solicitud` int DEFAULT NULL,
  PRIMARY KEY (`idpagos`),
  KEY `IdUsuario_Usuario_idx` (`idUsuario_Usuario`),
  KEY `IdSolicitud_Solicitud_idx` (`idSolicitud_Solicitud`),
  CONSTRAINT `IdSolicitud_Solicitud` FOREIGN KEY (`idSolicitud_Solicitud`) REFERENCES `solicitud` (`idsolicitud`),
  CONSTRAINT `IdUsuario_Usuario` FOREIGN KEY (`idUsuario_Usuario`) REFERENCES `tb_usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES (98,12.28,'Pendiente',80,'2024-07-04',21),(99,12.28,'Pendiente',80,'2024-07-05',21),(100,12.28,'Pendiente',80,'2024-07-08',21),(101,12.28,'Pendiente',80,'2024-07-09',21),(102,12.28,'Pendiente',80,'2024-07-10',21),(103,12.28,'Pendiente',80,'2024-07-11',21),(104,12.28,'Pendiente',80,'2024-07-12',21),(105,12.28,'Pendiente',80,'2024-07-15',21),(106,12.28,'Pendiente',80,'2024-07-16',21),(107,12.28,'Pendiente',80,'2024-07-17',21),(108,12.28,'Pendiente',80,'2024-07-18',21),(109,12.28,'Pendiente',80,'2024-07-19',21),(110,12.28,'Pendiente',80,'2024-07-22',21),(111,12.28,'Pendiente',80,'2024-07-23',21),(112,12.28,'Pendiente',80,'2024-07-24',21),(113,12.28,'Pendiente',80,'2024-07-25',21),(114,12.28,'Pendiente',80,'2024-07-26',21),(115,12.28,'Pendiente',80,'2024-07-29',21),(116,12.28,'Pendiente',80,'2024-07-30',21),(117,12.28,'Pendiente',80,'2024-07-31',21),(118,12.28,'Pendiente',80,'2024-08-01',21),(119,12.28,'Pendiente',80,'2024-08-02',21),(120,12.28,'Pendiente',80,'2024-08-05',21),(121,12.28,'Pendiente',80,'2024-08-06',21),(122,12.28,'Pendiente',80,'2024-08-07',21),(123,15.07,'Pendiente',80,'2024-06-24',22),(124,15.07,'Pendiente',80,'2024-06-25',22),(125,15.07,'Pendiente',80,'2024-06-26',22),(126,15.07,'Pendiente',80,'2024-06-27',22),(127,15.07,'Pendiente',80,'2024-06-28',22),(128,15.07,'Pendiente',80,'2024-07-01',22),(129,15.07,'Pendiente',80,'2024-07-02',22),(130,15.07,'Pendiente',80,'2024-07-03',22),(131,15.07,'Pendiente',80,'2024-07-04',22),(132,15.07,'Pendiente',80,'2024-07-05',22),(133,15.07,'Pendiente',80,'2024-07-08',22),(134,15.07,'Pendiente',80,'2024-07-09',22),(135,15.07,'Pendiente',80,'2024-07-10',22),(136,15.07,'Pendiente',80,'2024-07-11',22),(137,15.07,'Pendiente',80,'2024-07-12',22),(138,15.07,'Pendiente',80,'2024-07-15',22),(139,15.07,'Pendiente',80,'2024-07-16',22),(140,15.07,'Pendiente',80,'2024-07-17',22),(141,15.07,'Pendiente',80,'2024-07-18',22),(142,15.07,'Pendiente',80,'2024-07-19',22),(143,15.07,'Pendiente',80,'2024-07-22',22);
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sector`
--

DROP TABLE IF EXISTS `sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sector` (
  `idsector` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `idsectorsuperior` int DEFAULT NULL,
  PRIMARY KEY (`idsector`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sector`
--

LOCK TABLES `sector` WRITE;
/*!40000 ALTER TABLE `sector` DISABLE KEYS */;
INSERT INTO `sector` VALUES (0,'SECTORGRANDE',-1),(1,'Sin sector',1),(2,'LOS OLIVOS',0),(3,'SMP',0),(4,'LIMA',0),(5,'BREÃ‘A',0),(6,'COMAS',0),(7,'COVIDA',2),(8,'EL OLIVAR',2),(9,'SANTA ROSITA',2),(10,'PTE CAMOTE',3),(11,'HUANDOY',3),(12,'MESA REDONDA',4),(13,'CORPAC',4),(14,'LAS FLORES',5),(15,'PASCANA',6),(16,'CENTRAL COMAS',6);
/*!40000 ALTER TABLE `sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solicitud`
--

DROP TABLE IF EXISTS `solicitud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `solicitud` (
  `idsolicitud` int NOT NULL AUTO_INCREMENT,
  `montoinicial` double DEFAULT NULL,
  `estado` varchar(45) DEFAULT NULL,
  `fechainicio` date DEFAULT NULL,
  `fechafin` date DEFAULT NULL,
  `montofinal` double DEFAULT NULL,
  `periodo` varchar(45) DEFAULT NULL,
  `pagodiario` double DEFAULT NULL,
  `tb_usuario_id_usuario` int NOT NULL,
  PRIMARY KEY (`idsolicitud`),
  KEY `fk_solicitud_tb_usuario1_idx` (`tb_usuario_id_usuario`),
  CONSTRAINT `fk_solicitud_tb_usuario1` FOREIGN KEY (`tb_usuario_id_usuario`) REFERENCES `tb_usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solicitud`
--

LOCK TABLES `solicitud` WRITE;
/*!40000 ALTER TABLE `solicitud` DISABLE KEYS */;
INSERT INTO `solicitud` VALUES (1,400,'solicitado','2024-05-02','2024-06-02',500,'diario',16.7,45),(2,400,'SOLICITADO','2024-05-05','2024-06-04',440,'DIARIO',20.95,45),(3,500,'DESAPROBADO','2024-05-05','2024-06-04',550,'DIARIO',26.19,49),(4,400,'SOLICITADO','2024-05-11','2024-06-10',440,'DIARIO',20.95,45),(5,4000,'APROBADO','2024-05-24','2024-06-23',4400,'DIARIO',200,49),(6,200,'APROBADO','2024-05-08','2024-06-07',220,'DIARIO',9.57,49),(7,2000,'APROBADO','2024-05-08','2024-06-07',2200,'DIARIO',95.65,49),(9,212,'DESAPROBADO','2024-05-24','2024-06-23',233.2,'DIARIO',10.6,56),(10,324,'APROBADO','2024-05-03','2024-06-02',356.4,'DIARIO',16.2,57),(11,234,'APROBADO','2024-05-17','2024-06-16',257.4,'DIARIO',11.7,60),(12,2324,'SOLICITADO','2024-05-16','2024-06-15',2556.4,'DIARIO',111.15,65),(13,23423,'SOLICITADO','2024-05-10','2024-06-09',25765.3,'DIARIO',1171.15,64),(14,5000,'SOLICITADO','2024-05-06','2024-06-05',5500,'DIARIO',250,71),(15,150,'APROBADO','2024-05-18','2024-06-12',156.68,NULL,8.7,49),(16,200,'DESAPROBADO','2024-05-29','2024-06-13',205.49,NULL,17.12,55),(17,150,'APROBADO','2024-05-24','2024-06-25',157.23,NULL,6.84,55),(18,150,'APROBADO','2024-05-29','2024-06-28',157.23,NULL,6.84,56),(19,300,'APROBADO','2024-06-19','2024-07-09',310.98,NULL,20.73,55),(20,500,'APROBADO','2024-06-14','2024-07-16',527.45,NULL,22.93,55),(21,300,'APROBADO','2024-07-04','2024-08-08',319.22,'DIARIO',12.28,80),(22,300,'APROBADO','2024-06-23','2024-07-23',316.47,'DIARIO',15.07,80);
/*!40000 ALTER TABLE `solicitud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_enlace`
--

DROP TABLE IF EXISTS `tb_enlace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_enlace` (
  `idenlace` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  `ruta` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idenlace`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_enlace`
--

LOCK TABLES `tb_enlace` WRITE;
/*!40000 ALTER TABLE `tb_enlace` DISABLE KEYS */;
INSERT INTO `tb_enlace` VALUES (1,'Registrar Jefe de Prestamista','/inversionista/registrarJefe'),(2,'Registrar Prestamista','/jefe/registrarPrestamista'),(3,'Registrar Prestatario','/prestamista/registrarPrestatarios'),(4,'SolicitarPrestamo','/prestatario/solicitarPrestamo'),(5,'Lista Jefe de Prestamistas','/inversionista/listaJefe'),(6,'Listar Prestamistas','/jefe/listarPrestamista'),(7,'Listar Prestatarios','/prestamista/listarPrestatarios'),(8,'Listar Solicitudes','/prestamista/listarSolicitudes'),(9,'Mis Solicitudes','/prestatario/listarSolicitudes'),(10,'Ver Cronograma','/prestatario/buscarCronograma');
/*!40000 ALTER TABLE `tb_enlace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_rol`
--

DROP TABLE IF EXISTS `tb_rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_rol` (
  `idrol` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idrol`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_rol`
--

LOCK TABLES `tb_rol` WRITE;
/*!40000 ALTER TABLE `tb_rol` DISABLE KEYS */;
INSERT INTO `tb_rol` VALUES (1,'inversionista'),(2,'jefe'),(3,'prestamista'),(4,'prestatario');
/*!40000 ALTER TABLE `tb_rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_rol_enlace`
--

DROP TABLE IF EXISTS `tb_rol_enlace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_rol_enlace` (
  `idrol` int NOT NULL,
  `idenlace` int NOT NULL,
  PRIMARY KEY (`idrol`,`idenlace`),
  KEY `fk25` (`idenlace`),
  CONSTRAINT `fk24` FOREIGN KEY (`idrol`) REFERENCES `tb_rol` (`idrol`),
  CONSTRAINT `fk25` FOREIGN KEY (`idenlace`) REFERENCES `tb_enlace` (`idenlace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_rol_enlace`
--

LOCK TABLES `tb_rol_enlace` WRITE;
/*!40000 ALTER TABLE `tb_rol_enlace` DISABLE KEYS */;
INSERT INTO `tb_rol_enlace` VALUES (1,1),(2,2),(3,3),(4,4),(1,5),(2,6),(3,7),(3,8),(4,9),(4,10);
/*!40000 ALTER TABLE `tb_rol_enlace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usuario`
--

DROP TABLE IF EXISTS `tb_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `idrol` int DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telefono` char(9) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `sector_idsector` int NOT NULL,
  `id_usuario_registra` int DEFAULT NULL,
  `dni` int DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `idrol` (`idrol`),
  KEY `fk_tb_usuario_sector1_idx` (`sector_idsector`),
  CONSTRAINT `fk_tb_usuario_sector1` FOREIGN KEY (`sector_idsector`) REFERENCES `sector` (`idsector`),
  CONSTRAINT `tb_usuario_ibfk_1` FOREIGN KEY (`idrol`) REFERENCES `tb_rol` (`idrol`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuario`
--

LOCK TABLES `tb_usuario` WRITE;
/*!40000 ALTER TABLE `tb_usuario` DISABLE KEYS */;
INSERT INTO `tb_usuario` VALUES (44,1,'Steve','Gozar','steve@gmail.com','98765432','steve','$2a$10$mvHYdG.1edcapi3RXm4XO.030Otr5I07g1IgLBxnBB9MGTzyRIdoW',1,NULL,72499963),(45,4,'pres99','pres99','pres99','987654321','pres99','$2a$10$RiBoMsdYAiJKUwHNcZ3ZvOZaePa192zjj8gJAop92x2Vq0Nx9OsVO',1,NULL,72499963),(46,2,'Hernan','Sanchez','Hernan@hotmail.com','987654321','user2','$2a$10$ZLCqBvO0vh84dab39f9tDurG1mA7lI1l4ST42GbwMLgsirMhnjoKe',5,44,72499963),(49,3,'Jhon','Aladin','aladin@gmail.com','987654321','pres9','$2a$10$yxo3n2O0PoCbvD7Cdcf3duNFNJ9UaFB0Mvit7eulUedGzPEGKb3ly',7,NULL,72499963),(55,3,'Gino','Aserit','Aserit@gmail.com','987654321','user13','$2a$10$4HuJ0nLj1I25pjG2IHsaF.BrEAwOYtAt2tJY/ogZSXmnz/l5Pgroy',7,NULL,12499963),(56,4,'Priciliano','Guzman','priciliano@gmail.com','23432','usu99','$2a$10$iJSrz.WeostDoiYqdk16J.q57/Zm/g0kfbuStIgWxokqWaCXhsW8S',7,49,73499963),(57,4,'Albertino','Salinas','albertino@gmail.com','8765432','usu55','$2a$10$AH92r43gDN8vZOHqMHgQgen1ex4NNJJDP5CIglFPYmqYxvUrxoM3q',7,49,22499963),(58,2,'Jorge','Benavides','jorge@gmail.com','987654123','usuario1','$2a$10$wDfcteWt0jLAfhwzY5Rho.Z2275zpH9mkF9hyVs3G0WEsDaHXMfmm',2,44,32479963),(59,3,'usuario2','usuario2','usuario2','987654321','usuario2','$2a$10$Tl4wI5HJ1M8wqyYqyOSpK.II1sa4uU0lIattNEzi9pjYjBw8Ze1Hi',13,NULL,72429963),(60,4,'usuario3','usuario3fer','usuario3','123456789','usuario3','$2a$10$kPcCS89R53E6E6qvX5XzoeW1IvIuDFVEJ5RonYHZpZKqlN1eVF7RG',13,59,72419963),(61,2,'George','Cabana','usuario01','987654321','usuario01','$2a$10$PDaZc1h.Swloun/Gyb50g.YhZku2lFAGpHd0/NVRyucgPSCir4/0u',4,44,72499913),(62,3,'usuario02','usuario02','usuario02','87654321','usuario02','$2a$10$Nzoa92koS28lp6UCjOs12OVEVsTEd4jKKa3NdR17.SOtZqdJUYSnC',10,NULL,7249983),(63,3,'usuario021','usuario021','usuario021','987654321','usuario021','$2a$10$9MzVfGT4yrfUheSxQahrXe5kYfhb38sMHzwWcpMCnsCakYLl87KDG',11,NULL,72499563),(64,4,'usuario03','usuario03','usuario03','87654321','usuario03','$2a$10$10ZNbD5CAZw6A20rQ9YTQemWdXT7ToSeHIoGRCtigl3IhPK2hFOdC',10,62,87655545),(65,4,'usuario031','usuario031','usuario031','87654321','usuario031','$2a$10$dO5FZAZ/sXPbKqETwu2wJ.3OfZN9Txo2R6thoeN.32byMBmzKnuQ.',10,62,72499993),(69,3,'prestamista12345','prestamista12345','prestamista12345','987654321','prestamista12345','$2a$10$mBmFKWfuXlCd3jopyjcnpuNUwQfO.ZMyvj8UuIbr1tr9ZSkCOMJhm',11,NULL,72499962),(70,4,'prestatario001','prestatario001','prestatario001','987654321','prestatario001','$2a$10$/16jh8xzNUmNolnWrtfG.e3aIYqA6b4DYkQK2HZsWDqM0XJeLTvqa',11,69,73499963),(71,4,'prestatario01','prestatario01','prestatario01','87654321','prestatario01','$2a$10$Qt12glVw7nUqM1CISbWhCu/6Ruzt0ro11rxEoTHD4aAqoNQKWE.ae',11,69,72419963),(79,3,'Rupertilio','Jordan','Rupertilio@gmail.com','932423746','usu23','$2a$10$Pc2VtL6Hw4ihvV2pRpPg1.ioFr1D/XIEduLvA/hQ0dj/KwmOf0n9u',14,NULL,62535236),(80,4,'Emiliano','Sorache','Emiliano@gmail.com','932674234','emiliano','$2a$10$Bx9Oq71iv2V.LquDJRvFNOijI./awH/c6nxzu88TrMb6tHrulLPna',14,79,32472374);
/*!40000 ALTER TABLE `tb_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_usuario_has_tb_usuario`
--

DROP TABLE IF EXISTS `tb_usuario_has_tb_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_usuario_has_tb_usuario` (
  `tb_usuario_id_usuario` int NOT NULL,
  `tb_usuario_id_usuario1` int NOT NULL,
  PRIMARY KEY (`tb_usuario_id_usuario`,`tb_usuario_id_usuario1`),
  KEY `fk_tb_usuario_has_tb_usuario_tb_usuario2_idx` (`tb_usuario_id_usuario1`),
  KEY `fk_tb_usuario_has_tb_usuario_tb_usuario1_idx` (`tb_usuario_id_usuario`),
  CONSTRAINT `fk_tb_usuario_has_tb_usuario_tb_usuario1` FOREIGN KEY (`tb_usuario_id_usuario`) REFERENCES `tb_usuario` (`id_usuario`),
  CONSTRAINT `fk_tb_usuario_has_tb_usuario_tb_usuario2` FOREIGN KEY (`tb_usuario_id_usuario1`) REFERENCES `tb_usuario` (`id_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_usuario_has_tb_usuario`
--

LOCK TABLES `tb_usuario_has_tb_usuario` WRITE;
/*!40000 ALTER TABLE `tb_usuario_has_tb_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_usuario_has_tb_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-21 12:35:26
