-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: todolist
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks` (
  `task_id` int NOT NULL AUTO_INCREMENT,
  `task_name` varchar(45) NOT NULL,
  `cat_id` int NOT NULL,
  `date` date NOT NULL,
  `task_desc` varchar(120) NOT NULL,
  `task_status` varchar(20) NOT NULL,
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (1,'Biceps',1,'2023-06-17','Gym jao Excersice kro','completed'),(2,'complete the assignments',34,'2023-06-19','complete the assignments ','completed'),(3,'cook the lunch',35,'2023-06-20','prepare the lunch','completed'),(4,'practice katthak dance',36,'2023-06-21','practice katthak','completed'),(5,'time to eat lunch',37,'2023-06-20','eat food','completed'),(6,'dkmlkdwrmv',35,'2023-06-10','rt rv','completed'),(7,'bkjkjkjkjbj',35,'2023-06-07','kjbjbjbjk','completed'),(8,'ergergergerg',35,'2000-02-12','sdvwdev','completed'),(10,'EFwefWEFSDVed',34,'2000-02-12','dCSDVsv','completed'),(11,'eWEVewvEW',35,'2019-02-05','ASvAS','completed'),(13,'preapare food for dinner',37,'2023-06-20','prepare food.','completed'),(14,'klkmkmk',37,'2012-05-12','kmkmm;','completed'),(15,'jjjknjnjnk',36,'2006-06-06','imiioo','completed'),(16,'kjefbjkqwekjf',37,'2021-05-04','wkjebevdw ked','completed'),(19,'kklnnnlkknkln',36,'2020-09-09','bkbkbkjb','completed'),(20,'create project',36,'2004-04-04','craete project','completed'),(21,'vollyball',37,'2023-02-05','play vollyball at evening 6pm\n','completed'),(22,'free style',36,'2023-06-22','katthak','completed'),(23,'time to eat lunch',37,'2023-06-19','misal pav with gulabjamun','completed'),(24,'preparing for exam',34,'2023-06-21','preparing for exam','completed'),(25,'practice yoga',38,'2023-06-20','practice yoga ','completed'),(26,'zumba dance',38,'2023-06-21','practice zumba dance','completed'),(27,'play rollball',39,'2023-06-21','practice rollball at 7:00 PM','pending'),(28,'Data Science with Python',34,'2023-06-24','practice NumPy,Pandas,Ndarrays','completed'),(30,'Do Swimming ',38,'2023-07-11','practice swimming','completed'),(33,'submit the project',35,'2023-02-05','submit the project','completed'),(34,'gkgjgkjgjg',34,'2023-02-21','khhhl','completed'),(35,'erw;ekv;m;l',38,'2023-05-06','jk','completed'),(37,'kewfqjk',35,'2023-02-24','kwejkqw','completed'),(38,'make food',35,'2023-07-04','cook food','completed'),(39,'Interview Preaparation',34,'2023-07-05','interview preparation','pending'),(40,'project submission',34,'2023-05-07','submit the project ','pending'),(41,'complete the project',34,'2023-07-04','Complete the remaining work of the project','pending'),(42,'Play vollyball',39,'2023-07-07','play vollyball at college','pending');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-05 15:31:43
