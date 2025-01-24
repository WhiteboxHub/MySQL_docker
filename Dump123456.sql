-- MySQL dump 10.13  Distrib 8.0.40, for macos14 (arm64)
--
-- Host: 35.232.56.51    Database: whiteboxqa
-- ------------------------------------------------------
-- Server version	5.6.51-google-log

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '4617d6ad-6250-11ea-a946-42010a800ffc:1-24684082';

--
-- Table structure for table `People`
--

DROP TABLE IF EXISTS `People`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `People` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `Occupation` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `People`
--

LOCK TABLES `People` WRITE;
/*!40000 ALTER TABLE `People` DISABLE KEYS */;
INSERT INTO `People` VALUES (1,'Mani sai',28,'New York','Software Engineer'),(2,'Alice Johnson',34,'Los Angeles','Graphic Designer'),(3,'Robert Brown',45,'Chicago','Marketing Manager'),(4,'Gautam',23,'UK','Data Analyst'),(5,'John',23,'user()','Data Analyst'),(6,'Bhai',23,'Houston','Data Analyst'),(7,'Shiva',31,'Miami','Teacher');
/*!40000 ALTER TABLE `People` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET latin1 NOT NULL DEFAULT 'Quality Engineering',
  `alias` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `description` mediumtext CHARACTER SET latin1 NOT NULL,
  `syllabus` mediumtext CHARACTER SET latin1 NOT NULL,
  `lastmoddatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `displayquestion` varchar(200) NOT NULL,
  `displayanswer` varchar(500) NOT NULL,
  `courseaddition` varchar(500) NOT NULL,
  `certificatetitle` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf16 COMMENT='Course Management';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'Quality Engineering','QA','','SQL,Unix,etc','2015-01-07 04:13:56','Who Should Attend?','Software testers, programmers, test leaders, quality specialists and those who would like to learn Manual Testing, QTP, Load Runner, JMeter, soapUI, Mobile Testing, Selenium-RC and WebDriver. A familiarity with software development concepts is assumed.','Selendroid and Appium is added to the coursework these are help full to do iOS and Android Automation of Mobile Apps','QA Engineer'),(2,'UI/UX Development','UI','','HTML, CSS, etc','2015-01-07 04:20:57','Why UI Course?','We train front end developer/designer for web and mobile applications using HTML5, CSS3, Bootstrap, Javascript and JQuery, application developers to use MVC tools AngularJS and Javascript libraries, and Server-Side developers using NodeJS and MongoDB.','FrisbyJS is added to the coursework. Frisby is a REST API testing framework built on node.js and Jasmine that makes testing API endpoints easy, fast, and fun.','UI Developer'),(3,'.NET Framework','NET','','C#,ASP.NET,ADO.NET,etc','2015-05-08 17:01:37','Who Should Attend?','Web designers, administrators, power users and others who want an introduction to programming applications using .NET and are new to object-oriented programming. Prior programming experience is helpful but not required.','Azure Cloud is added to the coursework .Azure Cloud Provide single sign-on to thousands of cloud and on premises apps.Microsofts cloud platform: a growing collection of integrated services compute, storage, data, networking, and app that help you move faster.','.NET Developer'),(4,'Java Programming','JAVA','','CoreJava,AdvJava,JDBC,Spring,Hibernate,AngularJS','2016-04-25 11:50:42','Who Should Attend ?','Web designers, administrators, power users and others who want an introduction to programming applications using Java and are new to object-oriented programming. Prior programming experience is helpful but not required.','Scala & Play Framework are added to the coursework. Scala and Play Framework allow us to build concurrent and scalable applications.','Java Developer'),(5,'Machine Learning','ML','','python, NumPy, Pandas, Deep Learning, Supervised/Unsupervised learning','0000-00-00 00:00:00','Who Should Attend?','Machine Learning engineers, data scientists, data mining specialists, and data engineers','GenerativeAI, LLM, Langchain, Reinforcemenet','ML Engineer');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_content`
--

DROP TABLE IF EXISTS `course_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_content` (
  `id` int(15) unsigned NOT NULL,
  `courseid` int(11) NOT NULL,
  `week` varchar(15) NOT NULL,
  `morning` varchar(300) DEFAULT NULL,
  `evening` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQUE` (`courseid`,`week`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_content`
--

LOCK TABLES `course_content` WRITE;
/*!40000 ALTER TABLE `course_content` DISABLE KEYS */;
INSERT INTO `course_content` VALUES (1,2,'Week1','SOFTWARE ARCHITECTURES, \r\nSDLC, Agile—Scrum,\r\nXP, TDD ,SOA, SaaS','HTTP ,Front End Fundamentals,HTML, XHTML DOM XML,\r\nXPATH, XSD, XSLT, CSS'),(2,2,'Week2','CSS3,Pre-Processors,Grid System Firebug, Fiddler,\r\nWeb Works, HTML5','JavaScript, OOP,Asynchronous Programming'),(3,2,'Week3','Server Side Programming,JSP, Servlets,\r\nJSTL Java— JSF','Web Services,REST API \r\nJSON, Frisby.JS'),(4,2,'Week4',' 	NodeJS ,Events\r\nStreams Modules, Express.JS\r\nSocket.IO , Data Persistence','AJAX,\r\nXHR,\r\nDOJO,\r\n,Bootstrap'),(5,2,'Week5','AngularJS,\r\nControllers, Markup\r\nServices,\r\nRouting, Directives\r\nTesting','BackBone.JS,\r\nModels, Views,\r\nTemplates ,Routing,\r\nCollections'),(6,2,'Week6','MongoDB, NoSQL\r\nMongo Shell, Data Saving,\r\nIndexing, Documents, Collections','JQuery,Selectors, DOM,\r\nEvents,AJAX, JQuery UI, Widgets ,\r\nInteractions and Effects'),(7,2,'Week7','Tools Grunt,\r\nJasmine','Design Patterns'),(8,1,'Week1','N/A','Software Architectures,\r\nSDLC'),(9,1,'Week2','SQL 1,\r\nSQL 2,\r\nSQL 3','SDLC\r\n,Testing Fundamentals\r\n,Testing Fundamentals'),(10,1,'Week3','SQL 4\r\n,SQL 5\r\n,Web 1\r\n,Web 2','Testing Fundamentals ,\r\nTesting Fundamentals,\r\nTesting Real Scenarios'),(11,1,'Week4','XPATH\r\n,Python 1\r\n,Python 2\r\n,Python 3','Performance Testing\r\n,Web Services\r\n,Web Services'),(12,1,'Week5','Python 4\r\n,Python 5\r\n,SOAPUI\r\n,SOAPUI','Web Services \r\n,SOAPUI\r\n,SOAPUI'),(13,1,'Week6','Java Arraylist','Java \r\n,Java \r\n,Java'),(14,1,'Week7','Java Strings\r\n,Java Exceptions\r\n,Java Utils 1\r\n,Java Utils 2','Java \r\n,Java \r\n,Java'),(15,1,'Week8','JUnit,\r\nSelenium\r\n,Selenium\r\n,Selenium','Java\r\n,Java\r\n,Java'),(16,1,'Week9','Selenium,\r\nMaven/Selenium','Selenium\r\n,Selenium'),(17,3,'Week1','SQL 1\r\n,SQL 2\r\n,SQL 3','HTTP,\r\nHTTP'),(18,3,'Week2','C# , C# , C#','C#,\r\nC#,\r\nC#'),(19,3,'Week3','C# , \r\nC# , \r\nC#','Angular JS,Angular JS'),(20,3,'Week4','Web Services, Web Services','REST API , REST API'),(21,3,'Week5','ASP.NET Web Forms','Entity Framework LINQ'),(22,3,'Week6','ASP.NET MVC,\r\nASP.NET MVC','ASP.NET Web API,\r\nASP.NET Web API'),(23,4,'Week1','SOFTWARE ARCHITECTURES, SDLC, Agile—Scrum, XP, TDD ,SOA, SaaS','HTTP ,Front End Fundamentals,HTML, XHTML DOM XML, XPATH, XSD, XSLT, CSS'),(24,4,'Week2','CSS3,Pre-Processors,Grid System Firebug, Fiddler, Web Works, HTML5','Java - Types, OOPS'),(25,4,'Week3','Java - Utils, IO, Threads, Collections, Serialization, Synchronization','Web Services, REST Apis, Bootstrap'),(26,4,'Week4','JavaScript, OOP,Asynchronous Programming, DOM, jQuery','Spring - MVC, AOP, DI, Hibernate, RabbitMQ'),(27,4,'Week5',' AngularJS, Controllers, Markup Services, Routing, Directives Testing','Scala - Functional Programming, Type System'),(28,4,'Week6','MongoDB, NoSQL Mongo Shell, Data Saving, Indexing, Documents, Collections',' Play Framework - CRUD, API, Asynchronous Data'),(29,4,'Week7','NodeJS ,Events Streams Modules, Express.JS Socket.IO , Data Persistence','Design Patterns, Buid, Unit Testing and CI');
/*!40000 ALTER TABLE `course_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_subject`
--

DROP TABLE IF EXISTS `course_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_subject` (
  `courseid` int(11) NOT NULL,
  `subjectid` int(11) NOT NULL,
  `lastmoddatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_subject`
--

LOCK TABLES `course_subject` WRITE;
/*!40000 ALTER TABLE `course_subject` DISABLE KEYS */;
INSERT INTO `course_subject` VALUES (1,38,'2015-10-15 17:51:29'),(1,39,'2015-10-15 17:51:29'),(1,40,'2015-10-15 17:51:29'),(1,41,'2015-10-15 17:51:29'),(1,42,'2015-10-15 17:51:29'),(1,43,'2015-10-15 17:51:29'),(1,44,'2015-10-15 17:51:29'),(1,45,'2015-10-15 17:51:29'),(1,46,'2015-10-15 17:51:29'),(1,97,'2015-10-15 17:51:29'),(1,99,'2015-10-15 17:51:29'),(2,38,'2015-10-15 17:51:40'),(2,39,'2015-10-15 17:51:40'),(2,40,'2015-10-15 17:51:40'),(2,41,'2015-10-15 17:51:40'),(2,42,'2015-10-15 17:51:40'),(2,43,'2015-10-15 17:51:40'),(2,44,'2015-10-15 17:51:40'),(2,45,'2015-10-15 17:51:40'),(2,46,'2015-10-15 17:51:40'),(2,97,'2015-10-15 17:51:40'),(2,99,'2015-10-15 17:51:40'),(3,38,'2015-10-15 17:51:44'),(3,39,'2015-10-15 17:51:44'),(3,40,'2015-10-15 17:51:44'),(3,41,'2015-10-15 17:51:44'),(3,42,'2015-10-15 17:51:44'),(3,43,'2015-10-15 17:51:44'),(3,44,'2015-10-15 17:51:44'),(3,45,'2015-10-15 17:51:44'),(3,46,'2015-10-15 17:51:44'),(3,97,'2015-10-15 17:51:44'),(3,99,'2015-10-15 17:51:44'),(1,47,'2015-10-15 17:52:09'),(1,48,'2015-10-15 17:52:09'),(1,49,'2015-10-15 17:52:09'),(1,50,'2015-10-15 17:52:09'),(1,51,'2015-10-15 17:52:09'),(1,52,'2015-10-15 17:52:09'),(1,53,'2015-10-15 17:52:09'),(1,54,'2015-10-15 17:52:09'),(1,55,'2015-10-15 17:52:09'),(1,98,'2015-10-15 17:52:09'),(1,100,'2015-10-15 17:52:09'),(1,101,'2015-10-15 17:52:09'),(2,56,'2015-10-15 17:54:00'),(2,57,'2015-10-15 17:54:00'),(2,58,'2015-10-15 17:54:00'),(2,59,'2015-10-15 17:54:00'),(2,60,'2015-10-15 17:54:00'),(2,61,'2015-10-15 17:54:00'),(2,62,'2015-10-15 17:54:00'),(2,63,'2015-10-15 17:54:00'),(2,64,'2015-10-15 17:54:00'),(2,65,'2015-10-15 17:54:00'),(3,34,'2015-10-15 17:54:07'),(3,35,'2015-10-15 17:54:07'),(3,36,'2015-10-15 17:54:07'),(3,37,'2015-10-15 17:54:07'),(3,64,'2016-01-05 14:40:37'),(3,61,'2016-01-05 14:40:37'),(3,102,'2016-01-05 14:40:37'),(3,58,'2016-01-05 14:40:37'),(3,60,'2016-01-15 00:18:34'),(3,56,'2016-01-15 00:18:34'),(3,57,'2016-01-15 00:38:50'),(3,59,'2016-01-15 01:02:44'),(2,64,'2016-02-05 02:34:41'),(4,61,'2016-04-25 12:00:23'),(4,59,'2016-04-25 12:00:23'),(4,43,'2016-04-25 12:00:23'),(4,38,'2016-04-25 12:00:23'),(4,57,'2016-04-25 12:00:23'),(4,40,'2016-04-25 12:00:23'),(4,48,'2016-04-25 12:00:23'),(4,56,'2016-04-25 12:00:23'),(4,58,'2016-04-25 12:00:23'),(4,44,'2016-04-25 12:00:23'),(4,64,'2016-04-25 12:00:23'),(4,42,'2016-04-25 12:00:23'),(4,39,'2016-04-25 12:00:23'),(4,65,'2016-04-25 12:00:23'),(4,103,'2016-04-25 12:00:23'),(4,104,'2016-04-25 12:00:23'),(4,105,'2016-04-25 12:00:23'),(4,106,'2016-04-25 12:00:23'),(0,107,'2017-06-14 11:37:17'),(2,108,'2017-06-17 10:16:26'),(2,110,'2017-08-09 10:39:01'),(2,111,'2017-08-09 10:39:10'),(2,112,'2017-08-09 03:39:50'),(2,113,'2017-08-09 03:40:04'),(2,114,'2017-08-09 03:40:15'),(2,115,'2017-08-09 16:23:58'),(2,116,'2017-12-18 23:53:28');
/*!40000 ALTER TABLE `course_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `holiday`
--

DROP TABLE IF EXISTS `holiday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `holiday` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `holidaydate` date DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `notes` text,
  `lastmoddatetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `holidaydate_UNIQUE` (`holidaydate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Holiday Management';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `holiday`
--

LOCK TABLES `holiday` WRITE;
/*!40000 ALTER TABLE `holiday` DISABLE KEYS */;
/*!40000 ALTER TABLE `holiday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_course`
--

DROP TABLE IF EXISTS `new_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `alias` varchar(200) DEFAULT NULL,
  `description` mediumtext,
  `syllabus` mediumtext,
  `lastmoddatetime` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_course`
--

LOCK TABLES `new_course` WRITE;
/*!40000 ALTER TABLE `new_course` DISABLE KEYS */;
INSERT INTO `new_course` VALUES (1,'Quality Engineering','QA','Software quality through testing and validation.','SQL ,Unix ,Web Serivce ,MongoDB ,Cypress ,etc','2024-07-02 00:55:39'),(2,'Full Stack Development','UI','Develops both front-end (UI/UX) and back-end (server-side) for web applications.','HTML, CSS, JS,DOM,jQuery,React_Redux,Router,Next.js,Node.js  etc','2024-07-02 00:55:39'),(3,'Machine Learning','ML','Uses algorithms for computers to learn from data and make predictions.','Python, Numpy, Pandas, Deep Learning, Supervised/Unsupervised  learning','2024-07-02 00:55:39');
/*!40000 ALTER TABLE `new_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_subject`
--

DROP TABLE IF EXISTS `new_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `description` varchar(300) CHARACTER SET utf16 NOT NULL,
  `lastmoddatetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_subject`
--

LOCK TABLES `new_subject` WRITE;
/*!40000 ALTER TABLE `new_subject` DISABLE KEYS */;
INSERT INTO `new_subject` VALUES (1,'HttpAndWebservices','HTTP/HTML/XML/XPATH/JSON/Schema','2024-08-07 23:20:23'),(2,'Software Architectures','Software Architectures + Lifecycle models + Agile','2024-08-06 17:44:45'),(3,'Web Services','Web Services, SOAP, WSDL, REST','2024-07-09 22:54:57'),(4,'JIRA-Agile','Rally/JIRA','2024-08-08 21:25:09'),(5,'MYSQL','RDBMS SQL using Oracle/MySQL','2024-08-06 22:43:04'),(6,'CSS/CSS Advance','CSS2, CSS3','2024-08-06 22:45:39'),(7,'MongoDB','Scalable, document-oriented NoSQL database.','2024-07-09 22:54:57'),(8,'NoSQL Fundamentals','Non-relational databases for distributed data.','2024-07-09 22:54:57'),(9,'Android Fundamentals','Core concepts for Android app development.','2024-07-09 22:54:57'),(10,'Python Programming','Python Programming Fundamentals','2024-07-09 22:54:57'),(11,'Cypress ','Description of the new course','2024-07-09 22:54:57'),(12,'UNIX','Unix Commands and Shell Scripting','2024-07-09 22:54:57'),(13,'GraphQL','GraphQL is a query language for your API, and a server-side runtime for executing queries by using a type system you define for your data.','2024-07-09 22:54:57'),(14,'SOAPUI','API testing tool for SOAP and REST services.','2024-07-01 17:46:39'),(15,'Java Programming','Object-oriented language for robust apps.','2024-07-01 17:46:39'),(16,'Testing Fundamentals','Basic principles of software testing.','2024-07-01 17:46:39'),(17,'Performance Testing Fundamentalas','Testing software for speed and efficiency.','2024-07-01 17:46:39'),(18,'Jmeter','Java-based tool for load testing web apps','2024-07-01 17:46:39'),(19,'Unit Testing','Junit + TestNG','2015-10-15 21:34:00'),(20,'Selenium WebDriver','Automation framework for web testing.','2024-07-01 17:46:39'),(21,'QA Automation','Automation + Frameworks','2015-10-15 21:34:00'),(22,'Appium','iOS and Android Automation','2015-10-15 21:34:00'),(23,'Rest Assured','Description of the new course','2024-06-27 19:17:34'),(24,'HTTP Client','Description of the new course','2024-06-27 19:17:34'),(25,'PostMan','Description of the new course','2024-06-27 19:17:34'),(26,'Loadrunner','Performance Testing using LoadRunner','2015-10-15 21:34:00'),(27,'Redux','Description of the new course','2024-07-16 18:11:10'),(28,'Java Programming','Dynamic language for web development','2024-11-05 17:05:37'),(29,'HTML5','Semantic elements and API\'s','2015-10-15 21:34:00'),(30,'jQuery','Lightweight JavaScript library for simplified web development tasks.','2024-07-01 17:46:39'),(31,'Bootstrap','Framework for responsive web design','2024-07-01 17:46:39'),(32,'JavaScript UI','jQuery UI, BootstrapUI, Kendo UI','2024-08-06 22:44:36'),(33,'AngularJS','JavaScript framework for single-page apps','2024-07-01 17:46:39'),(34,'NodeJS','Javascript Server Scripting','2017-07-06 09:54:42'),(35,'ExpressJS','Javascript Server Side Web Framework','2015-10-15 21:34:00'),(36,'Webpack','Webpack is a popular module bundler, a tool for bundling application source code in convenient chunks and for loading that code from a server into a browser.','2017-08-09 10:43:18'),(37,'TypeScript','TypeScript is a free and open-source programming language,It is a strict syntactical superset of JavaScript, and adds optional static typing to the language.','2017-08-09 10:41:24'),(38,'ES7','Latest JavaScript with new features.','2024-07-01 17:46:39'),(39,'Babel','Babel is a compiler for writing next generation JavaScript.','2017-08-09 10:44:08'),(40,'ES6','ES6 is a major update to JavaScript that includes dozens of new features.','2017-08-09 16:22:57'),(41,'Functional Programming','Functional programming is a style of programming which models computations as the evaluation of expressions.','2017-12-19 07:56:46'),(42,'React.JS','React is a library for building composable user interfaces. It encourages the creation of reusable UI components which present data that changes over time.','2024-08-06 22:50:57'),(43,'React Native','React Native is a JavaScript framework for writing real, natively rendering mobile applications for iOS and Android.','2017-06-14 11:36:52'),(44,'Javascript Testing','Jasmine, Karma, Mocha, Protractor','2015-10-15 21:34:00'),(45,'Angular2.0','Angular 2 is an open source JavaScript framework to build web applications in HTML and JavaScript.','2017-08-09 10:42:27'),(46,'Tailwind CSS  ','Description of the new course','2024-06-27 19:17:34'),(47,' DOM','Description of the new course','2024-06-27 19:17:34'),(48,' Router','Description of the new course','2024-06-27 19:17:34'),(49,'Next.js ','Description of the new course','2024-06-27 19:17:34'),(50,'Web Designing','HTML/HTML5/CSS','2015-12-23 13:44:22'),(51,'Natural language process(NLP)','Language processing techniques','2024-06-27 18:59:48'),(52,'Genrative AI',' General artificial intelligence','2024-07-15 18:15:27'),(53,'Computer vision technigues(CVT)','Computer vision methods','2024-06-27 18:59:48'),(54,'Numpy','Numeric computations in Python','2024-06-27 18:59:48'),(55,'Pandas','Data manipulation library','2024-06-27 18:59:48'),(56,'Essential Maths for ML ','Essential math concepts','2024-06-27 18:59:48'),(57,'Superivised learning algorithms','Labeled data predictions ','2024-06-27 18:59:48'),(58,'Unsupervised Learning Algorithms',' Patterns in unlabeled data ','2024-07-09 23:34:12'),(59,'Python','it is a high-level dynamically-typed interpreted programming language','2024-07-09 23:34:12'),(60,'Neural Network',' Complex models','2024-06-27 18:59:48'),(61,'Deep learning','Multi-layer neural networks','2024-06-27 18:59:48'),(62,'Reinforcement learning ','Learn from rewards','2024-06-27 18:59:48'),(63,'Matplotlib','Visualization ','2024-07-19 21:42:13'),(64,'HTML','Structure content on the web','2024-07-19 22:56:12'),(65,'SDLC','Software development life cycle','2024-08-06 17:44:45'),(66,'Git','','2024-08-07 21:04:58'),(67,'Docker','','2024-08-07 21:04:58'),(68,'Rest API','','2024-08-07 21:04:59'),(69,'cucumber','','2024-08-15 19:02:51'),(70,'Jenkins','','2024-08-21 18:54:01'),(71,'ML libraries','','2024-11-05 19:57:15'),(72,'Pydantic','','2025-01-06 17:42:46'),(73,'Kubernetes','','2025-01-06 18:08:00'),(74,'AWS','','2025-01-06 18:09:19');
/*!40000 ALTER TABLE `new_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `description` varchar(300) CHARACTER SET latin1 NOT NULL,
  `lastmoddatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `courseid` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT '100',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf16 COMMENT='Subject';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES (34,'ASP.NET Web Forms','ASP.NET Web Forms','2015-10-15 21:34:00',3,50),(35,'ASP.NET MVC and Web API','','2015-10-15 21:34:00',3,50),(36,'Microsoft Entity Framework','','2015-10-15 21:34:00',3,50),(37,'Microsoft .NET with C#','C# Programming Language and Framework','2015-10-15 21:34:00',3,50),(38,'Http and Web','HTTP/HTML/XML/XPATH/JSON/Schema','2015-10-15 21:34:00',0,50),(39,'Software Architectures','Software Architectures + Lifecycle models + Agile','2024-08-05 21:44:59',0,50),(40,'Web Services','Web Services, SOAP, WSDL, REST','2015-10-15 21:34:00',0,50),(41,'Work Management Tools','Rally/JIRA','2015-10-15 21:34:00',0,50),(42,'SQL','RDBMS SQL using Oracle/MySQL','2015-10-15 21:34:00',0,50),(43,'CSS','CSS2, CSS3','2015-10-15 21:34:00',0,50),(44,'MongoDB','','2015-10-15 21:34:00',0,50),(45,'NoSQL Fundamentals','','2015-10-15 21:34:00',0,50),(46,'Android Fundamentals','','2015-10-15 21:34:00',0,50),(47,'SOAPUI','','2015-10-15 21:34:00',1,50),(48,'Java Programming','','2015-10-15 21:34:00',1,50),(49,'Testing Fundamentals','','2015-10-15 21:34:00',1,50),(50,'Performance Testing Fundamentalas','','2015-10-15 21:34:00',1,50),(51,'Jmeter','','2015-10-15 21:34:00',1,50),(52,'Unit Testing','Junit + TestNG','2015-10-15 21:34:00',1,50),(53,'Selenium WebDriver','','2015-10-15 21:34:00',1,50),(54,'QA Automation','Automation + Frameworks','2015-10-15 21:34:00',1,50),(55,'Appium','iOS and Android Automation','2015-10-15 21:34:00',1,50),(56,'Javascript Programming','','2015-10-15 21:34:00',2,50),(57,'HTML5','Semantic elements and API\'s','2015-10-15 21:34:00',2,50),(58,'jQuery','','2015-10-15 21:34:00',2,50),(59,'Bootstrap','','2015-10-15 21:34:00',2,50),(60,'Javascript UI','jQuery UI, BootstrapUI, Kendo UI','2015-10-15 21:34:00',2,50),(61,'AngularJS','','2017-07-06 09:54:32',2,50),(62,'Javascript Testing','Jasmine, Karma, Mocha, Protractor','2015-10-15 21:34:00',2,50),(63,'Javascript Build Automation','Gulp/Grunt/Bower','2015-10-15 21:34:00',2,50),(64,'NodeJS','Javascript Server Scripting','2017-07-06 09:54:42',2,50),(65,'ExpressJS','Javascript Server Side Web Framework','2015-10-15 21:34:00',2,50),(97,'UNIX','Unix Commands and Shell Scripting','2015-10-09 23:00:16',0,50),(98,'Java DevOps','Build, Deploy and Continuous Integration','2015-10-15 21:34:00',1,50),(99,'Python Programming','Python Programming Fundamentals','2015-10-15 21:34:00',0,50),(100,'QTP','HP Quick Test Professional','2015-10-15 21:34:00',1,50),(101,'Loadrunner','Performance Testing using LoadRunner','2015-10-15 21:34:00',1,50),(102,'Web Designing','HTML/HTML5/CSS','2015-12-23 13:44:22',2,100),(103,'Scala Language','implicits, structural typing, variance, extractors','2016-04-25 11:58:01',4,50),(104,'Play Framework','Integratings, Dependency Injection, The Twirl template engine','2016-04-25 11:59:22',4,50),(105,'Spring','Working with Spring MVC,Spring MVC Form Handling,Creating Views in Spring MVC','2016-04-25 11:59:31',4,50),(106,'Hibernate','Transactions in Hibernate,Querying with HQL,Using Hibernate in different types of applications','2016-04-25 11:59:41',4,50),(107,'GraphQL','GraphQL is a query language for your API, and a server-side runtime for executing queries by using a type system you define for your data.','2017-06-14 11:36:52',0,100),(108,'ReactJS','React is a library for building composable user interfaces. It encourages the creation of reusable UI components which present data that changes over time.','2017-06-14 11:36:52',2,100),(109,'React Native','React Native is a JavaScript framework for writing real, natively rendering mobile applications for iOS and Android.','2017-06-14 11:36:52',2,100),(110,'Angular2.0','Angular 2 is an open source JavaScript framework to build web applications in HTML and JavaScript.','2017-08-09 10:42:27',2,100),(111,'Webpack','Webpack is a popular module bundler, a tool for bundling application source code in convenient chunks and for loading that code from a server into a browser.','2017-08-09 10:43:18',2,100),(112,'TypeScript','TypeScript is a free and open-source programming language,It is a strict syntactical superset of JavaScript, and adds optional static typing to the language.','2017-08-09 10:41:24',2,100),(113,'ES7','','2017-08-09 10:38:18',2,100),(114,'Babel','Babel is a compiler for writing next generation JavaScript.','2017-08-09 10:44:08',2,100),(115,'ES6','ES6 is a major update to JavaScript that includes dozens of new features.','2017-08-09 16:22:57',2,100),(116,'Functional Programming','Functional programming is a style of programming which models computations as the evaluation of expressions.','2017-12-19 07:56:46',2,100),(118,'python','it is a high-level dynamically-typed interpreted programming language','2024-06-04 16:36:37',5,100),(119,'Numpy','Numeric computations in Python','2024-06-05 16:10:32',5,100),(120,'Pandas','Data manipulation library','2024-06-05 16:10:32',5,100),(121,'Essential Maths for ML ','Essential math concepts','2024-06-05 16:10:32',5,100),(122,'Superivised learning algorithms','Labeled data predictions ','2024-06-05 16:10:32',5,100),(123,'Unsupervised learning algorithms',' Patterns in unlabeled data ','2024-06-05 16:10:32',5,100),(124,'Reinforcement learning ','Learn from rewards','2024-06-05 16:10:32',5,100),(125,'Neural Network',' Complex models','2024-06-05 16:10:32',5,100),(126,'Deep learning','Multi-layer neural networks','2024-06-05 16:10:32',5,100),(127,'Natural language process(NLP)','Language processing techniques','2024-06-05 16:10:32',5,100),(128,'Gen AI',' General artificial intelligence','2024-06-05 16:10:32',5,100),(129,'Computer vision technigues(CVT)','Computer vision methods','2024-06-05 16:10:32',5,100),(130,'SDLC ','software develpoment life cycle','0000-00-00 00:00:00',0,100);
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-24  5:58:48
