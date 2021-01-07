-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: gwbcssis
-- ------------------------------------------------------
-- Server version	5.7.22-log

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

USE gwsis;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `ID_Student` int(11) NOT NULL AUTO_INCREMENT,
  `StudentID` varchar(16) NOT NULL,
  `LastName` varchar(24) NOT NULL,
  `FirstName` varchar(24) NOT NULL,
  `MiddleName` varchar(24) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `Gender` char(1) DEFAULT NULL,
  PRIMARY KEY (`ID_Student`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (33,'25004961','Dartling','Heather','Alice',NULL,'F'),(34,'25003514','Dartling','Lana','Cecille',NULL,'F'),(35,'25005833','Dartling','Jessica','Dorothy',NULL,'F'),(36,'25002589','Dartling','Kimberly','Genevieve',NULL,'F'),(37,'25007185','Dartling','Katherine','Lynnette',NULL,'F'),(38,'25006014','Dartling','Precious','Mariette',NULL,'F'),(39,'25007528','Dartling','Cindy','Patty',NULL,'F'),(40,'25003778','Dartling','Carlie','Raelene',NULL,'F'),(41,'25003605','Dartling','Clementine','Kendall',NULL,'F'),(42,'25002056','Dartling','Amirah','Angela',NULL,'F'),(43,'25004152','Dartling','Sarah','Serita',NULL,'F'),(44,'25004097','Dartling','Julia','Claire',NULL,'F'),(45,'25002311','Dartling','Jimmy','Carlton',NULL,'M'),(46,'25005602','Dartling','Joseph','Cyrus',NULL,'M'),(47,'25006805','Dartling','Perry','Danny',NULL,'M'),(48,'25006947','Dartling','Todd','Darren',NULL,'M'),(49,'25002714','Dartling','Tom','Deangelo',NULL,'M'),(50,'25005284','Dartling','Aditya','Dion',NULL,'M'),(51,'25006348','Dartling','Chris','Floyd',NULL,'M'),(52,'25002555','Dartling','Christopher','Horace',NULL,'M'),(53,'25005250','Dartling','Cole','Lino',NULL,'M'),(54,'25002325','Dartling','David','Lucien',NULL,'M'),(55,'25003773','Dartling','Dino','Lynwood',NULL,'M'),(56,'25003936','Dartling','John','Noelle',NULL,'M'),(57,'25005443','Dartling','Michael','Parker',NULL,'M'),(58,'25006762','Dartling','Patrick','Richard',NULL,'M'),(59,'25006027','Dartling','Robert','Riley',NULL,'M'),(60,'25002876','Dartling','Trevor','Seth',NULL,'M'),(61,'25007333','Dartling','Yasir','Solomon',NULL,'M'),(62,'25007334','Dartling','Kevin','Stewart',NULL,'M');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-27 23:37:56

-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: gwbcssis
-- ------------------------------------------------------
-- Server version	5.7.22-log

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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `ID_Course` int(11) NOT NULL AUTO_INCREMENT,
  `CourseCode` varchar(20) NOT NULL,
  `CourseName` varchar(50) NOT NULL,
  `CreditHours` int(11) DEFAULT NULL,
  `BootCampCourse` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`ID_Course`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` (`ID_Course`, `CourseCode`, `CourseName`, `CreditHours`, `BootCampCourse`) VALUES (1,'BC-DATAVIZ','Data Visualization and Analytics',12,1),(2,'BC-WEBDEV','Full Stack Web Development',12,1),(3,'BC-UIUX','User Interface/User Experience',12,1),(4,'CIS-349','Introduction to Databases',5,0),(5,'CIS-405','Database Programming',5,0),(6,'CIS-438','Database Administration',5,0),(7,'CIS-430','Business Systems Programming I',5,0),(8,'CIS-435','Business Systems Programming II',5,0);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-27 23:37:57

-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: gwbcssis
-- ------------------------------------------------------
-- Server version	5.7.22-log

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
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class` (
  `ID_Class` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Course` int(11) NOT NULL,
  `Section` varchar(20) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  PRIMARY KEY (`ID_Class`),
  KEY `FK_Class_Course` (`ID_Course`),
  CONSTRAINT `FK_Class_Course` FOREIGN KEY (`ID_Course`) REFERENCES `course` (`ID_Course`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` (`ID_Class`, `ID_Course`, `Section`, `StartDate`, `EndDate`) VALUES (1,1,'GWU-ARL-DATA-PT-09-09-2019-U-C-MW','2020-09-16','2020-03-14'),(2,1,'GWDC201805DATA3','2018-05-15','2018-11-08'),(3,2,'GWARL201905WEB3','2019-05-14','2019-11-07'),(4,3,'GWARL201905UIUX3','2019-05-14','2019-11-07');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-27 23:37:58

-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: gwbcssis
-- ------------------------------------------------------
-- Server version	5.7.22-log

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
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `ID_Staff` int(11) NOT NULL AUTO_INCREMENT,
  `EmployeeID` varchar(16) NOT NULL,
  `LastName` varchar(24) NOT NULL,
  `FirstName` varchar(24) NOT NULL,
  `MiddleName` varchar(24) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  PRIMARY KEY (`ID_Staff`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` (`ID_Staff`, `EmployeeID`, `LastName`, `FirstName`, `MiddleName`, `BirthDate`) VALUES (1,'000184220','Luongo','Darick','Nico','1995-07-05'),(2,'000130109','Sanford','Gemini','Blair','1992-04-22'),(3,'000160655','Williams','Dartanion','De Angelo','1993-05-21'),(4,'000159108','Rodney','Heather','Nicole','1994-06-07');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-27 23:37:59

-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: gwbcssis
-- ------------------------------------------------------
-- Server version	5.7.22-log

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
-- Table structure for table `staffassignment`
--

DROP TABLE IF EXISTS `staffassignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staffassignment` (
  `ID_StaffAssignment` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Staff` int(11) NOT NULL,
  `ID_Class` int(11) NOT NULL,
  `Role` varchar(45) DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  PRIMARY KEY (`ID_StaffAssignment`),
  KEY `FK_Class_SA _idx` (`ID_Class`),
  KEY `FK_Staff_SA_idx` (`ID_Staff`),
  CONSTRAINT `FK_Class_SA ` FOREIGN KEY (`ID_Class`) REFERENCES `class` (`ID_Class`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_Staff_SA` FOREIGN KEY (`ID_Staff`) REFERENCES `staff` (`ID_Staff`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffassignment`
--

LOCK TABLES `staffassignment` WRITE;
/*!40000 ALTER TABLE `staffassignment` DISABLE KEYS */;
INSERT INTO `staffassignment` (`ID_StaffAssignment`, `ID_Staff`, `ID_Class`, `Role`, `StartDate`, `EndDate`) VALUES (1,1,1,'Teacher Assistant','2020-09-16',NULL),(2,4,1,'Teacher Assistant','2020-09-16',NULL),(3,3,1,'Instructor','2020-09-16',NULL);
/*!40000 ALTER TABLE `staffassignment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-27 23:37:57

-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: gwbcssis
-- ------------------------------------------------------
-- Server version	5.7.22-log

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
-- Table structure for table `classparticipant`
--

DROP TABLE IF EXISTS `classparticipant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classparticipant` (
  `ID_ClassParticipant` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Student` int(11) NOT NULL,
  `ID_Class` int(11) NOT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  PRIMARY KEY (`ID_ClassParticipant`),
  KEY `FK_Class_CP` (`ID_Class`),
  KEY `FK_Student_CP` (`ID_Student`),
  CONSTRAINT `FK_Class_CP` FOREIGN KEY (`ID_Class`) REFERENCES `class` (`ID_Class`),
  CONSTRAINT `FK_Student_CP` FOREIGN KEY (`ID_Student`) REFERENCES `student` (`ID_Student`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classparticipant`
--

LOCK TABLES `classparticipant` WRITE;
/*!40000 ALTER TABLE `classparticipant` DISABLE KEYS */;
INSERT INTO `classparticipant` (`ID_ClassParticipant`, `ID_Student`, `ID_Class`, `StartDate`, `EndDate`) VALUES (1,33,1,'2020-09-16',NULL),(2,34,1,'2020-09-16',NULL),(3,35,1,'2020-09-16',NULL),(4,62,1,'2020-09-16',NULL),(5,36,1,'2020-09-16',NULL),(6,37,1,'2020-09-16',NULL),(7,38,1,'2020-09-16',NULL),(8,39,1,'2020-09-16',NULL),(9,40,1,'2020-09-16',NULL),(10,41,1,'2020-09-16',NULL),(11,42,1,'2020-09-16',NULL),(12,43,1,'2020-09-16',NULL),(13,46,1,'2020-09-16',NULL),(14,47,1,'2020-09-16',NULL),(15,48,1,'2020-09-16',NULL),(16,49,1,'2020-09-16',NULL),(17,50,1,'2020-09-16',NULL),(18,51,1,'2020-09-16',NULL),(20,53,1,'2020-09-16',NULL),(21,54,1,'2020-09-16',NULL),(22,55,1,'2020-09-16',NULL),(23,56,1,'2020-09-16',NULL),(24,57,1,'2020-09-16',NULL),(25,58,1,'2020-09-16',NULL),(26,59,1,'2020-09-16',NULL),(27,60,1,'2020-09-16',NULL),(28,61,1,'2020-09-16',NULL),(29,44,1,'2020-09-16',NULL);
/*!40000 ALTER TABLE `classparticipant` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-27 23:37:58
