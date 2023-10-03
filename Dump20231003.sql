-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: parts
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
-- Table structure for table `part`
--

DROP TABLE IF EXISTS `part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `part` (
  `P_ID` varchar(10) NOT NULL,
  `PNAME` varchar(20) NOT NULL,
  `COLOUR` char(15) NOT NULL,
  `WEIGHT` int NOT NULL,
  `CITY` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part`
--

LOCK TABLES `part` WRITE;
/*!40000 ALTER TABLE `part` DISABLE KEYS */;
INSERT INTO `part` VALUES ('P1','NUT','RED',12,'LONDON'),('P2','BOLT','GREEN',17,'PARIS'),('P3','SCREW','BLUE',17,'ROME'),('P4','SCREW','RED',14,'LONDON'),('P5','CAM','BLUE',12,'PARIS'),('P6','COG','RED',19,'LONDON');
/*!40000 ALTER TABLE `part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `J_ID` varchar(5) NOT NULL,
  `JNAME` char(15) NOT NULL,
  `CITY` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES ('J1','SORTER','PARIS'),('J2','DISPLAY','ROME'),('J3','OCR','ATHENS'),('J4','CONSOLE','ATHENS'),('J5','RAID','LONDON'),('J6','EDS','OSLO'),('J7','TAPE','LONDON');
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `S_ID` varchar(5) NOT NULL,
  `SNAME` char(15) NOT NULL,
  `STATUS` int NOT NULL,
  `CITY` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES ('S1','SMITH',20,'LONDON'),('S2','JONES',10,'PARIS'),('S3','BLAKE',30,'PARIS'),('S4','CLARK',20,'LONDON'),('S5','ADAMS',30,'ATHENS');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supply`
--

DROP TABLE IF EXISTS `supply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supply` (
  `S_ID` varchar(5) NOT NULL,
  `P_ID` varchar(10) NOT NULL,
  `J_ID` varchar(5) NOT NULL,
  `QUANTITY` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supply`
--

LOCK TABLES `supply` WRITE;
/*!40000 ALTER TABLE `supply` DISABLE KEYS */;
INSERT INTO `supply` VALUES ('S1','P1','J1',200),('S1','P1','J4',700),('S2','P3','J1',400),('S2','P3','J2',200),('S2','P3','J3',200),('S2','P3','J4',500),('S2','P3','J5',600),('S2','P3','J6',400),('S2','P3','J7',800),('S2','P5','J2',100),('S3','P3','J1',200),('S3','P4','J2',500),('S4','P6','J3',300),('S4','P6','J7',300),('S5','P2','J2',200),('S5','P2','J4',100),('S5','P5','J5',500),('S5','P5','J7',100),('S5','P6','J2',200),('S5','P1','J4',100),('S5','P3','J4',200),('S5','P4','J4',800),('S5','P5','J4',400),('S5','P6','J4',500);
/*!40000 ALTER TABLE `supply` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-03 17:31:09
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: bank
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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `account_number` int NOT NULL,
  `account_holder_name` varchar(50) DEFAULT NULL,
  `account_holder_surname` varchar(50) DEFAULT NULL,
  `balance` float DEFAULT NULL,
  `overdraft_allowed` tinyint(1) DEFAULT NULL,
  UNIQUE KEY `account_number` (`account_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (111112,'Julie','Smith',150,1),(111113,'James','Andrews',20,0),(111114,'Jack','Oakes',-70,1),(111115,'Jasper','Wolf',200,1);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-03 17:31:09
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: kjoprite
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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `Order_ID` int NOT NULL,
  `Customer_ID` int DEFAULT NULL,
  `Cost` decimal(10,0) NOT NULL,
  KEY `Order_ID` (`Order_ID`),
  KEY `Customer_ID` (`Customer_ID`),
  CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`Order_ID`) REFERENCES `orders` (`ID`),
  CONSTRAINT `accounts_ibfk_2` FOREIGN KEY (`Customer_ID`) REFERENCES `deposit` (`Franchisors_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (1,6,700),(2,6,400),(3,6,800),(4,7,800),(5,7,1000),(6,7,600),(11,5,650),(10,4,550),(7,7,300),(8,4,801),(9,4,951);
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `balance_sheet`
--

DROP TABLE IF EXISTS `balance_sheet`;
/*!50001 DROP VIEW IF EXISTS `balance_sheet`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `balance_sheet` AS SELECT 
 1 AS `Franchisor_ID`,
 1 AS `order_id`,
 1 AS `Product`,
 1 AS `order_date`,
 1 AS `Quantity`,
 1 AS `cost`,
 1 AS `Total_cost`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `delivery_instructions`
--

DROP TABLE IF EXISTS `delivery_instructions`;
/*!50001 DROP VIEW IF EXISTS `delivery_instructions`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `delivery_instructions` AS SELECT 
 1 AS `Order_id`,
 1 AS `Delivery_point`,
 1 AS `Product`,
 1 AS `Category`,
 1 AS `Delivery_status`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `deposit`
--

DROP TABLE IF EXISTS `deposit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deposit` (
  `Franchisors_ID` int NOT NULL,
  `Date_of_deposit` date NOT NULL,
  `Amount` decimal(10,0) NOT NULL,
  PRIMARY KEY (`Franchisors_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposit`
--

LOCK TABLES `deposit` WRITE;
/*!40000 ALTER TABLE `deposit` DISABLE KEYS */;
INSERT INTO `deposit` VALUES (1,'2022-12-30',1000000),(2,'2023-02-20',1000000),(3,'2023-10-30',500000),(4,'2022-12-30',1000000),(5,'2023-12-30',90000),(6,'2023-09-26',100500),(7,'2022-02-28',100000);
/*!40000 ALTER TABLE `deposit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `franchisor`
--

DROP TABLE IF EXISTS `franchisor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `franchisor` (
  `Franchisor_ID` int NOT NULL,
  `Phone_number` varchar(11) NOT NULL,
  `Address` varchar(55) NOT NULL,
  PRIMARY KEY (`Address`),
  UNIQUE KEY `Franchisor_ID` (`Franchisor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `franchisor`
--

LOCK TABLES `franchisor` WRITE;
/*!40000 ALTER TABLE `franchisor` DISABLE KEYS */;
INSERT INTO `franchisor` VALUES (6,'987324567','Byggevie 56'),(4,'466789086','Dronningsvei 76'),(7,'87654367','Gamlevei 2'),(5,'735483645','Hamar 7'),(1,'465789887','Kongsvei 3'),(2,'87687625','Oslo 12'),(3,'97643272','Stavanger 8');
/*!40000 ALTER TABLE `franchisor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `franchisors_details`
--

DROP TABLE IF EXISTS `franchisors_details`;
/*!50001 DROP VIEW IF EXISTS `franchisors_details`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `franchisors_details` AS SELECT 
 1 AS `Franchisor_ID`,
 1 AS `Phone_number`,
 1 AS `Address`,
 1 AS `Postcode`,
 1 AS `City`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `Customer_ID` int NOT NULL,
  `Address` varchar(55) NOT NULL,
  `Postcode` int NOT NULL,
  `City` varchar(50) NOT NULL,
  PRIMARY KEY (`City`),
  UNIQUE KEY `Customer_ID` (`Customer_ID`),
  KEY `Address` (`Address`),
  CONSTRAINT `location_ibfk_1` FOREIGN KEY (`Address`) REFERENCES `franchisor` (`Address`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (6,'Byggevie 56',3456,'Baerum'),(4,'Dronningsvei 76',2654,'Bergen'),(2,'Oslo 12',8765,'Brokkoli'),(7,'Gamlevei 2',2654,'Hamar'),(5,'Hamar 7',1176,'Innlandet'),(1,'Kongsvei 3',7654,'Oslo'),(3,'Stavanger 8',2624,'Stavanger');
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Product` char(55) NOT NULL,
  `Category` char(55) NOT NULL,
  `Order_date` date DEFAULT NULL,
  `Quantity` int NOT NULL,
  `Delivery_point` varchar(55) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Delivery_point` (`Delivery_point`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Delivery_point`) REFERENCES `franchisor` (`Address`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'Dairy','Highly perishable','2023-03-28',5,'Byggevie 56'),(2,'Fruits','Highly perishable','2023-03-28',12,'Byggevie 56'),(3,'Vegetables','Highly perishable','2023-04-28',8,'Byggevie 56'),(4,'Vegetables','Highly perishable','2023-04-28',50,'Gamlevei 2'),(5,'Household products','non perishable','2023-02-28',18,'Gamlevei 2'),(6,'Pastries','Perishable','2023-04-28',20,'Gamlevei 2'),(7,'Flour','non perishable','2023-01-28',6,'Gamlevei 2'),(8,'Vegetables','Highly perishable','2023-10-28',50,'Dronningsvei 76'),(9,'Vegetables','Highly perishable','2023-08-28',10,'Dronningsvei 76'),(10,'Sweets','Non perishable','2022-12-28',50,'Dronningsvei 76'),(11,'Pastries','Perishable','2023-02-28',16,'Hamar 7');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_report`
--

DROP TABLE IF EXISTS `status_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_report` (
  `Delivery_id` int NOT NULL,
  `Delivery_status` char(50) NOT NULL,
  `Delivery_staff` char(50) NOT NULL,
  `Date_of_update` date DEFAULT NULL,
  KEY `Delivery_id` (`Delivery_id`),
  CONSTRAINT `status_report_ibfk_1` FOREIGN KEY (`Delivery_id`) REFERENCES `accounts` (`Order_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_report`
--

LOCK TABLES `status_report` WRITE;
/*!40000 ALTER TABLE `status_report` DISABLE KEYS */;
INSERT INTO `status_report` VALUES (1,'Delivered','Mark','2022-12-30'),(2,'Delivered','Mark','2022-12-30'),(3,'Halted','Stein','2022-11-30'),(4,'On transit','Ray','2023-09-30'),(5,'Halted','Ray','2023-11-30'),(6,'Delivered','Chidimma','2022-12-30'),(11,'Not delivered','Stein','2022-07-30'),(10,'Delivered','Dan','2022-12-30'),(7,'On transit','Dan','2022-09-30'),(8,'On transit','Chidimma','2022-12-30'),(9,'Not delivered','Vikar','2021-12-30');
/*!40000 ALTER TABLE `status_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `balance_sheet`
--

/*!50001 DROP VIEW IF EXISTS `balance_sheet`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `balance_sheet` AS select `f`.`Franchisor_ID` AS `Franchisor_ID`,`o`.`ID` AS `order_id`,`o`.`Product` AS `Product`,`o`.`Order_date` AS `order_date`,`o`.`Quantity` AS `Quantity`,`a`.`Cost` AS `cost`,sum((`o`.`Quantity` * `a`.`Cost`)) AS `Total_cost` from (((`franchisor` `f` join `orders` `o`) join `deposit` `d`) join `accounts` `a`) where ((`f`.`Franchisor_ID` = `d`.`Franchisors_ID`) and (`o`.`ID` = `a`.`Order_ID`)) group by `f`.`Franchisor_ID`,`o`.`ID`,`a`.`Cost`,`o`.`Quantity`,`o`.`ID` order by `f`.`Franchisor_ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `delivery_instructions`
--

/*!50001 DROP VIEW IF EXISTS `delivery_instructions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `delivery_instructions` AS select distinct `orders`.`ID` AS `Order_id`,`orders`.`Delivery_point` AS `Delivery_point`,`orders`.`Product` AS `Product`,`orders`.`Category` AS `Category`,`status_report`.`Delivery_status` AS `Delivery_status` from (`orders` join `status_report`) where (`status_report`.`Delivery_status` = 'Not Delivered') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `franchisors_details`
--

/*!50001 DROP VIEW IF EXISTS `franchisors_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `franchisors_details` AS select `franchisor`.`Franchisor_ID` AS `Franchisor_ID`,`franchisor`.`Phone_number` AS `Phone_number`,`location`.`Address` AS `Address`,`location`.`Postcode` AS `Postcode`,`location`.`City` AS `City` from (`location` join `franchisor` on((`franchisor`.`Address` = `location`.`Address`))) order by `franchisor`.`Franchisor_ID` */;
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

