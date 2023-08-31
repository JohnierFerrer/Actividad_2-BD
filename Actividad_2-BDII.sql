CREATE DATABASE  IF NOT EXISTS `actividad_2` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `actividad_2`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: actividad_2
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Pedro','Vega','cra 8 #12-15'),(2,'Alba','Arjona','cra 2 #33-33'),(3,'Jesus','Llanos','cra 5 #24-13'),(4,'Maria','Redondo','cra 3 #34-21'),(5,'Claudio','Escobar','cra 9 #29-39'),(6,'Ana','Prado','cra 4 #37-12'),(7,'Diego','Torres','cra 4 #27-34'),(8,'Antonia','Salgado','cra 2 #32-44'),(9,'Tomas','Huertas','cra 5 #15-34'),(10,'Anastasia','Diaz','cra 7 #32-15');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `precioCompra` decimal(10,0) NOT NULL,
  `precioVenta` decimal(10,0) NOT NULL,
  `cantidad` int NOT NULL,
  `tipo_productos_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_productos_tipo_productos1_idx` (`tipo_productos_id`),
  CONSTRAINT `fk_productos_tipo_productos1` FOREIGN KEY (`tipo_productos_id`) REFERENCES `tipo_productos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Manzana',15000,17500,15,1),(2,'Peras',18000,20000,20,1),(3,'Gomitas',25000,30000,25,5),(4,'Bananas',10000,13000,20,1),(5,'Coca-Cola',30000,35000,18,3),(6,'Pepsi',25000,30000,10,3),(7,'Cebolla',12000,16000,17,2),(8,'Yogurt',20000,25000,20,4),(9,'Zanahoria',20000,25000,30,2),(10,'Leche',27000,30000,10,4),(11,'Paletas',18000,20000,28,5),(12,'Naranja',28000,32000,40,1),(13,'Bombones',13000,15000,16,5),(14,'Mango',23000,26000,30,1),(15,'Queso',30000,35000,18,4),(16,'Fanta',22000,25000,22,3),(17,'Pepino',29000,31000,32,2),(18,'Agua',24000,27000,21,3),(19,'Brocoli',15000,18000,17,2),(20,'Mandarina',11000,14000,27,1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `id` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `telefono` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Maria','cra 8 #15-12','3002766974','marpla@gmail.com'),(2,'Juan','cra 3 #44-44','3152160584','juher@gmail.com'),(3,'Sara','calle 14 #33-53','3202609096','sares@gmail.com'),(4,'Franco','cra 9 #22-33','3134676983','framol@gmail.com'),(5,'Martha','calle 12 #33-33','3046975727','marna@gmail.com'),(6,'Roque','cra 8 #20-34','3174309237','romen@gmail.com'),(7,'Maria','cra 7 #29-35','3010841705','marmos@gmail.com'),(8,'Alan','calle 15 #45-30','3026296128','algue@gmail.com'),(9,'Rocio','cra 6 #34-15','3151538818','romar@gmail.com'),(10,'Sheila','calle 13 #12-37','3044817291','shehu@gmail.com');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores_has_productos`
--

