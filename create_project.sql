-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: main
-- ------------------------------------------------------
-- Server version	8.0.31

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






--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `course_course_id` int NOT NULL,
  `course_year_number` date NOT NULL,
  `course_semester` varchar(20) NOT NULL,
  `class_group` int NOT NULL,
  `professor_professor_id` int NOT NULL,
  PRIMARY KEY (`course_course_id`,`course_year_number`,`course_semester`,`class_group`),
  KEY `fk_class_course1_idx` (`course_course_id`,`course_year_number`,`course_semester`),
  KEY `fk_class_professor1_idx` (`professor_professor_id`),
  CONSTRAINT `fk_class_course1` FOREIGN KEY (`course_course_id`, `course_year_number`, `course_semester`) REFERENCES `course` (`course_id`, `year_number`, `semester`),
  CONSTRAINT `fk_class_professor1` FOREIGN KEY (`professor_professor_id`) REFERENCES `professor` (`professor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (5,'1401-01-01','زمستان',1,3),(5,'1401-01-01','پاییز',1,3),(5,'1402-01-01','زمستان',1,3),(5,'1402-01-01','پاییز',1,3),(3,'1402-01-01','زمستان',1,4),(3,'1402-01-01','پاییز',1,4),(1,'1401-01-01','زمستان',1,5),(1,'1401-01-01','پاییز',1,5),(1,'1402-01-01','زمستان',1,5),(1,'1402-01-01','پاییز',1,5),(2,'1401-01-01','زمستان',1,6),(2,'1401-01-01','پاییز',1,6),(2,'1402-01-01','زمستان',1,6),(2,'1402-01-01','پاییز',1,6),(4,'1401-01-01','زمستان',1,6),(4,'1401-01-01','پاییز',1,6),(4,'1402-01-01','زمستان',1,6),(4,'1402-01-01','پاییز',1,6);
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_has_class_time`
--

DROP TABLE IF EXISTS `class_has_class_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_has_class_time` (
  `class_course_course_id` int NOT NULL,
  `class_course_year_number` date NOT NULL,
  `class_course_semester` varchar(20) NOT NULL,
  `class_class_group` int NOT NULL,
  `class_time_class_time_day` varchar(15) NOT NULL,
  `class_time_class_time_hour` time NOT NULL,
  PRIMARY KEY (`class_course_course_id`,`class_course_year_number`,`class_course_semester`,`class_class_group`,`class_time_class_time_day`,`class_time_class_time_hour`),
  KEY `fk_class_has_class_time_class_time1_idx` (`class_time_class_time_day`,`class_time_class_time_hour`),
  KEY `fk_class_has_class_time_class1_idx` (`class_course_course_id`,`class_course_year_number`,`class_course_semester`,`class_class_group`),
  CONSTRAINT `fk_class_has_class_time_class1` FOREIGN KEY (`class_course_course_id`, `class_course_year_number`, `class_course_semester`, `class_class_group`) REFERENCES `class` (`course_course_id`, `course_year_number`, `course_semester`, `class_group`),
  CONSTRAINT `fk_class_has_class_time_class_time1` FOREIGN KEY (`class_time_class_time_day`, `class_time_class_time_hour`) REFERENCES `class_time` (`class_time_day`, `class_time_hour`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_has_class_time`
--

LOCK TABLES `class_has_class_time` WRITE;
/*!40000 ALTER TABLE `class_has_class_time` DISABLE KEYS */;
INSERT INTO `class_has_class_time` VALUES (2,'1401-01-01','زمستان',1,'دوشنبه','08:00:00'),(2,'1401-01-01','پاییز',1,'دوشنبه','08:00:00'),(2,'1402-01-01','زمستان',1,'دوشنبه','08:00:00'),(2,'1402-01-01','پاییز',1,'دوشنبه','08:00:00'),(3,'1402-01-01','زمستان',1,'سه شنبه','08:00:00'),(3,'1402-01-01','پاییز',1,'سه شنبه','08:00:00'),(1,'1401-01-01','زمستان',1,'شنبه','08:00:00'),(1,'1401-01-01','پاییز',1,'شنبه','08:00:00'),(1,'1402-01-01','زمستان',1,'شنبه','08:00:00'),(1,'1402-01-01','پاییز',1,'شنبه','08:00:00'),(5,'1401-01-01','زمستان',1,'شنبه','10:00:00'),(5,'1401-01-01','پاییز',1,'شنبه','10:00:00'),(5,'1402-01-01','زمستان',1,'شنبه','10:00:00'),(5,'1402-01-01','پاییز',1,'شنبه','10:00:00'),(4,'1401-01-01','زمستان',1,'چهارشنبه','08:00:00'),(4,'1401-01-01','پاییز',1,'چهارشنبه','08:00:00'),(4,'1402-01-01','زمستان',1,'چهارشنبه','08:00:00'),(4,'1402-01-01','پاییز',1,'چهارشنبه','08:00:00');
/*!40000 ALTER TABLE `class_has_class_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_has_final_schedule`
--

DROP TABLE IF EXISTS `class_has_final_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_has_final_schedule` (
  `class_course_course_id` int NOT NULL,
  `class_course_year_number` date NOT NULL,
  `class_course_semester` varchar(20) NOT NULL,
  `class_class_group` int NOT NULL,
  `final_schedule_student_student_id` int NOT NULL,
  PRIMARY KEY (`class_course_course_id`,`class_course_year_number`,`class_course_semester`,`class_class_group`,`final_schedule_student_student_id`),
  KEY `fk_class_has_final_schedule_final_schedule1_idx` (`final_schedule_student_student_id`),
  KEY `fk_class_has_final_schedule_class1_idx` (`class_course_course_id`,`class_course_year_number`,`class_course_semester`,`class_class_group`),
  CONSTRAINT `fk_class_has_final_schedule_class1` FOREIGN KEY (`class_course_course_id`, `class_course_year_number`, `class_course_semester`, `class_class_group`) REFERENCES `class` (`course_course_id`, `course_year_number`, `course_semester`, `class_group`),
  CONSTRAINT `fk_class_has_final_schedule_final_schedule1` FOREIGN KEY (`final_schedule_student_student_id`) REFERENCES `final_schedule` (`student_student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_has_final_schedule`
--

LOCK TABLES `class_has_final_schedule` WRITE;
/*!40000 ALTER TABLE `class_has_final_schedule` DISABLE KEYS */;
INSERT INTO `class_has_final_schedule` VALUES (2,'1402-01-01','پاییز',1,5);
/*!40000 ALTER TABLE `class_has_final_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_has_student`
--

DROP TABLE IF EXISTS `class_has_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_has_student` (
  `class_course_course_id` int NOT NULL,
  `class_course_year_number` date NOT NULL,
  `class_course_semester` varchar(20) NOT NULL,
  `class_class_group` int NOT NULL,
  `student_student_id` int NOT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `passed` tinyint(1) DEFAULT NULL,
  `absence` int DEFAULT NULL,
  `student_grade` float DEFAULT NULL,
  `prof_grade` float DEFAULT NULL,
  `signed` tinyint(1) NOT NULL,
  PRIMARY KEY (`class_course_course_id`,`class_course_year_number`,`class_course_semester`,`class_class_group`,`student_student_id`),
  KEY `fk_class_has_student_student1_idx` (`student_student_id`),
  KEY `fk_class_has_student_class1_idx` (`class_course_course_id`,`class_course_year_number`,`class_course_semester`,`class_class_group`),
  CONSTRAINT `fk_class_has_student_class1` FOREIGN KEY (`class_course_course_id`, `class_course_year_number`, `class_course_semester`, `class_class_group`) REFERENCES `class` (`course_course_id`, `course_year_number`, `course_semester`, `class_group`),
  CONSTRAINT `fk_class_has_student_student1` FOREIGN KEY (`student_student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_has_student`
--

LOCK TABLES `class_has_student` WRITE;
/*!40000 ALTER TABLE `class_has_student` DISABLE KEYS */;
INSERT INTO `class_has_student` VALUES (1,'1402-01-01','پاییز',1,1,0,1,2,16,17.12,1),(1,'1402-01-01','پاییز',1,2,1,0,2,16,17,1),(1,'1402-01-01','پاییز',1,3,0,0,2,9.13,12,1),(2,'1402-01-01','پاییز',1,2,0,1,1,15.53,12.16,1),(2,'1402-01-01','پاییز',1,5,1,1,1,NULL,NULL,0);
/*!40000 ALTER TABLE `class_has_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_time`
--

DROP TABLE IF EXISTS `class_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class_time` (
  `class_time_day` varchar(15) NOT NULL,
  `class_time_hour` time NOT NULL,
  PRIMARY KEY (`class_time_day`,`class_time_hour`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_time`
--

LOCK TABLES `class_time` WRITE;
/*!40000 ALTER TABLE `class_time` DISABLE KEYS */;
INSERT INTO `class_time` VALUES ('دوشنبه','08:00:00'),('دوشنبه','10:00:00'),('دوشنبه','12:00:00'),('دوشنبه','14:00:00'),('دوشنبه','16:00:00'),('دوشنبه','18:00:00'),('سه شنبه','08:00:00'),('سه شنبه','10:00:00'),('سه شنبه','12:00:00'),('سه شنبه','14:00:00'),('سه شنبه','16:00:00'),('سه شنبه','18:00:00'),('شنبه','08:00:00'),('شنبه','10:00:00'),('شنبه','12:00:00'),('شنبه','14:00:00'),('شنبه','16:00:00'),('شنبه','18:00:00'),('چهارشنبه','08:00:00'),('چهارشنبه','10:00:00'),('چهارشنبه','12:00:00'),('چهارشنبه','14:00:00'),('چهارشنبه','16:00:00'),('چهارشنبه','18:00:00'),('یکشنبه','08:00:00'),('یکشنبه','10:00:00'),('یکشنبه','12:00:00'),('یکشنبه','14:00:00'),('یکشنبه','16:00:00'),('یکشنبه','18:00:00');
/*!40000 ALTER TABLE `class_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classroom`
--

DROP TABLE IF EXISTS `classroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classroom` (
  `classroom_id` int NOT NULL,
  `department_department_id` int NOT NULL,
  PRIMARY KEY (`classroom_id`),
  KEY `fk_class_department1_idx` (`department_department_id`),
  CONSTRAINT `fk_class_department1` FOREIGN KEY (`department_department_id`) REFERENCES `department` (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classroom`
--

LOCK TABLES `classroom` WRITE;
/*!40000 ALTER TABLE `classroom` DISABLE KEYS */;
INSERT INTO `classroom` VALUES (11,1),(12,1),(13,1),(21,1),(31,1);
/*!40000 ALTER TABLE `classroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classroom_has_class`
--

DROP TABLE IF EXISTS `classroom_has_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classroom_has_class` (
  `classroom_classroom_id` int NOT NULL,
  `class_course_course_id` int NOT NULL,
  `class_course_year_number` date NOT NULL,
  `class_course_semester` varchar(20) NOT NULL,
  `class_class_group` int NOT NULL,
  PRIMARY KEY (`classroom_classroom_id`,`class_course_course_id`,`class_course_year_number`,`class_course_semester`,`class_class_group`),
  KEY `fk_classroom_has_class_class1_idx` (`class_course_course_id`,`class_course_year_number`,`class_course_semester`,`class_class_group`),
  KEY `fk_classroom_has_class_classroom1_idx` (`classroom_classroom_id`),
  CONSTRAINT `fk_classroom_has_class_class1` FOREIGN KEY (`class_course_course_id`, `class_course_year_number`, `class_course_semester`, `class_class_group`) REFERENCES `class` (`course_course_id`, `course_year_number`, `course_semester`, `class_group`),
  CONSTRAINT `fk_classroom_has_class_classroom1` FOREIGN KEY (`classroom_classroom_id`) REFERENCES `classroom` (`classroom_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classroom_has_class`
--

LOCK TABLES `classroom_has_class` WRITE;
/*!40000 ALTER TABLE `classroom_has_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `classroom_has_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` int NOT NULL,
  `year_number` date NOT NULL,
  `semester` varchar(20) NOT NULL,
  `course_name` varchar(45) DEFAULT NULL,
  `final_time` datetime DEFAULT NULL,
  `coursecol` varchar(45) DEFAULT NULL,
  `group_group_id` int NOT NULL,
  `unit` int NOT NULL,
  PRIMARY KEY (`course_id`,`year_number`,`semester`),
  KEY `fk_course_group1_idx` (`group_group_id`),
  CONSTRAINT `fk_course_group1` FOREIGN KEY (`group_group_id`) REFERENCES `group` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'1401-01-01','زمستان','سیستم عامل','1401-03-23 08:00:00',NULL,1,3),(1,'1401-01-01','پاییز','سیستم عامل','1401-10-23 08:00:00',NULL,1,3),(1,'1402-01-01','زمستان','سیستم عامل','1402-03-23 08:00:00',NULL,1,3),(1,'1402-01-01','پاییز','سیستم عامل','1402-10-23 08:00:00',NULL,1,3),(2,'1401-01-01','زمستان','شبکه','1401-03-26 10:00:00',NULL,1,3),(2,'1401-01-01','پاییز','شبکه','1401-10-26 10:00:00',NULL,1,3),(2,'1402-01-01','زمستان','شبکه','1402-03-26 10:00:00',NULL,1,3),(2,'1402-01-01','پاییز','شبکه','1402-10-26 10:00:00',NULL,1,3),(3,'1402-01-01','زمستان','برق کشی','1402-03-23 08:00:00',NULL,2,2),(3,'1402-01-01','پاییز','برق کشی','1402-10-23 08:00:00',NULL,2,2),(4,'1401-01-01','زمستان','آزمایشگاه شبکه','1401-03-28 12:00:00',NULL,1,2),(4,'1401-01-01','پاییز','آزمایشگاه شبکه','1401-10-28 12:00:00',NULL,1,1),(4,'1402-01-01','زمستان','آزمایشگاه شبکه','1402-03-28 12:00:00',NULL,1,1),(4,'1402-01-01','پاییز','آزمایشگاه شبکه','1402-10-28 12:00:00',NULL,1,1),(5,'1401-01-01','زمستان','معماری','1401-03-28 14:00:00',NULL,1,3),(5,'1401-01-01','پاییز','معماری','1401-10-28 14:00:00',NULL,1,3),(5,'1402-01-01','زمستان','معماری','1402-03-28 14:00:00',NULL,1,3),(5,'1402-01-01','پاییز','معماری','1402-10-28 14:00:00',NULL,1,3);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `department_id` int NOT NULL,
  `department_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`department_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'مهندسی');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `during`
--

DROP TABLE IF EXISTS `during`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `during` (
  `course_id` int NOT NULL,
  `during_id` int NOT NULL,
  PRIMARY KEY (`course_id`,`during_id`),
  KEY `fk_during_course2_idx` (`during_id`),
  CONSTRAINT `fk_during_course1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  CONSTRAINT `fk_during_course2` FOREIGN KEY (`during_id`) REFERENCES `course` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `during`
--

LOCK TABLES `during` WRITE;
/*!40000 ALTER TABLE `during` DISABLE KEYS */;
INSERT INTO `during` VALUES (2,4);
/*!40000 ALTER TABLE `during` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `final_schedule`
--

DROP TABLE IF EXISTS `final_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `final_schedule` (
  `student_student_id` int NOT NULL,
  PRIMARY KEY (`student_student_id`),
  CONSTRAINT `fk_table1_student1` FOREIGN KEY (`student_student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `final_schedule`
--

LOCK TABLES `final_schedule` WRITE;
/*!40000 ALTER TABLE `final_schedule` DISABLE KEYS */;
INSERT INTO `final_schedule` VALUES (5);
/*!40000 ALTER TABLE `final_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food` (
  `food_id` int NOT NULL,
  `food_name` varchar(45) DEFAULT NULL,
  `cost` int DEFAULT NULL,
  PRIMARY KEY (`food_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food`
--

LOCK TABLES `food` WRITE;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
INSERT INTO `food` VALUES (1,'مرغ',6),(2,'ماهی',6),(3,'قیمه',4),(4,'sp',12);
/*!40000 ALTER TABLE `food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_has_foodtime`
--

DROP TABLE IF EXISTS `food_has_foodtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_has_foodtime` (
  `food_food_id` int NOT NULL,
  `foodtime_food_date` date NOT NULL,
  `foodtime_food_shift` varchar(45) NOT NULL,
  PRIMARY KEY (`food_food_id`,`foodtime_food_date`,`foodtime_food_shift`),
  KEY `fk_food_has_foodtime_foodtime1_idx` (`foodtime_food_date`,`foodtime_food_shift`),
  KEY `fk_food_has_foodtime_food1_idx` (`food_food_id`),
  CONSTRAINT `fk_food_has_foodtime_food1` FOREIGN KEY (`food_food_id`) REFERENCES `food` (`food_id`),
  CONSTRAINT `fk_food_has_foodtime_foodtime1` FOREIGN KEY (`foodtime_food_date`, `foodtime_food_shift`) REFERENCES `foodtime` (`food_date`, `food_shift`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_has_foodtime`
--

LOCK TABLES `food_has_foodtime` WRITE;
/*!40000 ALTER TABLE `food_has_foodtime` DISABLE KEYS */;
INSERT INTO `food_has_foodtime` VALUES (1,'1402-01-01','ظهر'),(1,'1402-01-03','شب'),(2,'1402-01-02','شب'),(2,'1402-01-02','ظهر'),(3,'1402-01-01','شب'),(3,'1402-01-03','ظهر'),(4,'1402-01-01','ظهر');
/*!40000 ALTER TABLE `food_has_foodtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_reservation`
--

DROP TABLE IF EXISTS `food_reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_reservation` (
  `food_has_foodtime_food_food_id` int NOT NULL,
  `food_has_foodtime_foodtime_food_date` date NOT NULL,
  `food_has_foodtime_foodtime_food_shift` varchar(45) NOT NULL,
  `student_student_id` int NOT NULL,
  PRIMARY KEY (`food_has_foodtime_food_food_id`,`food_has_foodtime_foodtime_food_date`,`food_has_foodtime_foodtime_food_shift`,`student_student_id`),
  KEY `fk_food_has_foodtime_has_student_student1_idx` (`student_student_id`),
  KEY `fk_food_has_foodtime_has_student_food_has_foodtime1_idx` (`food_has_foodtime_food_food_id`,`food_has_foodtime_foodtime_food_date`,`food_has_foodtime_foodtime_food_shift`),
  CONSTRAINT `fk_food_has_foodtime_has_student_food_has_foodtime1` FOREIGN KEY (`food_has_foodtime_food_food_id`, `food_has_foodtime_foodtime_food_date`, `food_has_foodtime_foodtime_food_shift`) REFERENCES `food_has_foodtime` (`food_food_id`, `foodtime_food_date`, `foodtime_food_shift`),
  CONSTRAINT `fk_food_has_foodtime_has_student_student1` FOREIGN KEY (`student_student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_reservation`
--

LOCK TABLES `food_reservation` WRITE;
/*!40000 ALTER TABLE `food_reservation` DISABLE KEYS */;
INSERT INTO `food_reservation` VALUES (1,'1402-01-01','ظهر',1),(3,'1402-01-01','شب',1),(2,'1402-01-02','ظهر',2),(1,'1402-01-01','ظهر',3),(3,'1402-01-03','ظهر',3),(2,'1402-01-02','ظهر',4),(3,'1402-01-01','شب',4),(2,'1402-01-02','شب',8),(2,'1402-01-02','شب',9);
/*!40000 ALTER TABLE `food_reservation` ENABLE KEYS */;
UNLOCK TABLES;



--
-- Table structure for table `foodtime`
--

DROP TABLE IF EXISTS `foodtime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `foodtime` (
  `food_date` date NOT NULL,
  `food_shift` varchar(45) NOT NULL,
  PRIMARY KEY (`food_date`,`food_shift`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foodtime`
--

LOCK TABLES `foodtime` WRITE;
/*!40000 ALTER TABLE `foodtime` DISABLE KEYS */;
INSERT INTO `foodtime` VALUES ('1402-01-01','شب'),('1402-01-01','صبح'),('1402-01-01','ظهر'),('1402-01-02','شب'),('1402-01-02','صبح'),('1402-01-02','ظهر'),('1402-01-03','شب'),('1402-01-03','صبح'),('1402-01-03','ظهر');
/*!40000 ALTER TABLE `foodtime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group` (
  `group_id` int NOT NULL,
  `group_name` varchar(45) DEFAULT NULL,
  `department_department_id` int NOT NULL,
  `head_id` int DEFAULT NULL,
  PRIMARY KEY (`group_id`),
  KEY `fk_group_department1_idx` (`department_department_id`),
  KEY `group_professor_professor_id_fk` (`head_id`),
  CONSTRAINT `group_ibfk_1` FOREIGN KEY (`department_department_id`) REFERENCES `department` (`department_id`),
  CONSTRAINT `group_professor_professor_id_fk` FOREIGN KEY (`head_id`) REFERENCES `professor` (`professor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group`
--

LOCK TABLES `group` WRITE;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;
INSERT INTO `group` VALUES (1,'کامپیوتر',1,1),(2,'برق',1,4);
/*!40000 ALTER TABLE `group` ENABLE KEYS */;
UNLOCK TABLES;





--
-- Table structure for table `previous`
--

DROP TABLE IF EXISTS `previous`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `previous` (
  `course_id` int NOT NULL,
  `previoud_id` int NOT NULL,
  PRIMARY KEY (`course_id`,`previoud_id`),
  KEY `fk_previous_course2_idx` (`previoud_id`),
  CONSTRAINT `fk_previous_course1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  CONSTRAINT `fk_previous_course2` FOREIGN KEY (`previoud_id`) REFERENCES `course` (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `previous`
--

LOCK TABLES `previous` WRITE;
/*!40000 ALTER TABLE `previous` DISABLE KEYS */;
INSERT INTO `previous` VALUES (1,5),(2,5);
/*!40000 ALTER TABLE `previous` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `professor_id` int NOT NULL,
  `professor_name` varchar(45) DEFAULT NULL,
  `is_head` binary(1) NOT NULL,
  PRIMARY KEY (`professor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
INSERT INTO `professor` VALUES (1,'واحدیان',_binary '1'),(2,'کاهانی',_binary '0'),(3,'نوری',_binary '0'),(4,'قنبری',_binary '0'),(5,'اله بخش',_binary '0'),(6,'یغمایی',_binary '0');
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant` (
  `restaurant_id` int NOT NULL,
  `restaurant_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'زیتون'),(2,'فجر');
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant_has_food`
--

DROP TABLE IF EXISTS `restaurant_has_food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurant_has_food` (
  `restaurant_restaurant_id` int NOT NULL,
  `food_food_id` int NOT NULL,
  PRIMARY KEY (`restaurant_restaurant_id`,`food_food_id`),
  KEY `fk_restaurant_has_food_food1_idx` (`food_food_id`),
  KEY `fk_restaurant_has_food_restaurant1_idx` (`restaurant_restaurant_id`),
  CONSTRAINT `fk_restaurant_has_food_food1` FOREIGN KEY (`food_food_id`) REFERENCES `food` (`food_id`),
  CONSTRAINT `fk_restaurant_has_food_restaurant1` FOREIGN KEY (`restaurant_restaurant_id`) REFERENCES `restaurant` (`restaurant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant_has_food`
--

LOCK TABLES `restaurant_has_food` WRITE;
/*!40000 ALTER TABLE `restaurant_has_food` DISABLE KEYS */;
INSERT INTO `restaurant_has_food` VALUES (1,1),(2,1),(1,2),(2,2),(1,3),(2,3);
/*!40000 ALTER TABLE `restaurant_has_food` ENABLE KEYS */;
UNLOCK TABLES;



--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int NOT NULL,
  `student_name` varchar(45) DEFAULT NULL,
  `student_phone_number` varchar(15) DEFAULT NULL,
  `group_group_id` int NOT NULL,
  `average` float DEFAULT NULL,
  `entry_year` date DEFAULT NULL,
  `term` int DEFAULT NULL,
  `wallet` int DEFAULT NULL,
  `total_unit` int DEFAULT NULL,
  `term_unit` int DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `fk_student_group1_idx` (`group_group_id`),
  CONSTRAINT `fk_student_group1` FOREIGN KEY (`group_group_id`) REFERENCES `group` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'ali','09151111111',1,15.8433,NULL,NULL,NULL,NULL,NULL),(2,'bagher','09151111112',1,15.8433,NULL,NULL,NULL,18,NULL),(3,'sina','09151111113',1,9.13,NULL,NULL,NULL,9,NULL),(4,'dara','09151111114',2,15.8433,NULL,NULL,NULL,NULL,NULL),(5,'erfan','09151111115',1,NULL,NULL,NULL,NULL,3,6),(6,'fatemeh','09151111116',1,15.8433,NULL,NULL,NULL,NULL,NULL),(7,'ghorban','09151111117',1,15.8433,NULL,NULL,NULL,NULL,NULL),(8,'hesam','09151111118',1,15.8433,NULL,NULL,NULL,NULL,NULL),(9,'naghi','09154444444',1,15.8433,'1402-01-01',6,14994,106,16);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-03 10:40:07