-- Dump completed on 2023-10-03 17:31:09
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: shop
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
-- Table structure for table `sales1`
--

DROP TABLE IF EXISTS `sales1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales1` (
  `Store` varchar(20) NOT NULL,
  `Week` varchar(20) NOT NULL,
  `Day` varchar(20) NOT NULL,
  `SalesPerson` varchar(20) NOT NULL,
  `SalesAmount` decimal(6,2) NOT NULL,
  `Month` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales1`
--

LOCK TABLES `sales1` WRITE;
/*!40000 ALTER TABLE `sales1` DISABLE KEYS */;
INSERT INTO `sales1` VALUES ('London','2','Monday','Frank',56.25,'May'),('London','5','Tuesday','Frank',74.32,'Sep'),('London','5','Monday','Bill',98.42,'Sep'),('London','5','Saturday','Bill',73.90,'Dec'),('London','1','Tuesday','Josie',44.27,'Sep'),('Dusseldorf','4','Monday','Manfred',77.00,'Jul'),('Dusseldorf','3','Tuesday','Annette',9.99,'Jun'),('Dusseldorf','4','Wednesday','Manfred',86.81,'Jul'),('London','6','Friday','Josie',74.02,'Oct'),('Dusseldorf','1','Saturday','Manfred',43.11,'Apr');
/*!40000 ALTER TABLE `sales1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_salespeople`
--

DROP TABLE IF EXISTS `vw_salespeople`;
/*!50001 DROP VIEW IF EXISTS `vw_salespeople`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_salespeople` AS SELECT 
 1 AS `salesperson`,
 1 AS `salesamount`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_salespeople`
--

/*!50001 DROP VIEW IF EXISTS `vw_salespeople`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_salespeople` AS select `sales1`.`SalesPerson` AS `salesperson`,`sales1`.`SalesAmount` AS `salesamount` from `sales1` */;
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

-- Dump completed on 2023-10-03 17:31:09
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: cfg_data
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
-- Table structure for table `savoury`
--

DROP TABLE IF EXISTS `savoury`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `savoury` (
  `id` int NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `price` float DEFAULT NULL,
  `main_ingredient` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `savoury`
--

LOCK TABLES `savoury` WRITE;
/*!40000 ALTER TABLE `savoury` DISABLE KEYS */;
INSERT INTO `savoury` VALUES (1,'sausage roll',1.25,'pork'),(2,'pasty',1,'potatos'),(3,'meat pie',2.45,NULL);
/*!40000 ALTER TABLE `savoury` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sweet`
--

DROP TABLE IF EXISTS `sweet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sweet` (
  `id` int NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sweet`
--

LOCK TABLES `sweet` WRITE;
/*!40000 ALTER TABLE `sweet` DISABLE KEYS */;
INSERT INTO `sweet` VALUES (1,'doughnut',0.5),(2,'croissant',0.75),(3,'cookies',0.88),(4,'yum nuts',1.12),(5,'apple pie',0.45),(11,'cherry_cake',5);
/*!40000 ALTER TABLE `sweet` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-03 17:31:10
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: customers
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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `address_id` int NOT NULL,
  `building_number` varchar(55) NOT NULL,
  `street` varchar(55) NOT NULL,
  `city` varchar(55) DEFAULT NULL,
  `post_code` varchar(55) NOT NULL,
  `country` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'20','Birch Alley','London','SE24 OAB','UK'),(2,'17','Oak Street','London','SE25 OXY',NULL);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customer_id` int NOT NULL,
  `first_name` varchar(55) NOT NULL,
  `last_name` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Sheryl','Cole'),(2,'Sam','Smith');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_address`
--

DROP TABLE IF EXISTS `email_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_address` (
  `email_address_id` int NOT NULL,
  `email_address_customer_id` int DEFAULT NULL,
  `email_address` varchar(55) NOT NULL,
  PRIMARY KEY (`email_address_id`),
  KEY `fk_email_address_customer` (`email_address_customer_id`),
  CONSTRAINT `fk_email_address_customer` FOREIGN KEY (`email_address_customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_address`
--

LOCK TABLES `email_address` WRITE;
/*!40000 ALTER TABLE `email_address` DISABLE KEYS */;
INSERT INTO `email_address` VALUES (1,2,'ssmith@mail.com'),(2,1,'jon@mail.com');
/*!40000 ALTER TABLE `email_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `orders_customer_id` int NOT NULL,
  `order_date` date NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'2019-08-20'),(2,2,'2019-03-15');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_number`
--

DROP TABLE IF EXISTS `phone_number`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_number` (
  `phone_number_id` int NOT NULL,
  `phone_number_customer_id` int NOT NULL,
  `phone_number` varchar(55) NOT NULL,
  PRIMARY KEY (`phone_number_id`),
  KEY `fk_phone_number_customer` (`phone_number_customer_id`),
  CONSTRAINT `fk_phone_number_customer` FOREIGN KEY (`phone_number_customer_id`) REFERENCES `customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_number`
--

LOCK TABLES `phone_number` WRITE;
/*!40000 ALTER TABLE `phone_number` DISABLE KEYS */;
INSERT INTO `phone_number` VALUES (1,1,'555-1212'),(2,2,'555-3344');
/*!40000 ALTER TABLE `phone_number` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-03 17:31:10
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: joins_practice
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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `EmployeeID` int NOT NULL,
  `Name` varchar(55) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ManagerID` int DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Mike',3),(2,'David',3),(3,'Roger',NULL),(4,'Marry',2),(5,'Joseph',2),(7,'Ben',2);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table1_fruit_basket`
--

DROP TABLE IF EXISTS `table1_fruit_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table1_fruit_basket` (
  `ID` int DEFAULT NULL,
  `Fruit` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table1_fruit_basket`
--

LOCK TABLES `table1_fruit_basket` WRITE;
/*!40000 ALTER TABLE `table1_fruit_basket` DISABLE KEYS */;
INSERT INTO `table1_fruit_basket` VALUES (1,'pear'),(2,'apple'),(3,'kiwi'),(4,'orange'),(5,'banana');
/*!40000 ALTER TABLE `table1_fruit_basket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table2_fruit_basket`
--

DROP TABLE IF EXISTS `table2_fruit_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table2_fruit_basket` (
  `ID` int DEFAULT NULL,
  `Fruit` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table2_fruit_basket`
--

LOCK TABLES `table2_fruit_basket` WRITE;
/*!40000 ALTER TABLE `table2_fruit_basket` DISABLE KEYS */;
INSERT INTO `table2_fruit_basket` VALUES (1,'pear'),(2,'apple'),(3,'kiwi'),(6,'melon'),(7,'peach'),(8,'plum');
/*!40000 ALTER TABLE `table2_fruit_basket` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-03 17:31:10