DROP TABLE IF EXISTS `proveedores_has_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores_has_productos` (
  `proveedores_id` int NOT NULL,
  `productos_id` int NOT NULL,
  PRIMARY KEY (`proveedores_id`,`productos_id`),
  KEY `fk_proveedores_has_productos_productos1_idx` (`productos_id`),
  KEY `fk_proveedores_has_productos_proveedores1_idx` (`proveedores_id`),
  CONSTRAINT `fk_proveedores_has_productos_productos1` FOREIGN KEY (`productos_id`) REFERENCES `productos` (`id`),
  CONSTRAINT `fk_proveedores_has_productos_proveedores1` FOREIGN KEY (`proveedores_id`) REFERENCES `proveedores` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores_has_productos`
--

LOCK TABLES `proveedores_has_productos` WRITE;
/*!40000 ALTER TABLE `proveedores_has_productos` DISABLE KEYS */;
INSERT INTO `proveedores_has_productos` VALUES (5,1),(7,1),(8,1),(4,2),(9,2),(2,3),(3,3),(9,3),(2,5),(4,5),(7,5),(8,5),(2,6),(4,6),(10,6),(3,7),(2,8),(5,8),(6,8),(10,8),(6,9),(8,9),(3,10),(7,10),(8,10),(1,13),(8,13),(10,13),(2,14),(10,15),(9,16),(4,17),(8,17),(9,17),(1,18),(6,18),(10,18),(2,19),(5,19),(3,20);
/*!40000 ALTER TABLE `proveedores_has_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefonos`
--

DROP TABLE IF EXISTS `telefonos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefonos` (
  `id` int NOT NULL,
  `numero` varchar(45) NOT NULL,
  `clientes_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_telefonos_clientes_idx` (`clientes_id`),
  CONSTRAINT `fk_telefonos_clientes` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefonos`
--

LOCK TABLES `telefonos` WRITE;
/*!40000 ALTER TABLE `telefonos` DISABLE KEYS */;
INSERT INTO `telefonos` VALUES (1,'3012258126',1),(2,'3048648164',1),(3,'3028845547',2),(4,'3002779556',3),(5,'3201163425',3),(6,'3149910654',4),(7,'3154199562',5),(8,'3174079637',6),(9,'3005319562',7),(10,'3206352916',7),(11,'3159451177',8),(12,'3106090512',9),(13,'3040813914',10),(14,'3010653636',10);
/*!40000 ALTER TABLE `telefonos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_productos`
--

DROP TABLE IF EXISTS `tipo_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_productos` (
  `id` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_productos`
--

LOCK TABLES `tipo_productos` WRITE;
/*!40000 ALTER TABLE `tipo_productos` DISABLE KEYS */;
INSERT INTO `tipo_productos` VALUES (1,'Frutas'),(2,'Verduras'),(3,'Bebidas'),(4,'Lacteos'),(5,'Dulces');
/*!40000 ALTER TABLE `tipo_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `fecha` date NOT NULL,
  `subTotal` decimal(10,0) NOT NULL,
  `iva` decimal(10,0) NOT NULL,
  `descuento` decimal(10,0) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `clientes_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ventas_clientes1_idx` (`clientes_id`),
  CONSTRAINT `fk_ventas_clientes1` FOREIGN KEY (`clientes_id`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,'Anastasia','2023-08-22',17000,1000,850,17150,10),(2,'Ana','2023-07-06',29000,3000,1450,30550,6),(3,'Maria','2023-02-15',20000,5000,1000,24000,4),(4,'Claudio','2023-02-09',13000,2000,650,14350,5),(5,'Jesus','2023-08-11',32000,4000,1600,34400,3),(6,'Tomas','2023-03-31',36000,1000,1800,35200,9),(7,'Diego','2023-02-09',23000,5000,1150,26850,7),(8,'Alba','2023-04-10',28000,2000,1400,28600,2),(9,'Antonia','2023-02-25',15000,3000,750,17250,8),(10,'Pedro','2023-07-13',26000,4000,1300,28700,1),(11,'Antonia','2023-05-24',10000,2000,500,11500,8),(12,'Ana','2023-02-12',25000,1000,1250,24750,6),(13,'Alba','2023-02-13',16000,3000,800,18200,2),(14,'Tomas','2023-05-13',18000,5000,900,22100,9),(15,'Maria','2023-06-15',23000,4000,1150,25850,4),(16,'Diego','2023-06-17',18000,1000,900,18100,7),(17,'Anastasia','2023-04-06',22000,4000,1100,24900,10),(18,'Claudio','2023-07-16',24000,3000,1200,25800,5),(19,'Jesus','2023-05-13',38000,2000,1900,38100,3),(20,'Pedro','2023-07-17',40000,5000,2000,43000,1);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas_has_productos`
--

DROP TABLE IF EXISTS `ventas_has_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas_has_productos` (
  `ventas_id` int NOT NULL,
  `productos_id` int NOT NULL,
  PRIMARY KEY (`ventas_id`,`productos_id`),
  KEY `fk_ventas_has_productos_productos1_idx` (`productos_id`),
  KEY `fk_ventas_has_productos_ventas1_idx` (`ventas_id`),
  CONSTRAINT `fk_ventas_has_productos_productos1` FOREIGN KEY (`productos_id`) REFERENCES `productos` (`id`),
  CONSTRAINT `fk_ventas_has_productos_ventas1` FOREIGN KEY (`ventas_id`) REFERENCES `ventas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas_has_productos`
--

LOCK TABLES `ventas_has_productos` WRITE;
/*!40000 ALTER TABLE `ventas_has_productos` DISABLE KEYS */;
INSERT INTO `ventas_has_productos` VALUES (11,1),(10,2),(17,3),(13,4),(5,5),(8,6),(1,7),(15,8),(7,9),(4,10),(12,11),(2,12),(9,13),(14,14),(6,15),(16,16),(18,17),(19,18),(20,19),(3,20);
/*!40000 ALTER TABLE `ventas_has_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'actividad_2'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-30 19:22:18
