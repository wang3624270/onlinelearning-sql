-- MySQL dump 10.13  Distrib 5.6.26, for Win64 (x86_64)
--
-- Host: localhost    Database: onlinelearning
-- ------------------------------------------------------
-- Server version	5.6.26

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
-- Table structure for table `accessories_course_folder`
--

DROP TABLE IF EXISTS `accessories_course_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accessories_course_folder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `courseId` int(11) DEFAULT NULL,
  `folderName` varchar(45) DEFAULT NULL,
  `fatherId` int(11) DEFAULT NULL,
  `orderNum` int(11) DEFAULT NULL,
  `isLeaf` int(11) DEFAULT NULL,
  `taskId` int(11) DEFAULT NULL,
  `personId` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_accessories_group_folder_1` (`courseId`) USING BTREE,
  KEY `FK_accessories_course_folder_2` (`taskId`),
  CONSTRAINT `FK_accessories_course_folder_1` FOREIGN KEY (`courseId`) REFERENCES `elearning_course` (`courseId`),
  CONSTRAINT `FK_accessories_course_folder_2` FOREIGN KEY (`taskId`) REFERENCES `elearning_teach_task` (`taskId`)
) ENGINE=InnoDB AUTO_INCREMENT=326 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessories_course_folder`
--

LOCK TABLES `accessories_course_folder` WRITE;
/*!40000 ALTER TABLE `accessories_course_folder` DISABLE KEYS */;
INSERT INTO `accessories_course_folder` VALUES (302,41027,'一',0,1,0,NULL,NULL,NULL),(303,41027,'1.1、数据结构的基本要素',302,1,1,NULL,NULL,NULL),(304,41027,'1.2、算法和算法评价',302,2,1,NULL,NULL,NULL),(305,41027,'二',0,2,0,NULL,NULL,NULL),(306,41027,'2.1',305,1,1,NULL,NULL,NULL),(307,1160,'1',0,1,0,NULL,NULL,NULL),(308,1160,'1',307,1,1,NULL,NULL,NULL),(311,1159,'1',0,1,0,NULL,NULL,NULL),(312,1159,'2',311,1,1,NULL,NULL,NULL),(313,1,'第一章：绪论',0,1,0,NULL,NULL,NULL),(314,1,'数据结构的基本要素',313,1,1,NULL,NULL,NULL),(315,1,'1.2、算法和算法评价',313,2,1,NULL,NULL,NULL),(316,1,'第二章：线性表',0,2,0,NULL,NULL,NULL),(317,1,'2.1、线性表的定义和基本操作',316,1,1,NULL,NULL,NULL),(318,1,'2.2、线性表的定义和基本操作',316,2,1,NULL,NULL,NULL),(319,41028,'',0,1,0,NULL,NULL,NULL),(320,41028,'',319,1,1,NULL,NULL,NULL),(321,NULL,'课程ppt1',NULL,NULL,NULL,4788,3,'2018-12-09 17:10:09'),(322,41028,'课程ppt',NULL,NULL,NULL,4785,3,'2018-12-13 14:08:53'),(323,41028,'课程讲义',NULL,NULL,NULL,4785,3,'2018-12-13 14:09:04'),(324,41033,'机组课程ppt',NULL,NULL,NULL,4789,3,'2019-01-12 13:56:02'),(325,41035,'课程ppt',NULL,NULL,NULL,4792,3,'2019-05-21 09:39:00');
/*!40000 ALTER TABLE `accessories_course_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accessories_folder_acc`
--

DROP TABLE IF EXISTS `accessories_folder_acc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accessories_folder_acc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `folderId` int(11) DEFAULT NULL,
  `accId` int(11) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_accessories_folder_acc_1` (`folderId`),
  KEY `FK_accessories_folder_acc_2` (`accId`),
  CONSTRAINT `FK_accessories_folder_acc_1` FOREIGN KEY (`folderId`) REFERENCES `accessories_course_folder` (`id`),
  CONSTRAINT `FK_accessories_folder_acc_2` FOREIGN KEY (`accId`) REFERENCES `accessories_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessories_folder_acc`
--

LOCK TABLES `accessories_folder_acc` WRITE;
/*!40000 ALTER TABLE `accessories_folder_acc` DISABLE KEYS */;
INSERT INTO `accessories_folder_acc` VALUES (1,322,409,NULL),(2,323,408,NULL),(3,324,418,NULL),(4,325,420,NULL);
/*!40000 ALTER TABLE `accessories_folder_acc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `accessories_info`
--

DROP TABLE IF EXISTS `accessories_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accessories_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accName` varchar(200) DEFAULT NULL,
  `accUrl` varchar(200) DEFAULT NULL,
  `accType` varchar(45) DEFAULT NULL,
  `accUploader` int(11) DEFAULT NULL,
  `uploadTime` datetime DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `fileType` varchar(45) DEFAULT NULL,
  `fileSize` longtext,
  PRIMARY KEY (`id`),
  KEY `FK_accessories_info_1` (`accUploader`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=423 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessories_info`
--

LOCK TABLES `accessories_info` WRITE;
/*!40000 ALTER TABLE `accessories_info` DISABLE KEYS */;
INSERT INTO `accessories_info` VALUES (387,'oceans.mp4','elearning/resource/387.mp4','mp4',3,'2018-04-04 10:13:05',NULL,'mp4','23014356'),(388,'2017_4_17_11_2_17_teacher.mp4','elearning/resource/388.mp4','mp4',3,'2018-04-04 10:13:05',NULL,'mp4','15797610'),(407,'中国少数民族汉语水平等级考试（三级）样题及详解.doc','elearning/resource/407.doc','doc',3,'2018-11-21 14:53:42',NULL,'doc','175616'),(408,'文学生活馆数字化平台研发2.doc','elearning/resource/408.doc','doc',3,'2018-12-13 14:08:18',NULL,'doc','70656'),(409,'文学生活馆项目计划书.pdf','elearning/resource/409.pdf','pdf',3,'2018-12-13 14:08:18',NULL,'pdf','305249'),(410,'123.mp4','elearning/resource/410.mp4','mp4',3,'2018-12-18 10:52:51',NULL,'mp4','22547886'),(411,'brief-2012.pdf','elearning/resource/411.pdf','pdf',3,'2019-01-08 11:05:16',NULL,'pdf','966824'),(412,'Chapter6.pdf','elearning/resource/412.pdf','pdf',3,'2019-01-08 11:05:16',NULL,'pdf','614674'),(413,'Chapter3.pdf','elearning/resource/413.pdf','pdf',3,'2019-01-08 11:05:16',NULL,'pdf','823977'),(414,'Chapter1.pdf','elearning/resource/414.pdf','pdf',3,'2019-01-08 11:05:16',NULL,'pdf','412167'),(415,'Chapter5.pdf','elearning/resource/415.pdf','pdf',3,'2019-01-08 11:05:16',NULL,'pdf','403754'),(416,'Chapter4.pdf','elearning/resource/416.pdf','pdf',3,'2019-01-08 11:05:16',NULL,'pdf','1024911'),(417,'科学和工程计算基础.pdf','elearning/resource/417.pdf','pdf',3,'2019-01-08 11:05:16',NULL,'pdf','4837077'),(418,'Unit 3.ppt','elearning/resource/418.ppt','ppt',3,'2019-01-08 11:15:40',NULL,'ppt','1896960'),(419,'Unit 2.ppt','elearning/resource/419.ppt','ppt',3,'2019-01-08 11:15:40',NULL,'ppt','4273664'),(420,'Unit1.ppt','elearning/resource/420.ppt','ppt',3,'2019-01-08 11:15:40',NULL,'ppt','6693376'),(421,'20170608_图像处理重点录音.m4a','elearning/resource/421.m4a','m4a',3,'2019-01-08 11:16:19',NULL,'m4a','29353862'),(422,'oceans.mp4','elearning/resource/422.mp4','mp4',3,'2019-01-09 13:49:31',NULL,'mp4','23014356');
/*!40000 ALTER TABLE `accessories_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_attachment_info`
--

DROP TABLE IF EXISTS `base_attachment_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_attachment_info` (
  `attachId` int(11) NOT NULL AUTO_INCREMENT,
  `attachType` varchar(50) DEFAULT NULL,
  `docType` varchar(50) DEFAULT NULL,
  `ownerId` int(11) DEFAULT NULL,
  `urlAddress` varchar(256) DEFAULT NULL,
  `fileName` varchar(128) DEFAULT NULL,
  `uploadTime` datetime DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `attachIndex` varchar(45) DEFAULT NULL,
  `permanentFileName` varchar(256) DEFAULT NULL,
  `uploader` int(11) DEFAULT NULL,
  PRIMARY KEY (`attachId`),
  UNIQUE KEY `attachId` (`attachId`),
  UNIQUE KEY `base_attachment_info_attachId_unique` (`attachId`),
  KEY `uploader` (`uploader`),
  CONSTRAINT `base_attachment_info_ibfk_1` FOREIGN KEY (`uploader`) REFERENCES `info_person_info` (`personId`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_attachment_info`
--

LOCK TABLES `base_attachment_info` WRITE;
/*!40000 ALTER TABLE `base_attachment_info` DISABLE KEYS */;
INSERT INTO `base_attachment_info` VALUES (18,'png',NULL,3,'elearning/homework/18.png','QQ截图20171206140413.png','2018-03-29 09:46:37','599606',NULL,NULL,NULL),(20,'jpg',NULL,3,'elearning/homework/20.jpg','文学生活馆Logo.jpg','2018-03-29 09:48:27','69369',NULL,NULL,NULL),(40,'jpg',NULL,3,'elearning/coverImg/40.jpg','demo.jpg','2018-11-30 16:46:52','474686',NULL,NULL,NULL),(41,'jpg',NULL,3,'elearning/coverImg/41.jpg','QQ图片20171124145717_副本.jpg','2018-11-30 21:39:06','28140',NULL,NULL,NULL),(42,'png',NULL,3,'elearning/coverImg/42.png','QQ截图20181130222929.png','2018-11-30 22:29:41','42684',NULL,NULL,NULL),(43,'png',NULL,3,'elearning/coverImg/43.png','讲座.png','2018-12-01 08:46:04','111617',NULL,NULL,NULL),(44,'jpg',NULL,3,'elearning/coverImg/44.jpg','timg.jpg','2018-12-04 10:07:25','64886',NULL,NULL,NULL),(45,'jpg',NULL,3,'elearning/coverImg/45.jpg','timg (1).jpg','2018-12-04 10:07:40','8775',NULL,NULL,NULL),(50,'jpg',NULL,3,'elearning/coverImg/50.jpg','timg (2).jpg','2018-12-04 10:09:07','29338',NULL,NULL,NULL),(52,'jpg',NULL,3,'elearning/coverImg/52.jpg','1.jpg','2018-12-04 10:09:51','10852',NULL,NULL,NULL),(53,'jpg',NULL,3,'elearning/coverImg/53.jpg','2.jpg','2018-12-04 10:10:27','28900',NULL,NULL,NULL),(54,'png',NULL,3,'elearning/coverImg/54.png','a8.png','2018-12-04 10:35:53','152796',NULL,NULL,NULL),(57,'png',NULL,3,'elearning/coverImg/57.png','a7.png','2018-12-04 10:36:41','63772',NULL,NULL,NULL),(59,'png',NULL,3,'elearning/coverImg/59.png','a4.png','2018-12-04 10:36:53','216576',NULL,NULL,NULL),(60,'png',NULL,3,'elearning/coverImg/60.png','a3.png','2018-12-04 10:36:57','260812',NULL,NULL,NULL),(63,'jpg',NULL,3,'elearning/coverImg/63.jpg','水电费.jpg','2019-01-07 22:13:57','106875',NULL,NULL,NULL),(65,'jpg',NULL,3,'elearning/coverImg/65.jpg','timg (2).jpg','2019-01-07 22:15:44','37580',NULL,NULL,NULL),(66,'jpg',NULL,3,'elearning/coverImg/66.jpg','timg.jpg','2019-01-07 22:16:05','44754',NULL,NULL,NULL),(67,'png',NULL,3,'elearning/coverImg/67.png','图片7.png','2019-01-12 13:51:18','274546',NULL,NULL,NULL),(68,'png',NULL,3,'elearning/coverImg/68.png','图片7.png','2019-01-12 14:09:59','274546',NULL,NULL,NULL),(69,'png',NULL,3,'elearning/coverImg/69.png','图片7.png','2019-01-12 15:25:36','274546',NULL,NULL,NULL),(70,'png',NULL,3,'elearning/coverImg/70.png','QQ截图20190519163517.png','2019-05-21 09:18:09','71205',NULL,NULL,NULL),(71,'png',NULL,3,'elearning/coverImg/71.png','QQ截图20190521095446.png','2019-05-21 09:59:40','68262',NULL,NULL,NULL),(72,'png',NULL,3,'elearning/coverImg/72.png','QQ截图20190521100257.png','2019-05-21 10:04:33','134655',NULL,NULL,NULL);
/*!40000 ALTER TABLE `base_attachment_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_campus_info`
--

DROP TABLE IF EXISTS `base_campus_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_campus_info` (
  `campusNum` varchar(4) NOT NULL,
  `campusName` varchar(40) NOT NULL,
  `campusEngName` varchar(40) DEFAULT NULL,
  `universityNum` varchar(10) DEFAULT NULL,
  `campusAddress` varchar(100) DEFAULT NULL,
  `campusRegion` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`campusNum`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_campus_info`
--

LOCK TABLES `base_campus_info` WRITE;
/*!40000 ALTER TABLE `base_campus_info` DISABLE KEYS */;
INSERT INTO `base_campus_info` VALUES ('01','中心校区','','','','01'),('02','洪家楼校区','','','','01'),('03','趵突泉校区','','','','01'),('04','千佛山校区','','','','01'),('05','软件园校区','','','','01'),('06','兴隆山校区','','','','01'),('07','威海校区','','','','02'),('08','青岛校区','','','','03');
/*!40000 ALTER TABLE `base_campus_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_class`
--

DROP TABLE IF EXISTS `base_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_class` (
  `classId` int(11) NOT NULL AUTO_INCREMENT,
  `className` varchar(30) DEFAULT NULL,
  `classEngName` varchar(30) DEFAULT NULL,
  `grade` varchar(4) DEFAULT NULL,
  `classTye` varchar(10) DEFAULT NULL,
  `eduSystem` varchar(6) DEFAULT NULL,
  `nums` varchar(4) DEFAULT NULL,
  `majorId` int(11) DEFAULT NULL,
  `isVirtualClass` int(11) DEFAULT NULL,
  `campusCode` varchar(10) DEFAULT NULL,
  `stuTypeCode` varchar(45) DEFAULT NULL,
  `classNum` varchar(45) DEFAULT NULL,
  `directionId1` int(11) DEFAULT NULL,
  `directionId2` int(11) DEFAULT NULL,
  `schemeId` int(11) DEFAULT NULL,
  `manageDepartment` varchar(1) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`classId`),
  UNIQUE KEY `classId` (`classId`),
  UNIQUE KEY `base_class_classId_unique` (`classId`),
  CONSTRAINT `base_class_ibfk_1` FOREIGN KEY (`classId`) REFERENCES `info_stu_train_info` (`personId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_class`
--

LOCK TABLES `base_class` WRITE;
/*!40000 ALTER TABLE `base_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `base_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_college`
--

DROP TABLE IF EXISTS `base_college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_college` (
  `collegeId` int(11) NOT NULL AUTO_INCREMENT,
  `collegeNum` varchar(10) DEFAULT NULL,
  `collegeName` varchar(40) DEFAULT NULL,
  `abbrName` varchar(45) DEFAULT NULL,
  `collegeEngName` varchar(80) DEFAULT NULL,
  `collegeIntro` varchar(500) DEFAULT NULL,
  `howToContact` varchar(300) DEFAULT NULL,
  `masterRetrialPlan` varchar(2000) DEFAULT NULL,
  `doctorRetrialPlan` varchar(2000) DEFAULT NULL,
  `departmentId` int(11) DEFAULT NULL,
  `orderNum` int(11) DEFAULT NULL,
  `master` varchar(20) DEFAULT NULL,
  `foundTime` datetime DEFAULT NULL,
  `postCode` varchar(6) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `faxNum` varchar(15) DEFAULT NULL,
  `telphone` varchar(15) DEFAULT NULL,
  `website` varchar(45) DEFAULT NULL,
  `collegeIntroEng` varchar(1000) DEFAULT NULL,
  `websiteEng` varchar(45) DEFAULT NULL,
  `universityNum` varchar(10) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `collegeType` varchar(2) DEFAULT NULL,
  `centerCollegeNum` varchar(10) DEFAULT NULL,
  `wenliFenke` varchar(20) DEFAULT NULL,
  `unifiedCollegeNum` varchar(10) DEFAULT NULL,
  `campusNum` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`collegeId`),
  KEY `FK_base_college_1` (`campusNum`),
  CONSTRAINT `FK_base_college_1` FOREIGN KEY (`campusNum`) REFERENCES `base_campus_info` (`campusNum`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_college`
--

LOCK TABLES `base_college` WRITE;
/*!40000 ALTER TABLE `base_college` DISABLE KEYS */;
INSERT INTO `base_college` VALUES (1,'001','哲学与社会发展学院','','School of Philosophy and Social Development ','','','','',0,1,'',NULL,'','','','','','','','','','01','','01','13010000','01'),(2,'002','易学与中国古代哲学研究基地','','','','','','',NULL,2,'',NULL,'','','','','','','','','','01','','01','14050000','01'),(3,'003','犹太教与跨宗教研究基地','','','','','','',NULL,3,'',NULL,'','','','','','','','','','01','','01','','01'),(4,'004','经济学院','','School of Economics','','','','',0,4,'',NULL,'','','','','','','','','','01','','01','13020000','01'),(5,'005','经济研究院','','The Center for Economic Research','','','','',0,46,'',NULL,'','','','','','','','','','01','','01','14030000','01'),(6,'006','法学院','','Law School ','','','','',0,7,'',NULL,'','','','','','','','','','01','','01','13040000','08'),(7,'007','政治学与公共管理学院','','School of Political Science and Public Administration','','','','',0,5,'',NULL,'','','','','','','','','','01','','01','13030000','08'),(8,'008','当代社会主义研究基地','','','','','','',NULL,6,'',NULL,'','','','','','','','','','01','','01','121300','08'),(9,'009','马克思主义学院','','School of Marxism','','','','',0,48,'',NULL,'','','','','','','','','','01','','01','13290000','01'),(10,'010','高等教育研究中心','','Higher Education Research Institute','','','','',0,51,'',NULL,'','','','','','','','','','01','','01','14120000','01'),(11,'011','文学院','','School of Literature ','','','','',0,8,'',NULL,'','','','','','','','','','01','','01','13050000','01'),(12,'012','文艺美学研究基地','','','','','','',NULL,9,'',NULL,'','','','','','','','','','01','','01','21600','01'),(13,'013','国际教育学院','','College of International Education','','','','',0,49,'',NULL,'','','','','','','','','','01','','01','13300000','01'),(14,'014','文史哲研究院','','Institute of Literature, History and Philosophy ','','','','',0,47,'',NULL,'','','','','','','','','','01','','01','14010000','01'),(15,'015','外国语学院','','School of Foreign Languages and Literature ','','','','',0,10,'',NULL,'','','','','','','','','','01','','01','13060000','02'),(16,'016','艺术学院','','Fine Arts School','','','','',0,11,'',NULL,'','','','','','','','','','01','','01','13070000','02'),(17,'017','历史文化学院','','School of History and Culture','','','','',0,12,'',NULL,'','','','','','','','','','01','','01','13080000','01'),(18,'018','宗教、科学与社会问题研究所','','','','','','',0,13,'',NULL,'','','','','','','','','','01','','01','14020000','01'),(19,'019','数学学院','','School of Mathematics','','','','',0,14,'',NULL,'','','','','','','','','','01','','03','13090000','01'),(20,'020','金融研究院','','Institute for Financial Studies','','','','',0,15,'',NULL,'','','','','','','','','','01','','01','','01'),(21,'021','物理学院','','School of Physics','','','','',0,17,'',NULL,'','','','','','','','','','01','','02','13100000','01'),(22,'022','化学与化工学院','','School of Chemistry and Chemical Engineering','','','','',0,18,'',NULL,'','','','','','','','','','01','','02','13110000','01'),(23,'071','海洋研究院','',' Institute of Marine Research ','','','','',0,19,'',NULL,'','','','','','','','','','01','','02','','08'),(24,'024','生命科学学院','','School of Life Science','','','','',0,23,'',NULL,'','','','','','','','','','01','','02','13140000','08'),(25,'025','微生物技术国家重点实验室','','','','','','',NULL,24,'',NULL,'','','','','','','','','','01','','02','','08'),(26,'026','信息科学与工程学院','','School of Information Science and Engineering','','','','',0,20,'',NULL,'','','','','','','','','','01','','02','13120000','08'),(27,'027','晶体材料研究所','','Institute of Crystal Materials','','','','',0,50,'',NULL,'','','','','','','','','','01','','02','14100000','01'),(29,'029','环境科学与工程学院','','School of Environmental Science and Engineering ','','','','',0,33,'',NULL,'','','','','','','','','','01','','02','13210000','08'),(30,'030','环境研究院','','Environment Research Institute','','','','',0,34,'',NULL,'','','','','','','','','','01','','02','14080000','08'),(31,'031','管理学院','','School of Management','','','','',0,44,'',NULL,'','','','','','','','','','01','','01','13270000','01'),(32,'032','网络信息安全研究所','','','','','','',NULL,16,'',NULL,'','','','','','','','','','01','','02','14060000','01'),(33,'039','材料科学与工程学院','','School of Materials Science and Engineering','','','','',0,25,'',NULL,'','','','','','','','','','01','','02','13150000','04'),(34,'040','热科学与工程研究中心','','Institute of Thermal Science and Technology','','','','',0,26,'',NULL,'','','','','','','','','','01','','02','','04'),(35,'041','机械工程学院','','School of Mechanical Engineering','','','','',0,27,'',NULL,'','','','','','','','','','01','','02','13160000','04'),(36,'042','能源与动力工程学院','','School of Energy and Power Engineering','','','','',0,30,'',NULL,'','','','','','','','','','01','','02','13180000','04'),(37,'043','电气工程学院','','School of Electrical Engineering','','','','',0,31,'',NULL,'','','','','','','','','','01','','02','13190000','04'),(38,'044','控制科学与工程学院','','School of Control Science and Engineering ','','','','',0,28,'',NULL,'','','','','','','','','','01','','02','13170000','04'),(39,'045','现代物流研究中心','','Logistics Institute','','','','',0,29,'',NULL,'','','','','','','','','','01','','02','','04'),(40,'046','土建与水利学院','','School of Civil Engineering','','','','',0,32,'',NULL,'','','','','','','','','','01','','02','13200000','04'),(41,'047','计算机科学与技术学院','','School of Computer Science and Technology','    在这里填写学院的联系方式','    在这里简短的介绍一下本学院的情况','   硕士复试方案','博士复试方案',NULL,21,'',NULL,'','','','','','','','','','01','','02','13130000','08'),(42,'048','软件学院','','Software College','','','','',0,22,'',NULL,'','','','','','','','','','01','','02','13310000','05'),(43,'049','体育学院','','College of Physical Education','','','','',0,45,'',NULL,'','','','','','','','','','01','','01','13280000','04'),(44,'060','齐鲁医学部','','CHEELOO COLLEGE OF MEDICINE','','','','',0,37,'',NULL,'','','','','','','','','','01','','04','13230000','03'),(45,'06001','实验畸形学教育部重点实验室','','','','','','',NULL,38,'',NULL,'','','','','','','','','','11','','04','','03'),(46,'06002','心血管重构与功能研究教育部、卫生部重点实验室','','','','','','',NULL,39,'',NULL,'','','','','','','','','','11','','04','','03'),(47,'06003','耳鼻喉科学卫生部重点实验室','','','','','','',NULL,40,'',NULL,'','','','','','','','','','11','','04','14240000','03'),(48,'06004','公共卫生学院','','School of Public Health','','','','',0,34,'',NULL,'','','','','','','','','','11','','01','13220000','03'),(49,'06005','医药卫生管理学院','','School of Medicine and Health Management ','','','','',0,35,'',NULL,'','','','','','','','','','11','','01','14040000','03'),(50,'06006','医学MBA学院','','','','','','',0,36,'',NULL,'','','','','','','','','','11','','01','14040000','03'),(51,'06007','口腔医学院','','School of Stomatology','','','','',0,41,'',NULL,'','','','','','','','','','11','','04','13240000','03'),(52,'06008','护理学院','','School of Nursing','','','','',0,42,'',NULL,'','','','','','','','','','11','','04','13250000','03'),(53,'06009','药学院','','School of Pharmaceutical Sciences','','','','',0,43,'',NULL,'','','','','','','','','','11','','04','13260000','03'),(54,'090','山东大学（威海）','','Shandong University,Weihai','','','','',0,52,'',NULL,'','','','','','','','','','01','','02','','07'),(55,'091','大学外语教学部','','','','','','',NULL,53,'',NULL,'','','','','','','','','','01','','01','','01'),(56,'092','MBA中心','','School of Management(MBA)','','','','',0,54,'',NULL,'','','','','','','','','','01','','01','','01'),(57,'098','工艺美院','','','','','','',NULL,55,'',NULL,'','','','','','','','','','01','','01','','01'),(58,'06099','济宁医学院','','Jining Medical University','','','','',0,56,'',NULL,'','','','','','','','','','11','','04','','03'),(59,'000','研究生院','','','','','','',NULL,57,'',NULL,'','','','','','','','','','02','','05','11120000','01'),(60,'999','机关','','','','','','',NULL,58,'',NULL,'','','','','','','','','','02','','05','','01'),(61,'033','儒学高等研究院','','Advanced Institute of Confucian Studies','','','','',121,59,'',NULL,'','','','','','','','','','01','','05','14130000','01'),(62,'034','山东发展研究院','','','','','','',NULL,60,'',NULL,'','','','','','','','','','01','','05','14140000','01'),(64,'028','国家糖工程技术研究中心','','National Glycoengineering Research Center','','','','',0,0,'',NULL,'','','','','','','','','','01','','','','08'),(66,'093','文化遗产研究院','','Institute of Cultural Heritage','','','','',122,93,'',NULL,'','','','','','','','','','01','','','','01'),(67,'023','微电子学院','','School of Microelectronics','','','','',0,23,'',NULL,'','','','','','','','','','01','','','','01'),(68,'035','新闻传播学院','','School of Journalism and Communication','','','','',0,35,'',NULL,'','','','','','','','','','01','','','','01'),(131,'09001','韩国学院','','','','','','',NULL,NULL,'',NULL,'','','','','','','','','','12','','','','07'),(132,'09002','商学院','','','','','','',NULL,NULL,'',NULL,'','','','','','','','','','12','','','','07'),(133,'09003','法学院','','','','','','',NULL,NULL,'',NULL,'','','','','','','','','','12','','','','07'),(134,'09004','文化传播学院','','','','','','',NULL,NULL,'',NULL,'','','','','','','','','','12','','','','07'),(135,'09005','翻译学院','','','','','','',NULL,NULL,'',NULL,'','','','','','','','','','12','','','','07'),(136,'09006','艺术学院','','','','','','',NULL,NULL,'',NULL,'','','','','','','','','','12','','','','07'),(137,'09007','机电与信息工程学院','','','','','','',NULL,NULL,'',NULL,'','','','','','','','','','12','','','','07'),(138,'09008','海洋学院','','','','','','',NULL,NULL,'',NULL,'','','','','','','','','','12','','','','07'),(139,'09009','空间科学与物理学院','','','','','','',NULL,NULL,'',NULL,'','','','','','','','','','12','','','','07'),(140,'09010','数学与统计学院','','','','','','',NULL,NULL,'',NULL,'','','','','','','','','','12','','','','07'),(141,'09011','马列教学部','','','','','','',NULL,NULL,'',NULL,'','','','','','','','','','12','','','','07'),(142,'06010','基础医学院','','','','','','',NULL,NULL,'',NULL,'','','','','','','','','','11','','','','03'),(143,'06011','临床医学院','','','','','','',NULL,NULL,'',NULL,'','','','','','','','','','11','','','','03'),(144,'0601101','齐鲁医院','','','','','','',NULL,NULL,'',NULL,'','','','','','','','','','21','','','','03'),(145,'0601102','省立医院','','','','','','',NULL,NULL,'',NULL,'','','','','','','','','','21','','','','03'),(146,'0601103','山东大学附属第二医院','','','','','','',NULL,NULL,'',NULL,'','','','','','','','','','21','','','','03'),(147,'0601104','山东大学千佛山医院','','','','','','',NULL,NULL,'',NULL,'','','','','','','','','','21','','','','03'),(148,'0601105','济南市中心医院','','','','','','',NULL,NULL,'',NULL,'','','','','','','','','','21','','','','03'),(149,'0601106','生殖医院','','','','','','',NULL,NULL,'',NULL,'','','','','','','','','','21','','','','03'),(152,'0601107','其他医院','','','','','','',NULL,NULL,'',NULL,'','','','','','','','','','21','','','','03');
/*!40000 ALTER TABLE `base_college` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `base_data_dictionary`
--

DROP TABLE IF EXISTS `base_data_dictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `base_data_dictionary` (
  `dataItemId` int(11) NOT NULL AUTO_INCREMENT,
  `dataItemNum` varchar(50) DEFAULT NULL,
  `dataItemName` varchar(100) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `fatherItemId` int(11) DEFAULT NULL,
  `dataItem` varchar(200) DEFAULT NULL,
  `isLeaf` int(11) DEFAULT NULL,
  `isVisual` varchar(2) DEFAULT NULL,
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `orderNum` int(11) DEFAULT NULL,
  `dataItemEngName` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`dataItemId`),
  KEY `FK_base_data_dictionary_1` (`fatherItemId`),
  CONSTRAINT `FK_base_data_dictionary_1` FOREIGN KEY (`fatherItemId`) REFERENCES `base_data_dictionary` (`dataItemId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base_data_dictionary`
--

LOCK TABLES `base_data_dictionary` WRITE;
/*!40000 ALTER TABLE `base_data_dictionary` DISABLE KEYS */;
INSERT INTO `base_data_dictionary` VALUES (1,'root','数据字典',NULL,NULL,'根节点',0,NULL,'根节点',1,''),(2,'ZYLXM','资源类型码',NULL,1,NULL,0,NULL,'',NULL,''),(3,'VIDEO','视频',NULL,2,NULL,1,NULL,'',1,''),(4,'MP3','音频',NULL,2,NULL,1,NULL,'',2,''),(5,'PPT','课件',NULL,2,NULL,1,NULL,'',3,''),(6,'LIVE','直播',NULL,2,NULL,1,NULL,'',4,''),(7,'OTHER','其它',NULL,2,NULL,1,NULL,'',8,''),(8,'PDF','PDF文档',NULL,2,NULL,1,NULL,'',5,''),(9,'WORD','WORD文档',NULL,2,NULL,1,NULL,'',6,''),(10,'XWLXM','新闻类型码',NULL,1,NULL,0,NULL,'',1,''),(11,'ZXDT','中心动态',NULL,10,NULL,1,NULL,'',1,''),(12,'ZXWK','中心文库',NULL,10,NULL,1,NULL,'',2,''),(13,'WXDC','文学典藏',NULL,10,NULL,1,NULL,'',3,''),(15,'KCLXM','课程类型码',NULL,1,NULL,0,NULL,'',1,''),(16,'1','在线课程',NULL,15,NULL,1,NULL,'',1,''),(17,'2','课堂学习',NULL,15,NULL,1,NULL,'',2,''),(18,'3','讲座报告',NULL,15,NULL,1,NULL,'',3,''),(19,'TMLXM','题目类型码',NULL,1,NULL,0,NULL,'',1,''),(20,'1','单选题',NULL,19,NULL,1,NULL,'',1,''),(21,'2','多选题',NULL,19,NULL,1,NULL,'',2,''),(22,'3','简答题',NULL,19,NULL,1,NULL,'',3,''),(23,'PRACTICE','在线练习',NULL,2,NULL,1,NULL,'',7,''),(24,'4','微信小程序',NULL,15,NULL,1,NULL,'',4,'');
/*!40000 ALTER TABLE `base_data_dictionary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elearning_achievement`
--

DROP TABLE IF EXISTS `elearning_achievement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elearning_achievement` (
  `achiId` int(11) NOT NULL AUTO_INCREMENT,
  `personId` int(11) NOT NULL DEFAULT '0',
  `examTime` varchar(10) NOT NULL DEFAULT '',
  `recorder` int(11) DEFAULT NULL,
  `subItemScore` varchar(200) DEFAULT NULL,
  `endScore` double DEFAULT NULL,
  `recordTime` datetime DEFAULT NULL,
  `recordState` int(10) unsigned DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `evaluate` varchar(2) DEFAULT NULL,
  `modifyTime` datetime DEFAULT NULL,
  `modifyer` varchar(20) DEFAULT NULL,
  `courseType` varchar(2) DEFAULT NULL,
  `courseNum` varchar(20) DEFAULT NULL,
  `courseName` varchar(50) DEFAULT NULL,
  `courseEngName` varchar(100) DEFAULT NULL,
  `courseSort` varchar(2) DEFAULT NULL,
  `examType` varchar(2) DEFAULT NULL,
  `credit` double DEFAULT NULL,
  `classHour` int(11) DEFAULT NULL,
  `teaNum` int(11) DEFAULT NULL,
  `teaName` varchar(50) DEFAULT NULL,
  `perNum` varchar(20) DEFAULT NULL,
  `taskId` int(11) DEFAULT NULL,
  PRIMARY KEY (`achiId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elearning_achievement`
--

LOCK TABLES `elearning_achievement` WRITE;
/*!40000 ALTER TABLE `elearning_achievement` DISABLE KEYS */;
/*!40000 ALTER TABLE `elearning_achievement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elearning_activity_info`
--

DROP TABLE IF EXISTS `elearning_activity_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elearning_activity_info` (
  `activityId` int(11) NOT NULL AUTO_INCREMENT,
  `taskId` int(11) DEFAULT NULL,
  `startTime` varchar(45) DEFAULT NULL,
  `endTime` varchar(45) DEFAULT NULL,
  `goal` longtext,
  `personId` int(11) DEFAULT NULL,
  `activityName` varchar(45) DEFAULT NULL,
  `place` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`activityId`),
  KEY `FK_elearning_activity_info_1` (`taskId`),
  CONSTRAINT `FK_elearning_activity_info_1` FOREIGN KEY (`taskId`) REFERENCES `elearning_teach_task` (`taskId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elearning_activity_info`
--

LOCK TABLES `elearning_activity_info` WRITE;
/*!40000 ALTER TABLE `elearning_activity_info` DISABLE KEYS */;
INSERT INTO `elearning_activity_info` VALUES (1,4785,'2018-12-03 22:35:54','2018-11-26 22:35:56','学会这些!!!',3,'经典十课课程实践','山东大学软件学院');
/*!40000 ALTER TABLE `elearning_activity_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elearning_activity_score`
--

DROP TABLE IF EXISTS `elearning_activity_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elearning_activity_score` (
  `scoreId` int(11) NOT NULL AUTO_INCREMENT,
  `activityId` int(11) NOT NULL DEFAULT '0',
  `stuId` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `checkerId` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`scoreId`),
  KEY `FK_elearning_homework_score_1` (`activityId`),
  CONSTRAINT `FK_elearning_homework_score_1` FOREIGN KEY (`activityId`) REFERENCES `elearning_activity_info` (`activityId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elearning_activity_score`
--

LOCK TABLES `elearning_activity_score` WRITE;
/*!40000 ALTER TABLE `elearning_activity_score` DISABLE KEYS */;
INSERT INTO `elearning_activity_score` VALUES (1,1,6,2,3,'2018-12-23 14:40:56'),(2,1,4,3,3,'2018-12-23 14:40:56'),(3,1,5,45,3,'2018-12-23 14:40:56');
/*!40000 ALTER TABLE `elearning_activity_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elearning_course`
--

DROP TABLE IF EXISTS `elearning_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elearning_course` (
  `courseId` int(11) NOT NULL AUTO_INCREMENT,
  `courseNum` varchar(20) DEFAULT NULL,
  `courseName` varchar(50) DEFAULT NULL,
  `courseEngName` varchar(100) DEFAULT NULL,
  `courseType` varchar(10) DEFAULT NULL,
  `teachingWayCode` varchar(10) DEFAULT NULL,
  `examType` varchar(10) DEFAULT NULL,
  `teachLanguage` varchar(2) DEFAULT NULL,
  `credit` double DEFAULT NULL,
  `classHour` int(11) DEFAULT NULL,
  `termCount` int(11) DEFAULT NULL,
  `teachingHour` int(11) DEFAULT NULL,
  `experimentHour` int(11) DEFAULT NULL,
  `onComputerHour` int(11) DEFAULT NULL,
  `collegeId` int(11) DEFAULT NULL,
  `collegeId1` int(11) DEFAULT NULL,
  `teachGroup` varchar(100) DEFAULT NULL,
  `book` longtext,
  `reference` longtext,
  `briefIntroduction` longtext,
  `englishBriefIntroduction` longtext,
  `remark` varchar(500) DEFAULT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `modifyTime` datetime DEFAULT NULL,
  `modifyerId` int(11) DEFAULT NULL,
  `subSpec` longtext,
  `coverImgAcc` int(11) DEFAULT NULL,
  `coverVideoAcc` int(11) DEFAULT NULL,
  `subject` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`courseId`),
  KEY `FK_newcultivate_course_2` (`creatorId`),
  CONSTRAINT `FK_newcultivate_course_2` FOREIGN KEY (`creatorId`) REFERENCES `info_person_info` (`personId`)
) ENGINE=InnoDB AUTO_INCREMENT=41036 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elearning_course`
--

LOCK TABLES `elearning_course` WRITE;
/*!40000 ALTER TABLE `elearning_course` DISABLE KEYS */;
INSERT INTO `elearning_course` VALUES (1,'001','数据结构','Date Struct','1','1','1','中文',2,12,1,12,0,0,41,NULL,'李博安1','数据结构介绍','严蔚敏，数据结构介绍','介绍数据结构知识',NULL,NULL,3,'2019-01-12 15:24:01',NULL,NULL,'第一章数据结构介绍，第二章基本数据结构',45,NULL,'8'),(430,'0050041','制度经济学（博士）','Institutional economics','2','4','1','01',4,54,1,54,0,0,5,NULL,'黄少安等','自选','黄少安，《制度经济学》，高教出版社，2008\n魏建，《法经济学》，人民出版社，2007\n科斯，《财产权利与制度变迁》，上海三联出版\nHart, O. D. and Moore, 1990, “Property Rights and the Nature of the Firm”, Journal of Political Economy, 98, pp 1119–1158. \nHart, O. D. and Moore, 2008, “Contracts as Reference Points”, Quarterly Journal of Economics, 123, pp1-48 ',' 《制度经济学》主要讲授制度起源与变迁、制度博弈分析（包括经典博弈和演化博弈）、制度与经济增长、法经济学、语言经济学、制度制度行为实验和计量等内容。通过系统学习该课程，可以深入把握制度经济学的理论发展脉络，同时能够熟练运用相关理论观测、分析和解决现实经济运行中的制度问题。\n','','',3,'2018-12-25 14:56:04',NULL,NULL,'1.制度制度变迁与经济增长。理论分析聚焦不同制度变迁理论的对比研究，当前中国农村制度改革的理论展望。实证研究新中国农地制度变迁与农业经济增长的关系。\n2.制度与创新发展。关注制度环境与企业创新的关系，实证研究创新驱动战略的机理。\n3.法经济学。实证研究当前中国司法制度改革的影响，聚焦反腐败和司法制度创新\n4.制度经典博弈和演化博弈分析\n5.制度演化经济学\n6.制度的实证研究方法',18,NULL,'2'),(432,'0050033','高级宏观经济学','Principles of Computer Organization','2','4','1','01',3,54,2,54,0,0,5,NULL,'李学庆','无','《Principles of Computer Organization》','本课程重点介绍古典和新古典宏观经济理论，包括经济增长和波动，劳动力市场分析、稳定经济的政策等。经济增长和波动是本课程的重要内容之一，具体介绍：古典经济增长模型、无限期界模型、世代交替模型、新经济增长模型、真实经济周期模型、传统凯恩斯主义波动理论、名义不完全调整的微观基础等。课程也简单介绍总需求方面的内容，包括消费和投资的理论，最后是就如何稳定经济的宏观经济政策（赤字与财政政策、通货膨胀与货币政策）进行讨论，包括政策的不确定性、预期、政策要点、政策设计、以及政策与目标之间的相互作用。','','',3,'2018-12-25 14:55:47',NULL,NULL,'教学目的\n本课程为博士生学位课，通过课程学习要求学生系统掌握宏观经济学的理论体系及其在整个经济学中的地位；了解前沿的宏观经济学理论；掌握一定的宏观经济学建模技术。\n\n教学要求\n掌握有关经济增长的不同理论及其演变，以及对实际经济增长的指导作用。特别是新增长理论；了解目前经济学理论对时间趋势的增长差异以及不同国家（地区）增长差异的主要解释。了解经济增长的收敛性；掌握真实经济周期理论产生的背景、假设、政策主张和不足；掌握宏观经济学不同理论和学派的争论；掌握经济现象定量化、数学化的能力，初步可以建立基本的宏观经济模型；掌握基本的动态经济分析方法。\n\n教学方法和考核\n本课程将以课堂讲授为主，采用课堂讲授、文献阅读、讨论和课后作业相结合的方式。考核以闭卷考试和随堂作业为主\n',NULL,NULL,'2'),(1155,'0290002','现代环境监测新技术','Morden Environmental Analytical Technique','3','4','1','01',2,36,1,36,0,0,29,NULL,'崔兆杰','持久性有机污染物-新的全球性环境问题（余刚 牛军峰等编著 2006） 北京：科学出版社				','多环境介质中持久性有机污染物的特征及环境行为 杜士勇 崔兆杰等著（2013）科学出版社\n环境POPs监测分析方法               郭掌珍等著（2013）   中国农业科学技术出版社\n生态环境监测技术                    中国环境监测总站著（2014）  中国环境出版社\n海洋环境中的POPs污染及其分析监测技术     王新红 郑金树著（2011） 海洋出版社\n水环境中持久性有机污染物监测技术          陈吉平 付强著（2015）  化学工业出版社\n突发向大气污染监测预报及应急预案          安俊岭等著（2015）    科学出版社\n烟气排放连续监测系统                      王森主编（2014）       化学工业出版社\n二氧化碳地址封存和环境监测                蔡博峰等著（2013）     化学工业出版社\n基于数据的复杂工业过程监测                张颖伟著（2011）       东北大学出版社\n     ……','   该课程主要针对持久性有机污染物的监测分析方法进行介绍，加强学生对持久性有机污染物分析监测方法、环境存在、s环境行为、治理技术等方面深层次的把握，了解POPs的最新研究进展和发展动态。另外，对二氧化碳封存监测技术、突发性大气污染检测及拥挤预报系统、工业过程检测等现代监测技术进行系统的介绍，使环境专业的学生以更全面和专业的视角了解监测技术，\n   课程要求：掌握持久性有机污染物的分析方法、环境存在及行为、控制技术，深入理解对突发性大气污染监测预报及应急预案、烟气排放连续监测系统，了解二氧化碳封存环境监测及工业过程监测。','','博士三门专业课任选一门',3,'2019-01-12 14:03:59',NULL,NULL,'第一部分 持久性有机物监测分析\r\n第一章：持久性有机污染物和国际公约（定义、特性、国际历程、国际公约制定过程、《斯德哥尔摩公约》主要内容、典型的持久性有机污染物名单\r\n第二章：持久性有机污染物基本性质（持久性有机污染物特征性质、农药类污染物基本性质、多氯联苯的额基本性质、二噁英和呋喃的基本性质）\r\n第三章：持久性有机污染物的分析方法（采样方法、预处理技术、分析方法、质量保证体系）\r\n第四章：持久性有机污染物的环境存在（水环境中、大气、土壤、生物体及人体环境中的持久性有机污染物）\r\n第五章：持久性有机污染物的环境行为（单一介质、多介质间种持久性有机污染物的环境行为及持久性有机污染物的多介质环境模型）\r\n第六章：持久性有机污染物的危害效应（毒性作用机制、对生态系统及人体健康的危害、危害风险评价）\r\n第七章：持久性有机污染物的控制技术（减排技术、源处理技术、环境修复技术）\r\n第二部分 其他先进监测技术\r\n第八章：突发性大气污染监测预报及应急预案          \r\n第九章：烟气排放连续监测系统                      \r\n第十章：二氧化碳地质封存和环境监测                \r\n第十一章：基于数据的复杂工业过程监测',63,NULL,'8'),(1157,'0290005','生态工业园规划与设计','Recycling Economy and Ecological Industry','2','4','2','01',2,36,1,36,0,0,29,NULL,'崔兆杰','中国生态工业园区建设模式与创新   《中国EIP建设模式与创新》编委会主编（2014） 中国环境出版社				','生态工业园区运行机制与评价体系研究   王虹著（2008）                     中国环境出版集团有限公司\n生态工业园系统的演化与调控           秦荪涛著（2012）                   经济管理出版社\n循环经济理论与生态工业技术           段宁等编著（2009）                 中国环境出版社\n工业生态经济学与循环经济            马传栋编著（2007）                  中国社会科学出版社\n产业生态学                         袁增伟等编著）2010）                 科学出版社\n英）格林（英）兰德尔斯 主编，鞠美庭，楚春礼等译  产业生态学与创新研究（2010）出版社:化学工业出版社产业共生网络的结构特征研究           王少平 凌岚著（2012）               同济大学出版社                         \n……','\"通过该课程的学习，使环境专业学生全面把握我过生态工业园的发展现状及模式，通过具体模式的分析深入理解企业、产业共生、资源高效、废物循环利用、科技创先等建设模式，了解园区环境经济绩效评价方法等。\n课程要求：深入理解企业层面生态工业发展模式、产业共生、产业转型升级、废物高效利用等生态工业园区建设模式，掌握园区绩效评级方法。				','','',3,'2018-12-25 14:57:07',NULL,NULL,'   第一章  生态工业国际发展潮流及趋势（国际进展、国外发展概况、国外园区建设和运行机制）\r\n  第二章  中国生态工业园区发展历程及现状（中国改革开放和工业园区发展、中国建设背景、发展现状）\r\n  第三章  中国生态工业园区发展的战略思考（生态工业示范园区与科学发展观、生态文明、节能减排、环境管理战略转型）\r\n  第四章  企业层面的生态工业发展模式\r\n  第五章  产业共生的生态工业发展模式\r\n  第六章  产业转型升级的生态工业发展模式\r\n  第七章  废物循环利用的静脉生态产业模式\r\n  第八章  资源能源高效利用的行业生态化发展模式\r\n  第九章  基于科技创新的生态工业驱动模式\r\n  第十章  生态工业园区建设的经济与环境绩效\r\n  第十一章  生态工业园区提升生态文明水平\r\n  第十二章  中国生态工业园区发展展望',57,NULL,'8'),(1158,'0290006','水源地污染控制技术','Technology of pollution control in water resource','3','2','2','01',2,36,1,36,0,0,29,NULL,'胡文容、裴海燕','n',NULL,'水源地','','',3,'2018-12-25 14:57:40',NULL,NULL,'',54,NULL,'9'),(1159,'0290003','环境信息系统与3S技术','Environmental Information System and 3S Techniques','2','4','1','01',2,36,1,36,0,0,21,NULL,'李小明','1','生态工业园区运行机制与评价体系研究   王虹著（2008）                     中国环境出版集团有限公司\n生态工业园系统的演化与调控           秦荪涛著（2012）                   经济管理出版社\n循环经济理论与生态工业技术           段宁等编著（2009）                 中国环境出版社\n工业生态经济学与循环经济            马传栋编著（2007）                  中国社会科学出版社\n产业生态学                         袁增伟等编著）2010）                 科学出版社\n英）格林（英）兰德尔斯 主编，鞠美庭，楚春礼等译  产业生态学与创新研究（2010）出版社:化学工业出版社产业共生网络的结构特征研究           王少平 凌岚著（2012）               同济大学出版社                         \n……','3','','博士三门专业课任选一门',3,'2019-01-07 22:16:07',NULL,NULL,'',66,NULL,'10'),(1160,'0290007','固体废物资源化技术','Solid waste recycling technology','2','3','2','01',2,36,1,36,0,0,29,NULL,'岳钦艳','jm','生态工业园区运行机制与评价体系研究   王虹著（2008）                     中国环境出版集团有限公司\n生态工业园系统的演化与调控           秦荪涛著（2012）                   经济管理出版社\n循环经济理论与生态工业技术           段宁等编著（2009）                 中国环境出版社\n工业生态经济学与循环经济            马传栋编著（2007）                  中国社会科学出版社\n产业生态学                         袁增伟等编著）2010）                 科学出版社\n英）格林（英）兰德尔斯 主编，鞠美庭，楚春礼等译  产业生态学与创新研究（2010）出版社:化学工业出版社产业共生网络的结构特征研究           王少平 凌岚著（2012）               同济大学出版社                         \n……','主要讲授固体废物资源化技术和原理，并在此基础上针对实际案例进行应用。','','',3,'2019-01-07 22:15:50',NULL,NULL,'',65,NULL,'8'),(41016,'0070223','大数据与公共管理	','Big Data and Public Administration	','1','3','1','01',2,32,1,32,0,0,7,NULL,'俞少宾 孙宗锋','张良均，王路，谭立云，苏剑林等.Python数据分析与挖掘实战.机械工业出版社.2015年				','\"1. [日]矢泽久雄著,胡屹译.计算机是怎样跑起来的.人民邮电出版社.2015年\n2. [美]Zed A.Shaw著,王巍巍译.\"\"笨办法\"\"学Python.人民邮电出版社.2014年\"			','1. 教学目的 本课程旨在帮助学生理解计算机运行以及数据处理的基本原理，了解常见的计算机网络技术，熟练地利用现代计算机技术进行在线与离线数据采集，掌握Python的基础语法并使用Python进行数据处理。 2. 教学重点 在线与离线数据采集；使用Python进行数据处理。','','',3,'2019-01-12 15:24:04',NULL,NULL,'\"第一章：计算机组成原理（讲解）\n第二章：计算机组成原理（上机实训）\n第三章：计算机网络基础（讲解）\n第四章：计算机网络基础（上机实训）\n第五章：Linux操作系统基础操作（讲解）\n第六章：Linux操作系统基础操作（上机实训）\n第七章：从纸质到移动数据采集（讲解）\n第八章：数据采集之LimeSurvey系统与KoboToolbox系统（上机实训）\n第九章：Python简介和基础语法入门（讲解+上机实训）\n第十章：Python：变量和类型（讲解+上机实训）\n第十一章：Python：列表及其操作（讲解+上机实训）\n第十二章：Python：函数与方法（讲解+上机实训）\n第十三章：Python：包以及Numpy包常用操作（讲解+上机实训）\n第十四章：Python：Numpy包常用操作（讲解+上机实训）\n第十五章：Python：序列、基础统计以及作图操作（讲解+上机实训）\n第十六章：结课考试\"				',53,NULL,'8'),(41023,'0110372','先秦两汉文学学术要籍研讨','A study of literary academic classics in pre Qin and Han Dynasties','1','4','2','01',3,54,1,54,0,0,11,NULL,'边家珍教授','自选','费振刚等编著：《中国古代文学要籍导读》，北京大学出版社2003年版。\n','《先秦两汉文学学术要籍研讨》课程的开设，旨在引导研究生对先秦两汉的重要学术典籍作深入研读，激发他们深入思考相关文献中学术问题的兴趣，并就某些有研究价值的问题展开讨论。','','',3,'2019-01-07 22:16:26',NULL,NULL,'第一章 绪论及学习要求\n第二章 朱熹《诗集传》\n第一节 《诗经》概说\n第二节 从汉代今古文《诗》学到《诗集传》\n第三节 《诗集传》的特点 \n第三章 《楚辞补注》与《楚辞集注》\n第一节 屈原与《楚辞》\n第二节 王逸《楚辞章句》\n第三节 洪兴祖《楚辞补注》\n第四节 朱熹《楚辞集注》 \n第四章 杜预《春秋左传集解》\n第一节 《春秋》与《左传》\n第二节 《左传》的早期流传与杜预《春秋左传集解》\n第三节 《春秋左传集解》的特色\n第五章 高诱注《战国策》\n第一节 《战国策》的性质及文学成就\n第二节 高诱注本及古代其他主要注本简介\n第三节 高诱注的价值\n第六章 朱熹《论语集注》\n第一节 《论语》及其流传\n第二节 朱熹及其《四书章句集注》\n第三节 《论语集注》的特点\n第七章 王弼《老子注》\n第一节 老子其人其书\n第二节王弼《老子注》\n第八章 孙诒让《墨子间诂》\n第一节 墨子及《墨子》\n第二节 毕沅《墨子注》\n第三节 孙诒让《墨子间诂》的学术价值\n第九章 朱熹《孟子集注》\n第一节 孟子及《孟子》\n第二节 《孟子集注》的特点\n第十章 郭庆藩《庄子集释》\n第一节 庄子的思想和文章\n第二节 《庄子》的流传以及《庄子》古代的注本\n第三节 《集释》所录郭注成疏的成就和偏失\n第四节 《集释》对郭注成疏等前人著作的驳正\n第十一章 王先谦《荀子集解》\n第一节 荀子及《荀子》\n第二节 杨惊《荀子注》\n第三节 王先谦《荀子集解》的学术价值\n第十二章 泷川资言《史记会注考证》\n第一节 司马迁《史记》及其特质\n第二节 《史记》第一次大规模整理：三家注\n第三节 《史记》第二次大规模整理：泷川资言的《考证》及其基本价值和特点\n第四节 泷川资言《考证》的批评精神\n第五节 泷川资言《考证》的缺陷\n第十三章 王先谦《汉书补注》\n第一节 《汉书》与颜师古注\n第二节 王先谦及其《汉书补注》\n第三节 《汉书补注》的学术价值\n第十四章 郭茂倩《乐府诗集》\n第一节 先秦至唐代乐府诗简介\n第二节 《乐府诗集》在收录作品方面的价值\n第三节 《乐府诗集》在乐府诗歌研究方面的价值\n第四节 《乐府诗集》的缺失及版本整理情况',52,NULL,'5'),(41026,'085211','计算机网络','computer network','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,41,NULL,'李学庆','《计算机网络》','《计算机网络》','操作',NULL,NULL,3,'2019-01-12 15:23:51',NULL,NULL,NULL,50,NULL,'8'),(41027,'085212','计算机组成原理','Principles of Computer Organization','3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,42,NULL,'李新','《Principles of Computer Organization》','《Principles of Computer Organization》','《Principles of Computer Organization》',NULL,NULL,3,'2018-12-25 14:52:32',NULL,NULL,NULL,59,NULL,'8'),(41028,'085211','文学生活馆——经典十课','The ten album of classical school','2',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,134,NULL,'国家玮、刘建亚等','《论语》等','《论语》等','校庆专辑',NULL,NULL,3,'2019-01-12 15:23:56',NULL,NULL,NULL,20,NULL,'5'),(41029,'1','报告提交测试','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,NULL,'1','1','1','1',NULL,NULL,3,'2018-12-25 14:56:53',NULL,NULL,NULL,60,NULL,'11'),(41030,'085211','操作系统','operation system','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,41,NULL,'王前前','无','无','操作',NULL,NULL,3,'2019-01-07 22:16:15',NULL,NULL,NULL,44,NULL,'8'),(41031,'085211','管理学','management','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,31,NULL,'管理学科组','《管理学》','无','无',NULL,NULL,3,'2019-01-12 15:23:54',NULL,NULL,NULL,NULL,NULL,'2'),(41033,NULL,'计算机组成原理','Principle of Computer Composition','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,41,NULL,'黄刚叶','无','无','无',NULL,NULL,3,'2019-01-12 13:51:20',NULL,NULL,NULL,67,NULL,'8'),(41034,NULL,'计算机组成原理','Principle of Computer Composition','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,41,NULL,'赵信','无','无','无',NULL,NULL,3,'2019-01-12 15:25:38',NULL,NULL,NULL,69,NULL,'8'),(41035,NULL,'软件工程导论','Introduction to Software Engineering','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,42,NULL,'李明','《软件工程导论》第5版','课件','无',NULL,NULL,3,'2019-05-21 09:18:12',NULL,NULL,NULL,70,NULL,'8');
/*!40000 ALTER TABLE `elearning_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elearning_course_comment_info`
--

DROP TABLE IF EXISTS `elearning_course_comment_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elearning_course_comment_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `personId` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `taskId` int(11) NOT NULL DEFAULT '0',
  `comment` longtext,
  PRIMARY KEY (`id`),
  KEY `FK_elearning_resource_score_info_1` (`personId`),
  CONSTRAINT `FK_elearning_resource_score_info_1` FOREIGN KEY (`personId`) REFERENCES `info_person_info` (`personId`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elearning_course_comment_info`
--

LOCK TABLES `elearning_course_comment_info` WRITE;
/*!40000 ALTER TABLE `elearning_course_comment_info` DISABLE KEYS */;
INSERT INTO `elearning_course_comment_info` VALUES (1,3,5,'2017-12-14 11:39:09',4785,'谢谢老师！有了大致了解和对文档查阅的方向性查阅技能！'),(2,3,4,'2017-12-14 08:39:09',4785,'这里面有一点没有说清楚，ComponentA之所以要转换成component-a，不是因为vuejs的作者要故弄玄虚\r\n而是因为在HTML中，标签的标签名是大小写不敏感的，而在javascript中变量名是大小写敏感的\r\n换句话说，在HTML中，ComponentA和componenta算是同一个标签\r\n而在javascript中，ComponentA和componenta却不是同一个变量\r\n要解决这种差异问题，就必须得在两种标准之间做一个转换，所以vuejs的作者就实现了将驼峰法(camelCase)转换到短横线法(kebab-case)'),(3,3,1,'2017-12-11 08:39:09',4785,'像这种只有录制者自己能看懂的视频，根本没必要发出来。'),(4,4,5,'2018-04-10 09:26:37',4785,'很好！'),(5,4,1,'2018-04-10 09:27:14',4785,'很好吗'),(6,4,4,'2018-04-10 09:27:37',4785,'还行吧'),(7,4,4,'2018-04-10 09:43:47',4785,'好评'),(8,4,4,'2018-04-10 09:43:59',4785,'好评啊'),(23,4,5,'2018-04-10 10:09:50',4785,'哈性'),(24,4,5,'2018-04-10 10:09:53',4785,'123'),(26,4,5,'2018-04-17 14:55:36',4783,'这个课不错！！！'),(29,4,5,'2018-12-04 22:35:07',4783,'应该可以评论'),(30,4,5,'2018-12-04 22:37:22',4,'最好的课程'),(31,4,3,'2018-12-04 22:37:42',4,'课程很一般'),(32,4,4,'2018-12-13 10:55:08',4785,'可以'),(33,5,5,'2019-01-12 14:00:40',4785,'666'),(34,4,5,'2019-05-21 09:48:06',4785,'课程很棒');
/*!40000 ALTER TABLE `elearning_course_comment_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elearning_course_section`
--

DROP TABLE IF EXISTS `elearning_course_section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elearning_course_section` (
  `sectionId` int(11) NOT NULL AUTO_INCREMENT,
  `taskId` int(11) NOT NULL DEFAULT '0',
  `sectionName` varchar(45) DEFAULT NULL,
  `personId` varchar(45) DEFAULT NULL,
  `createTime` varchar(45) DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `orderNum` int(11) DEFAULT NULL,
  `introduction` longtext,
  PRIMARY KEY (`sectionId`),
  KEY `FK_elearning_course_section_1` (`taskId`),
  CONSTRAINT `FK_elearning_course_section_1` FOREIGN KEY (`taskId`) REFERENCES `elearning_teach_task` (`taskId`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elearning_course_section`
--

LOCK TABLES `elearning_course_section` WRITE;
/*!40000 ALTER TABLE `elearning_course_section` DISABLE KEYS */;
INSERT INTO `elearning_course_section` VALUES (5,4,'第一节','3','2017-11-17 09:33:35',NULL,1,'rrrrrrrrrrrrrrrrrrrrrr'),(6,4,'第二节','3','2017-11-17 09:33:35',NULL,2,NULL),(7,4,'第三节','3','2017-11-17 09:33:35',NULL,3,NULL),(8,4,'第四节','3','2017-11-17 09:33:35',NULL,4,NULL),(9,4785,'第一课：鲁迅精读','3','2017-11-18 10:58:57',NULL,1,''),(10,4785,'第二课：环境导论','3','2019-01-09 14:13:35',NULL,2,NULL),(11,4785,'第三课：数学文化','3','2017-11-18 10:58:57',NULL,3,'456'),(12,4785,'第四课：设计与创意生活','3','2017-11-18 10:58:57',NULL,4,NULL),(13,4785,'第五课：口腔科学','3','2017-11-18 10:58:57',NULL,5,NULL),(14,4785,'第六课：中外艺术史','3','2017-11-18 10:58:57',NULL,6,NULL),(15,4785,'第七课：金融投资学','3','2017-11-18 10:58:57',NULL,7,NULL),(16,4785,'第八课：可视化技术','3','2017-11-18 10:58:57',NULL,8,NULL),(17,4785,'第九课：生理生态学','3','2017-11-18 10:58:57',NULL,9,NULL),(18,4785,'第十课：工程导论','3','2017-11-18 10:58:57',NULL,10,NULL),(19,4787,'第一节','3','2018-11-23 15:42:00',NULL,1,NULL),(20,4787,'第二节','3','2018-11-23 13:22:29',NULL,2,NULL),(21,4789,'第一节 课程介绍','3','2019-01-12 13:55:21',NULL,1,NULL),(22,4789,'第二节 课程学习目标','3','2019-01-12 13:55:30',NULL,2,NULL),(23,4790,'第一节 课程介绍','3','2019-01-12 13:59:31',NULL,1,NULL),(24,4790,'第二节 课程目标','3','2019-01-12 13:59:38',NULL,2,NULL),(25,4792,'第一节 软件工程学概述','3','2019-05-21 09:38:15',NULL,1,NULL),(26,4792,'第二节 可行性研究','3','2019-05-21 09:38:24',NULL,2,NULL);
/*!40000 ALTER TABLE `elearning_course_section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elearning_exam_info`
--

DROP TABLE IF EXISTS `elearning_exam_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elearning_exam_info` (
  `examId` int(11) NOT NULL AUTO_INCREMENT,
  `examTitle` varchar(45) DEFAULT NULL,
  `taskId` int(11) DEFAULT NULL,
  `personId` int(11) DEFAULT NULL,
  `startTime` varchar(45) DEFAULT NULL,
  `endTime` varchar(45) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `remark` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`examId`),
  KEY `FK_elearning_exam_info_1` (`taskId`),
  CONSTRAINT `FK_elearning_exam_info_1` FOREIGN KEY (`taskId`) REFERENCES `elearning_teach_task` (`taskId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elearning_exam_info`
--

LOCK TABLES `elearning_exam_info` WRITE;
/*!40000 ALTER TABLE `elearning_exam_info` DISABLE KEYS */;
INSERT INTO `elearning_exam_info` VALUES (2,'《数据结构》在线考试',4,3,'2018-12-07 10:00:00','2018-12-07 21:00:00','2018-12-07 21:13:09','无','1'),(3,'操作系统考试',4787,NULL,'2018-12-17 10:00:00','2018-12-31 12:00:00',NULL,'无','1'),(4,'经典十课考试',4785,3,'2019-01-09 00:50:52','2019-12-04 21:50:54','2019-01-09 16:24:44','水电费',NULL),(5,'计算机网络考试',4784,3,'2019-01-10 10:18:44','2019-01-18 10:18:48','2019-01-04 10:18:51',NULL,'1'),(6,'机组在线考试',4790,3,'2019-01-15 14:00:00','2019-01-15 16:00:00','2019-01-12 14:06:10',NULL,'1'),(7,'软件工程导论在线考试',4792,3,'2019-05-21 09:00:00','2019-05-21 11:30:00','2019-05-21 09:44:58',NULL,'0');
/*!40000 ALTER TABLE `elearning_exam_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elearning_exam_option`
--

DROP TABLE IF EXISTS `elearning_exam_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elearning_exam_option` (
  `optionId` int(11) NOT NULL AUTO_INCREMENT,
  `optionContent` varchar(45) DEFAULT NULL,
  `questionId` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`optionId`),
  KEY `FK_elearning_exam_option_1` (`questionId`),
  CONSTRAINT `FK_elearning_exam_option_1` FOREIGN KEY (`questionId`) REFERENCES `elearning_exam_question` (`questionId`)
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elearning_exam_option`
--

LOCK TABLES `elearning_exam_option` WRITE;
/*!40000 ALTER TABLE `elearning_exam_option` DISABLE KEYS */;
INSERT INTO `elearning_exam_option` VALUES (113,'11',49,0),(114,'22',49,1),(115,'33',49,2),(116,'44',49,3),(117,'',50,0),(118,'',50,1),(119,'',50,2),(120,'',50,3),(121,'草棚',51,0),(122,'幽谷',51,1),(123,'烈火',51,2),(124,'炉膛',51,3),(125,'争强好胜',53,0),(126,'嗜艺如命',53,1),(127,'落寞孤傲',53,2),(128,'有时代感',53,3),(129,'1',54,0),(130,'2',54,1),(131,'3',54,2),(132,'4',54,3),(133,'对比',57,0),(134,'衬托',57,1),(135,'夸张',57,2),(136,'象征',57,3),(137,'11',58,0),(138,'22',58,1),(139,'高温、高湿',59,0),(140,'低温、低湿',59,1),(141,'低温、低湿',59,2),(142,'低温、高湿',59,3),(143,'海啸',60,0),(144,'全球温室效应',60,1),(145,'火山喷发',60,2),(146,'水旱灾害',60,3);
/*!40000 ALTER TABLE `elearning_exam_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elearning_exam_q_relation`
--

DROP TABLE IF EXISTS `elearning_exam_q_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elearning_exam_q_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `examId` int(11) DEFAULT NULL,
  `questionId` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elearning_exam_q_relation`
--

LOCK TABLES `elearning_exam_q_relation` WRITE;
/*!40000 ALTER TABLE `elearning_exam_q_relation` DISABLE KEYS */;
INSERT INTO `elearning_exam_q_relation` VALUES (3,2,49,4,3),(6,2,57,1,3),(7,2,54,2,2),(8,2,52,3,2),(9,2,50,5,2),(10,2,51,6,2),(11,2,53,7,2),(12,2,55,8,2),(13,2,56,9,2),(14,2,58,10,2),(15,3,49,1,2),(16,4,51,1,2),(17,4,55,2,2),(19,4,53,3,2),(20,4,57,4,2),(21,4,60,5,2),(22,4,56,6,84),(23,2,59,11,2),(24,4,59,7,2),(25,4,58,8,2),(26,4,54,9,2),(27,7,49,1,2),(28,7,51,2,2),(29,7,53,3,2),(30,7,56,4,2);
/*!40000 ALTER TABLE `elearning_exam_q_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elearning_exam_question`
--

DROP TABLE IF EXISTS `elearning_exam_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elearning_exam_question` (
  `questionId` int(11) NOT NULL AUTO_INCREMENT,
  `question` text,
  `answer` varchar(45) DEFAULT NULL,
  `analysis` text,
  `questionType` varchar(45) DEFAULT NULL,
  `personId` int(11) NOT NULL DEFAULT '0',
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`questionId`),
  KEY `FK_elearning_exam_question_1` (`personId`),
  CONSTRAINT `FK_elearning_exam_question_1` FOREIGN KEY (`personId`) REFERENCES `info_person_info` (`personId`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elearning_exam_question`
--

LOCK TABLES `elearning_exam_question` WRITE;
/*!40000 ALTER TABLE `elearning_exam_question` DISABLE KEYS */;
INSERT INTO `elearning_exam_question` VALUES (49,'栈和队列的共同特点是','114','123','1',3,'2019-05-21 09:45:23'),(50,'用链接方式存储的队列，在进行插入运算','118','','1',3,'2018-05-05 08:46:38'),(51,'下列《我愿是一条急流》的意象中，用来比喻“我的爱人”的是','121,122,123','多选题解析','2',3,'2019-01-09 16:30:00'),(52,'https和http的区别','简答题答案','简答题解析','3',3,'2019-01-09 15:46:39'),(53,'《断魂枪》中，孙老者的主要个性特点是','126','单选题解析','1',3,'2019-01-09 16:30:47'),(54,'在经验、情感以及积累判断的基础上进行的决策制定是','129,130,131','多选题解析','2',3,'2019-01-09 15:44:56'),(55,'《蒹葭》全诗流溢着抒情主人公对“伊人”',NULL,'2','3',3,'2019-01-09 15:48:07'),(56,'清除浮动的方法','11','2','3',3,'2019-01-09 15:46:54'),(57,'《我与地坛》第三部分中四季描写的表现手法是','136','解析','1',3,'2019-01-09 16:31:30'),(58,'下列诗作，属于叙事诗的有','137','解析1','1',3,'2019-01-09 15:47:49'),(59,'大气还原性污染物经常发生在（）环境下？','142','算法的分多少分','1',3,'2019-01-09 14:11:58'),(60,'下列属于次生环境问题的是？','144','算法的','1',3,'2019-01-09 14:12:53');
/*!40000 ALTER TABLE `elearning_exam_question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elearning_exam_score_info`
--

DROP TABLE IF EXISTS `elearning_exam_score_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elearning_exam_score_info` (
  `scoreId` int(11) NOT NULL AUTO_INCREMENT,
  `stuId` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `examId` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`scoreId`),
  KEY `FK_elearning_exam_score_info_1` (`stuId`),
  CONSTRAINT `FK_elearning_exam_score_info_1` FOREIGN KEY (`stuId`) REFERENCES `info_person_info` (`personId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elearning_exam_score_info`
--

LOCK TABLES `elearning_exam_score_info` WRITE;
/*!40000 ALTER TABLE `elearning_exam_score_info` DISABLE KEYS */;
INSERT INTO `elearning_exam_score_info` VALUES (1,4,2,2,'2018-12-07 21:44:15'),(2,4,0,3,'2019-01-12 14:06:40'),(3,5,0,5,'2019-05-21 09:46:37'),(4,5,0,6,'2019-05-21 09:46:44');
/*!40000 ALTER TABLE `elearning_exam_score_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elearning_exam_stu_answer`
--

DROP TABLE IF EXISTS `elearning_exam_stu_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elearning_exam_stu_answer` (
  `answerId` int(11) NOT NULL AUTO_INCREMENT,
  `answer` text,
  `examId` int(11) DEFAULT NULL,
  `questionId` int(11) DEFAULT NULL,
  `stuId` int(11) DEFAULT NULL,
  `answerTime` datetime DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `teaId` int(11) DEFAULT NULL,
  PRIMARY KEY (`answerId`),
  KEY `FK_elearning_exam_stu_answer_1` (`examId`),
  KEY `FK_elearning_exam_stu_answer_2` (`questionId`),
  KEY `FK_elearning_exam_stu_answer_3` (`stuId`),
  CONSTRAINT `FK_elearning_exam_stu_answer_1` FOREIGN KEY (`examId`) REFERENCES `elearning_exam_info` (`examId`),
  CONSTRAINT `FK_elearning_exam_stu_answer_2` FOREIGN KEY (`questionId`) REFERENCES `elearning_exam_question` (`questionId`),
  CONSTRAINT `FK_elearning_exam_stu_answer_3` FOREIGN KEY (`stuId`) REFERENCES `info_person_info` (`personId`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elearning_exam_stu_answer`
--

LOCK TABLES `elearning_exam_stu_answer` WRITE;
/*!40000 ALTER TABLE `elearning_exam_stu_answer` DISABLE KEYS */;
INSERT INTO `elearning_exam_stu_answer` VALUES (1,'113',2,49,4,'2018-12-07 20:32:47',3,NULL),(2,'134',2,57,4,'2018-12-07 20:32:47',3,NULL),(3,'131',2,54,4,'2018-12-07 20:32:47',2,NULL),(4,'4',2,52,4,'2018-12-07 20:32:47',2,NULL),(5,'120',2,50,4,'2018-12-07 20:32:47',2,NULL),(6,'null,122,121',2,51,4,'2018-12-07 20:32:49',2,NULL),(7,'126',2,53,4,'2018-12-07 20:32:49',2,NULL),(8,'8',2,55,4,'2018-12-07 20:32:49',2,NULL),(9,'9',2,56,4,'2018-12-07 20:32:49',2,NULL),(10,'138',2,58,4,'2018-12-07 20:32:49',2,NULL),(11,'null,121',4,51,5,'2019-01-12 14:07:50',2,NULL),(12,'答案',4,55,5,'2019-01-12 14:07:50',2,NULL),(13,'126',4,53,5,'2019-01-12 14:07:50',2,NULL),(14,'135',4,57,5,'2019-01-12 14:07:50',2,NULL),(15,'145',4,60,5,'2019-01-12 14:07:50',2,NULL),(16,'题目',4,56,5,'2019-01-12 14:07:55',90,NULL),(17,'null,121',4,51,4,'2019-05-21 09:46:15',2,NULL),(18,'fdfd',4,55,4,'2019-05-21 09:46:15',2,NULL),(19,'126',4,53,4,'2019-05-21 09:46:15',2,NULL),(20,'135',4,57,4,'2019-05-21 09:46:15',2,NULL),(21,'145',4,60,4,'2019-05-21 09:46:15',2,NULL),(22,NULL,4,56,4,'2019-05-21 09:46:14',84,NULL),(23,NULL,4,59,4,'2019-05-21 09:46:14',2,NULL),(24,NULL,4,58,4,'2019-05-21 09:46:14',2,NULL),(25,'null',4,54,4,'2019-05-21 09:46:14',2,NULL);
/*!40000 ALTER TABLE `elearning_exam_stu_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elearning_homework_answer`
--

DROP TABLE IF EXISTS `elearning_homework_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elearning_homework_answer` (
  `answerId` int(11) NOT NULL AUTO_INCREMENT,
  `stuId` int(11) NOT NULL DEFAULT '0',
  `homeworkId` int(11) NOT NULL DEFAULT '0',
  `answerContent` longtext,
  `attachId` int(11) DEFAULT NULL,
  `score` double DEFAULT NULL,
  `checkerId` int(11) DEFAULT NULL,
  `checkTime` datetime DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`answerId`),
  KEY `FK_elearning_homework_answer_1` (`homeworkId`),
  KEY `FK_elearning_homework_answer_2` (`stuId`),
  KEY `FK_elearning_homework_answer_3` (`attachId`),
  KEY `FK_elearning_homework_answer_4` (`checkerId`),
  CONSTRAINT `FK_elearning_homework_answer_1` FOREIGN KEY (`homeworkId`) REFERENCES `elearning_homework_info` (`homeworkId`),
  CONSTRAINT `FK_elearning_homework_answer_2` FOREIGN KEY (`stuId`) REFERENCES `info_person_info` (`personId`),
  CONSTRAINT `FK_elearning_homework_answer_3` FOREIGN KEY (`attachId`) REFERENCES `base_attachment_info` (`attachId`),
  CONSTRAINT `FK_elearning_homework_answer_4` FOREIGN KEY (`checkerId`) REFERENCES `info_person_info` (`personId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elearning_homework_answer`
--

LOCK TABLES `elearning_homework_answer` WRITE;
/*!40000 ALTER TABLE `elearning_homework_answer` DISABLE KEYS */;
INSERT INTO `elearning_homework_answer` VALUES (2,4,3,'1',NULL,60,3,'2018-12-19 16:05:42','2017-11-15 09:36:24'),(3,4,2,'2',NULL,80,3,'2018-12-19 16:06:30','2017-11-15 09:36:24'),(4,4,4,'1234',NULL,NULL,NULL,NULL,'2018-12-19 20:12:13');
/*!40000 ALTER TABLE `elearning_homework_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elearning_homework_info`
--

DROP TABLE IF EXISTS `elearning_homework_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elearning_homework_info` (
  `homeworkId` int(11) NOT NULL AUTO_INCREMENT,
  `taskId` int(11) NOT NULL DEFAULT '0',
  `chapterName` varchar(45) DEFAULT NULL,
  `startTime` varchar(45) DEFAULT NULL,
  `endTime` varchar(45) DEFAULT NULL,
  `content` longtext,
  `attachId` int(11) DEFAULT NULL,
  `personId` int(11) NOT NULL DEFAULT '0',
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`homeworkId`),
  KEY `FK_elearning_homework_info_1` (`taskId`),
  KEY `FK_elearning_homework_info_2` (`attachId`),
  KEY `FK_elearning_homework_info_3` (`personId`),
  CONSTRAINT `FK_elearning_homework_info_1` FOREIGN KEY (`taskId`) REFERENCES `elearning_teach_task` (`taskId`),
  CONSTRAINT `FK_elearning_homework_info_2` FOREIGN KEY (`attachId`) REFERENCES `base_attachment_info` (`attachId`),
  CONSTRAINT `FK_elearning_homework_info_3` FOREIGN KEY (`personId`) REFERENCES `info_person_info` (`personId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elearning_homework_info`
--

LOCK TABLES `elearning_homework_info` WRITE;
/*!40000 ALTER TABLE `elearning_homework_info` DISABLE KEYS */;
INSERT INTO `elearning_homework_info` VALUES (1,4783,'1','2017-11-15 09:36:24','2018-01-24 09:45:54','1深圳市女财经工作者协会来齐鲁医学院推进资助育人工作\n12月8日，深圳市女财经工作者协会会长朱彦、副秘书长傅杰一行六人来齐鲁医学院推进2018年度“资助医科类贫困大学生”工作。齐鲁医学院党工委书记侯俊平、副书记兼纪工委书记陈鑫分别与朱彦会长一行见面并探讨了下一步学生资助育人的有关事宜。\n朱彦会长一行与46位申请2018年度深圳市女财经工作者协会资助项目的同学进行了面对面的交流。朱彦会长全面详细地向同学们介绍了协会和资助项目的有关情况，同学们也向协会会员代表介绍了自己面临的困难和为克服困难作出的努力。经过一天的交流，深圳市女财经工作者协会表示，本年度申请协会资助项目的同学学习刻苦努力，积极上进，令人感动，愿意尽最大努力在最大程度上帮助同学们解决经济困难，助力同学成长成才。\n2017年受到协会资助的同学闻讯后主动赶来向深圳市女财经工作者协会表示感谢，并汇报了自己一年来的学习情况。\n深圳市女财经工作者协会自2014年成立以来，根据“仁爱”的章程精神，鼓励会员参与社会公益活动，增强会员社会责任感，组织会员资助贫困财经类、医学类大学生，为他们提供全额或部分学费及生活费（会员自愿报名参加，以“一对一”的形式承担全额或部分被资助学生本科期间学费及生活费），资助对象主要面向二、三年级品学兼优的经济困难本科生。这项活动也得到了深圳市委、市政府领导，市妇联、民政局及社会各界的充分肯定和高度赞扬。\n\n\n\n\n文：岳晓琳  图：卢佳',NULL,3,'预习作业'),(2,4783,'第一章','2017-11-15 09:42:26','2018-01-24 09:45:54','随意',NULL,3,'第一章作业'),(3,4785,'第一讲','2017-12-02 09:45:53','2018-01-24 09:45:54','抄写一遍',NULL,3,'经典十课第一讲作业'),(4,4785,NULL,'2018-12-11 10:44:53','2018-12-31 10:45:02','抄一遍',NULL,3,'经典十课第二讲作业'),(5,4785,NULL,'2018-12-03 22:35:54','2018-11-26 22:35:56','123',NULL,3,'123');
/*!40000 ALTER TABLE `elearning_homework_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elearning_interlocution_info`
--

DROP TABLE IF EXISTS `elearning_interlocution_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elearning_interlocution_info` (
  `questionId` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) DEFAULT NULL,
  `question` longtext,
  `personId` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `title` longtext,
  `answer` longtext,
  `answerTime` datetime DEFAULT NULL,
  `teacherId` int(11) DEFAULT NULL,
  `taskId` int(11) NOT NULL DEFAULT '0',
  `state` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`questionId`),
  KEY `FK_elearning_interlocution_info_1` (`taskId`),
  CONSTRAINT `FK_elearning_interlocution_info_1` FOREIGN KEY (`taskId`) REFERENCES `elearning_teach_task` (`taskId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elearning_interlocution_info`
--

LOCK TABLES `elearning_interlocution_info` WRITE;
/*!40000 ALTER TABLE `elearning_interlocution_info` DISABLE KEYS */;
INSERT INTO `elearning_interlocution_info` VALUES (1,9,'看不懂',4,'2017-11-15 09:36:24','如何理解这个标题','发发发方法付付\n\n\n\n','2018-12-11 10:54:07',3,4785,'1'),(2,9,'123',3,'2017-11-15 09:36:24','buhui','123','2017-12-20 16:06:52',3,4785,'1'),(3,NULL,'不知道一共有多少字',4,'2018-12-13 12:53:11','课程最后一节',NULL,NULL,NULL,4785,'0'),(4,NULL,'不知道一共有多少字',4,'2018-12-13 12:54:30','课程最后一节',NULL,NULL,NULL,4785,'0'),(5,NULL,'推荐一下',4,'2018-12-13 13:00:27','这个课很好',NULL,NULL,NULL,4785,'0'),(6,NULL,'22',4,'2018-12-13 13:01:07','！！',NULL,NULL,NULL,4785,'0');
/*!40000 ALTER TABLE `elearning_interlocution_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elearning_lecture`
--

DROP TABLE IF EXISTS `elearning_lecture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elearning_lecture` (
  `lectureId` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(45) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `modifyTime` datetime DEFAULT NULL,
  `modifier` int(11) DEFAULT NULL,
  `startTime` varchar(45) DEFAULT NULL,
  `endTime` varchar(45) DEFAULT NULL,
  `place` varchar(45) DEFAULT NULL,
  `lectureType` varchar(45) DEFAULT NULL,
  `maxNumber` int(11) DEFAULT NULL,
  `registStart` varchar(45) DEFAULT NULL,
  `registEnd` varchar(45) DEFAULT NULL,
  `coverImgAcc` int(11) DEFAULT NULL,
  `speaker` varchar(45) DEFAULT NULL,
  `collegeId` int(11) DEFAULT NULL,
  `introduce` longtext,
  PRIMARY KEY (`lectureId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elearning_lecture`
--

LOCK TABLES `elearning_lecture` WRITE;
/*!40000 ALTER TABLE `elearning_lecture` DISABLE KEYS */;
INSERT INTO `elearning_lecture` VALUES (2,'软件工程导论','2018-11-30 21:38:56',3,'2019-01-09 19:15:28',3,'2018-12-31 20:30:00','2018-12-31 21:00:00','软件学院','1',50,'2018-12-01 08:00:00','2018-12-03 23:59:59',41,'李老师',42,'这是系统的讲座添加测试'),(5,'范爱军：中美贸易摩擦问题解读','2018-11-30 22:29:04',3,'2018-12-20 21:28:25',3,'2018-12-31 14:30:00','2018-12-31 16:30:00','山东大学文学生活馆','1',100,'2018-12-01 08:00:00','2018-12-30 23:59:59',42,'范爱军',134,'2018年3月份以来，中美之间发生了严重的贸易摩擦，而且不断地在升级。中美两国之间到底发生了什么，目前看两国纠纷暂时还没有好转的迹象，什么原因会导致局势这么紧张？本讲座将在使用大量数据和案例的基础上对此热点问题做详细的分析和解读，介绍中美两国贸易纠纷的真实原因、美国关于中国侵犯知识产权的几点意见以及中国政府在这方面的主要观点。面对中美相互贸易制裁、中国出口市场日益缩小的局面，中国政府应该采取的对策有哪些？主要有深化体制改革、扩大内需、以及开拓新的国际市场，尤其是要加快一带一路建设。本讲座将对这些问题作出系统、深入、全面的讲解，以便使大家全面了解目前的中美贸易摩擦的真相，并了解中国政府的宏观政策以及应对思路。'),(6,'第一次研讨班','2018-12-01 08:45:56',3,'2018-12-01 10:23:29',3,'2018-12-31 09:30:00','2018-12-31 10:30:00','青岛校区','2',20,'2018-12-01 08:00:00','2018-12-30 23:59:59',43,'无',1,'北京阳光柠檬科技有限公司（柠檬学院）是一家“专注培养高精端IT人才，全力打造在线教育知名品牌”的教育咨询公司。公司以在线网络授课平台为基础，整合社会更高品质、更具效率、更先进的教育资源，聘请IT高端人才和资深讲师亲自授课，制定资深讲师团队“一对一”服务，为学员提供完善的在线教育课程和优质的就业服务保障。'),(7,'第二次大数据讲座','2019-01-12 14:09:52',3,'2019-01-12 14:11:13',3,'2019-01-23 14:09:46','2019-01-23 16:09:50','山东大学软件学院','1',100,'2019-01-16 14:09:39','2019-01-23 14:09:42',68,'刘勇',42,'这是讲座添加测试'),(8,'回到未来——五四，文学与科学','2019-05-21 09:59:29',3,'2019-05-21 10:02:32',3,'2019-05-31 19:00:00','2019-05-31 20:00:00','山东大学中心校区文学生活馆','1',100,'2019-05-01 08:00:00','2019-05-30 23:59:59',71,'宋明炜',134,'回到未来——五四，文学与科学'),(9,'巴黎圣母院的建筑之美','2019-05-21 10:04:23',3,'2019-05-21 10:04:40',3,'2019-05-31 18:00:00','2019-05-31 20:00:00','山东大学中心校区文学生活馆','1',100,'2019-05-01 10:00:00','2019-05-30 23:00:00',72,'谷健辉',68,'巴黎圣母院的建筑之美');
/*!40000 ALTER TABLE `elearning_lecture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elearning_lecture_attendance`
--

DROP TABLE IF EXISTS `elearning_lecture_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elearning_lecture_attendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lectureId` int(11) DEFAULT NULL,
  `stuId` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `attendance` varchar(45) DEFAULT NULL,
  `entryId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_elearning_lecture_attendance_1` (`entryId`),
  CONSTRAINT `FK_elearning_lecture_attendance_1` FOREIGN KEY (`entryId`) REFERENCES `elearning_lecture_entry` (`entryId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elearning_lecture_attendance`
--

LOCK TABLES `elearning_lecture_attendance` WRITE;
/*!40000 ALTER TABLE `elearning_lecture_attendance` DISABLE KEYS */;
INSERT INTO `elearning_lecture_attendance` VALUES (17,5,7,'2018-12-03 09:43:12',3,'1',4),(18,5,6,'2018-12-03 09:43:12',3,'1',3),(19,5,5,'2018-12-03 09:43:12',3,'0',2),(20,5,4,'2018-12-03 09:43:12',3,'1',1),(21,8,4,'2019-05-21 10:00:48',3,'1',12),(22,9,4,'2019-05-21 10:05:09',3,'1',13);
/*!40000 ALTER TABLE `elearning_lecture_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elearning_lecture_entry`
--

DROP TABLE IF EXISTS `elearning_lecture_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elearning_lecture_entry` (
  `entryId` int(11) NOT NULL AUTO_INCREMENT,
  `lectureId` int(11) DEFAULT NULL,
  `personId` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `cancelReason` varchar(45) DEFAULT NULL,
  `refuseReason` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  KEY `FK_elearning_lecture_entry_1` (`lectureId`),
  CONSTRAINT `FK_elearning_lecture_entry_1` FOREIGN KEY (`lectureId`) REFERENCES `elearning_lecture` (`lectureId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elearning_lecture_entry`
--

LOCK TABLES `elearning_lecture_entry` WRITE;
/*!40000 ALTER TABLE `elearning_lecture_entry` DISABLE KEYS */;
INSERT INTO `elearning_lecture_entry` VALUES (1,5,4,'2018-12-01 11:14:01','1',NULL,NULL),(2,5,5,'2018-12-01 20:50:13','1',NULL,NULL),(3,5,6,'2018-12-01 20:50:22','1',NULL,NULL),(4,5,7,'2018-12-01 20:53:09','1',NULL,NULL),(5,6,4,'2018-12-03 10:31:55','1',NULL,NULL),(6,5,111,'2019-01-09 19:04:26','0',NULL,NULL),(7,5,110,'2019-01-09 19:04:39','0',NULL,NULL),(8,5,58,'2019-01-09 19:05:35','0',NULL,NULL),(9,5,57,'2019-01-09 19:05:48','0',NULL,NULL),(10,5,53,'2019-01-09 19:06:08','0',NULL,NULL),(11,7,5,'2019-01-12 14:10:16','1',NULL,NULL),(12,8,4,'2019-05-21 10:00:07','1',NULL,NULL),(13,9,4,'2019-05-21 10:04:49','1',NULL,NULL);
/*!40000 ALTER TABLE `elearning_lecture_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elearning_lecture_live`
--

DROP TABLE IF EXISTS `elearning_lecture_live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elearning_lecture_live` (
  `liveId` int(11) NOT NULL AUTO_INCREMENT,
  `lectureId` int(11) NOT NULL DEFAULT '0',
  `startTime` varchar(45) DEFAULT NULL,
  `pushUrl` text,
  `outputUrl` text,
  `createTime` datetime DEFAULT NULL,
  `personId` varchar(45) DEFAULT NULL,
  `endTime` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`liveId`),
  KEY `FK_elearning_lecture_live_1` (`lectureId`),
  CONSTRAINT `FK_elearning_lecture_live_1` FOREIGN KEY (`lectureId`) REFERENCES `elearning_lecture` (`lectureId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elearning_lecture_live`
--

LOCK TABLES `elearning_lecture_live` WRITE;
/*!40000 ALTER TABLE `elearning_lecture_live` DISABLE KEYS */;
INSERT INTO `elearning_lecture_live` VALUES (1,6,'2018-12-26 21:10:26','i','ui','2018-12-20 21:10:40','3','2018-12-05 21:08:37'),(2,5,'2018-12-20 20:11:32','k','http://www.jplayer.org/video/m4v/Big_Buck_Bunny_Trailer.m4v','2018-12-20 21:11:39','3','2018-12-21 21:11:36');
/*!40000 ALTER TABLE `elearning_lecture_live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elearning_notice`
--

DROP TABLE IF EXISTS `elearning_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elearning_notice` (
  `noticeId` int(11) NOT NULL AUTO_INCREMENT,
  `title` text,
  `content` longtext,
  `personId` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`noticeId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elearning_notice`
--

LOCK TABLES `elearning_notice` WRITE;
/*!40000 ALTER TABLE `elearning_notice` DISABLE KEYS */;
INSERT INTO `elearning_notice` VALUES (3,'文学生活馆学习社区上线通知','文学生活馆学习社区上线通知',2,'2019-05-19 16:18:06'),(4,'高校开放式学习平台内测通知','高校开放式学习平台内测通知',2,'2019-05-19 16:18:27');
/*!40000 ALTER TABLE `elearning_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elearning_pay_record`
--

DROP TABLE IF EXISTS `elearning_pay_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elearning_pay_record` (
  `payId` int(11) NOT NULL AUTO_INCREMENT,
  `personId` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `payMode` varchar(45) DEFAULT NULL,
  `payNumber` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `chargeId` int(11) NOT NULL DEFAULT '0',
  `planId` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  PRIMARY KEY (`payId`),
  KEY `FK_elearning_pay_record_1` (`chargeId`),
  KEY `FK_elearning_pay_record_2` (`planId`),
  CONSTRAINT `FK_elearning_pay_record_1` FOREIGN KEY (`chargeId`) REFERENCES `elearning_task_charge` (`chargeId`),
  CONSTRAINT `FK_elearning_pay_record_2` FOREIGN KEY (`planId`) REFERENCES `elearning_plan_course` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elearning_pay_record`
--

LOCK TABLES `elearning_pay_record` WRITE;
/*!40000 ALTER TABLE `elearning_pay_record` DISABLE KEYS */;
INSERT INTO `elearning_pay_record` VALUES (1,5,'2018-12-21 15:12:05','UnionPay','1115646854658','1',10,152253,10),(2,5,'2018-12-21 15:14:41','UnionPay','1115646854658','1',8,152254,8),(3,5,'2018-12-21 15:16:05','UnionPay','1115646854658','1',9,152255,9),(4,5,'2019-01-12 14:03:31','UnionPay','1115646854658','1',12,152256,0);
/*!40000 ALTER TABLE `elearning_pay_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elearning_plan_course`
--

DROP TABLE IF EXISTS `elearning_plan_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elearning_plan_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stuId` int(11) NOT NULL DEFAULT '0',
  `taskId` int(11) NOT NULL DEFAULT '0',
  `remark` varchar(100) DEFAULT NULL,
  `modifyTime` datetime DEFAULT NULL,
  `modifyerId` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `creator` int(11) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `completeDegree` double DEFAULT NULL,
  `sectionIdNode` int(11) DEFAULT NULL,
  `isFinish` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_elearning_plan_course_2` (`stuId`),
  KEY `FK_elearning_plan_course_4` (`taskId`),
  KEY `FK_elearning_plan_course_3` (`sectionIdNode`),
  CONSTRAINT `FK_elearning_plan_course_2` FOREIGN KEY (`stuId`) REFERENCES `info_person_info` (`personId`),
  CONSTRAINT `FK_elearning_plan_course_3` FOREIGN KEY (`sectionIdNode`) REFERENCES `elearning_course_section` (`sectionId`),
  CONSTRAINT `FK_elearning_plan_course_4` FOREIGN KEY (`taskId`) REFERENCES `elearning_teach_task` (`taskId`)
) ENGINE=InnoDB AUTO_INCREMENT=152258 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elearning_plan_course`
--

LOCK TABLES `elearning_plan_course` WRITE;
/*!40000 ALTER TABLE `elearning_plan_course` DISABLE KEYS */;
INSERT INTO `elearning_plan_course` VALUES (152243,4,1,NULL,NULL,NULL,'2018-12-05 09:41:20',NULL,'1',3,0.0625,NULL,NULL),(152244,4,4783,NULL,NULL,NULL,'2018-12-05 09:41:20',NULL,'1',0,0,NULL,NULL),(152245,4,4782,NULL,NULL,NULL,'2018-12-05 09:41:20',NULL,'1',0,0,NULL,NULL),(152246,4,4,NULL,NULL,NULL,'2018-12-05 09:41:20',NULL,'1',0,0,NULL,NULL),(152247,4,4785,NULL,NULL,NULL,'2018-12-05 09:41:20',NULL,'1',100,0.2,11,NULL),(152249,4,4787,NULL,NULL,NULL,'2018-12-05 09:41:20',4,'1',0,0,NULL,NULL),(152250,5,4788,NULL,NULL,NULL,'2018-12-10 10:40:50',5,'1',0,0,NULL,NULL),(152251,4,4788,NULL,NULL,NULL,'2018-12-10 10:41:40',4,'1',0,0,NULL,NULL),(152252,6,4785,NULL,NULL,NULL,'2018-12-14 11:01:21',3,'2',0,0,NULL,NULL),(152253,5,4783,NULL,NULL,NULL,'2018-12-21 15:12:05',5,'1',0,0,NULL,'0'),(152254,5,4785,NULL,NULL,NULL,'2018-12-21 15:14:41',5,'1',10,0.1,9,'0'),(152255,5,4784,NULL,NULL,NULL,'2018-12-21 15:16:05',5,'1',0,0,NULL,'0'),(152256,5,4790,NULL,NULL,NULL,'2019-01-12 14:03:31',5,'1',0,0,NULL,'0'),(152257,4,4792,NULL,NULL,NULL,'2019-05-21 11:38:29',4,'1',0,0,NULL,'0');
/*!40000 ALTER TABLE `elearning_plan_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elearning_practice_info`
--

DROP TABLE IF EXISTS `elearning_practice_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elearning_practice_info` (
  `practiceId` int(11) NOT NULL AUTO_INCREMENT,
  `practiceTitle` varchar(45) DEFAULT NULL,
  `personId` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`practiceId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elearning_practice_info`
--

LOCK TABLES `elearning_practice_info` WRITE;
/*!40000 ALTER TABLE `elearning_practice_info` DISABLE KEYS */;
INSERT INTO `elearning_practice_info` VALUES (1,'在线练习添加测试1',3,'2018-12-07 10:00:16'),(2,'在线练习',3,'2018-12-07 10:00:25');
/*!40000 ALTER TABLE `elearning_practice_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elearning_practice_q_relation`
--

DROP TABLE IF EXISTS `elearning_practice_q_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elearning_practice_q_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `practiceId` int(11) DEFAULT NULL,
  `questionId` int(11) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elearning_practice_q_relation`
--

LOCK TABLES `elearning_practice_q_relation` WRITE;
/*!40000 ALTER TABLE `elearning_practice_q_relation` DISABLE KEYS */;
INSERT INTO `elearning_practice_q_relation` VALUES (6,1,59,1),(7,1,60,2);
/*!40000 ALTER TABLE `elearning_practice_q_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elearning_practice_stu_answer`
--

DROP TABLE IF EXISTS `elearning_practice_stu_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elearning_practice_stu_answer` (
  `answerId` int(11) NOT NULL AUTO_INCREMENT,
  `answer` varchar(45) NOT NULL DEFAULT '',
  `practiceId` int(11) DEFAULT NULL,
  `questionId` int(11) DEFAULT NULL,
  `stuId` int(11) DEFAULT NULL,
  `answerTime` datetime DEFAULT NULL,
  PRIMARY KEY (`answerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elearning_practice_stu_answer`
--

LOCK TABLES `elearning_practice_stu_answer` WRITE;
/*!40000 ALTER TABLE `elearning_practice_stu_answer` DISABLE KEYS */;
/*!40000 ALTER TABLE `elearning_practice_stu_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elearning_section_acc`
--

DROP TABLE IF EXISTS `elearning_section_acc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elearning_section_acc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL DEFAULT '0',
  `accId` int(11) NOT NULL DEFAULT '0',
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_elearning_section_acc_1` (`sectionId`),
  KEY `FK_elearning_section_acc_2` (`accId`),
  CONSTRAINT `FK_elearning_section_acc_1` FOREIGN KEY (`sectionId`) REFERENCES `elearning_course_section` (`sectionId`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elearning_section_acc`
--

LOCK TABLES `elearning_section_acc` WRITE;
/*!40000 ALTER TABLE `elearning_section_acc` DISABLE KEYS */;
INSERT INTO `elearning_section_acc` VALUES (10,11,422,'VIDEO'),(14,10,422,'VIDEO'),(15,10,1,'PRACTICE'),(16,21,422,'VIDEO'),(17,21,2,'PRACTICE'),(18,23,422,'VIDEO'),(19,23,2,'PRACTICE'),(20,9,422,'VIDEO'),(22,9,1,'PRACTICE'),(23,25,414,'VIDEO'),(24,26,416,'VIDEO'),(25,25,1,'PRACTICE');
/*!40000 ALTER TABLE `elearning_section_acc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elearning_task_charge`
--

DROP TABLE IF EXISTS `elearning_task_charge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elearning_task_charge` (
  `chargeId` int(11) NOT NULL AUTO_INCREMENT,
  `taskId` int(11) NOT NULL DEFAULT '0',
  `price` double DEFAULT NULL,
  PRIMARY KEY (`chargeId`),
  KEY `FK_elearning_task_charge_1` (`taskId`),
  CONSTRAINT `FK_elearning_task_charge_1` FOREIGN KEY (`taskId`) REFERENCES `elearning_teach_task` (`taskId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elearning_task_charge`
--

LOCK TABLES `elearning_task_charge` WRITE;
/*!40000 ALTER TABLE `elearning_task_charge` DISABLE KEYS */;
INSERT INTO `elearning_task_charge` VALUES (1,4788,1),(2,4787,2),(3,4786,3),(4,4782,5),(5,4,6),(6,2,6),(7,1,7),(8,4785,8),(9,4784,10),(10,4783,7),(11,4789,0),(12,4790,0),(13,4791,5),(14,4792,0);
/*!40000 ALTER TABLE `elearning_task_charge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elearning_task_finish`
--

DROP TABLE IF EXISTS `elearning_task_finish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elearning_task_finish` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stuId` int(11) DEFAULT NULL,
  `taskId` int(11) DEFAULT NULL,
  `isFinish` varchar(45) DEFAULT NULL,
  `courseId` int(11) DEFAULT NULL,
  `sectionId` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `practiceFinish` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_elearning_task_finish_1` (`stuId`),
  KEY `FK_elearning_task_finish_2` (`taskId`),
  CONSTRAINT `FK_elearning_task_finish_1` FOREIGN KEY (`stuId`) REFERENCES `info_person_info` (`personId`),
  CONSTRAINT `FK_elearning_task_finish_2` FOREIGN KEY (`taskId`) REFERENCES `elearning_teach_task` (`taskId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elearning_task_finish`
--

LOCK TABLES `elearning_task_finish` WRITE;
/*!40000 ALTER TABLE `elearning_task_finish` DISABLE KEYS */;
INSERT INTO `elearning_task_finish` VALUES (1,4,4785,'1',41028,9,42,'1'),(2,4,4785,'1',41028,10,21,'1'),(3,5,4785,'1',41028,9,9,'1'),(4,5,4785,'0',41028,10,1,'0'),(5,4,4785,'0',41028,11,1,'0');
/*!40000 ALTER TABLE `elearning_task_finish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elearning_task_news`
--

DROP TABLE IF EXISTS `elearning_task_news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elearning_task_news` (
  `newsId` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext,
  `personId` int(11) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `title` text,
  `taskId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`newsId`),
  KEY `FK_elearning_task_news_1` (`personId`),
  KEY `FK_elearning_task_news_2` (`taskId`),
  CONSTRAINT `FK_elearning_task_news_1` FOREIGN KEY (`personId`) REFERENCES `info_person_info` (`personId`),
  CONSTRAINT `FK_elearning_task_news_2` FOREIGN KEY (`taskId`) REFERENCES `elearning_teach_task` (`taskId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elearning_task_news`
--

LOCK TABLES `elearning_task_news` WRITE;
/*!40000 ALTER TABLE `elearning_task_news` DISABLE KEYS */;
INSERT INTO `elearning_task_news` VALUES (5,'通知内容',3,'2017-12-04 14:37:16','课程通知',4785),(6,'通知内容',3,'2017-12-04 14:39:07','数据结构课程最新通知',4),(7,'1',3,'2017-12-04 14:39:21','资讯测试',4785),(8,'请各位同学关注本课程课程作业。',3,'2019-01-08 20:18:37','最新通知',4785),(9,'neirong2',3,'2018-12-10 19:50:04','gonggao',4788),(10,'内容',3,'2018-12-10 19:45:03','标题1',4788);
/*!40000 ALTER TABLE `elearning_task_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elearning_task_score`
--

DROP TABLE IF EXISTS `elearning_task_score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elearning_task_score` (
  `scoreId` int(11) NOT NULL AUTO_INCREMENT,
  `taskId` int(11) NOT NULL DEFAULT '0',
  `scoreLevel` varchar(45) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `stuId` int(11) DEFAULT NULL,
  `teacher` int(11) DEFAULT NULL,
  PRIMARY KEY (`scoreId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elearning_task_score`
--

LOCK TABLES `elearning_task_score` WRITE;
/*!40000 ALTER TABLE `elearning_task_score` DISABLE KEYS */;
INSERT INTO `elearning_task_score` VALUES (3,4785,'1','2018-12-23 15:32:49',5,3),(4,4785,'4','2018-12-23 15:33:02',6,3),(5,4785,'4','2018-12-23 15:32:55',4,3),(6,4,'4','2018-12-23 15:34:44',4,3),(7,1,'1','2018-12-24 13:39:33',4,3);
/*!40000 ALTER TABLE `elearning_task_score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elearning_teach_task`
--

DROP TABLE IF EXISTS `elearning_teach_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elearning_teach_task` (
  `taskId` int(11) NOT NULL AUTO_INCREMENT,
  `courseId` int(11) NOT NULL DEFAULT '0',
  `termId` int(11) DEFAULT NULL,
  `personId` int(11) DEFAULT NULL,
  `remark` varchar(400) DEFAULT NULL,
  `modifyTime` datetime DEFAULT NULL,
  `modifyer` int(11) DEFAULT NULL,
  `taskName` varchar(45) DEFAULT NULL,
  `startDate` varchar(45) DEFAULT NULL,
  `endDate` varchar(45) DEFAULT NULL,
  `classPlace` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`taskId`) USING BTREE,
  KEY `FK_elearning_teach_task_2` (`courseId`),
  KEY `FK_elearning_teach_task_3` (`termId`),
  KEY `FK_newcultivate_teach_task_4` (`personId`) USING BTREE,
  CONSTRAINT `FK_elearning_teach_task_2` FOREIGN KEY (`courseId`) REFERENCES `elearning_course` (`courseId`),
  CONSTRAINT `FK_elearning_teach_task_3` FOREIGN KEY (`termId`) REFERENCES `elearning_term` (`termId`)
) ENGINE=InnoDB AUTO_INCREMENT=4793 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elearning_teach_task`
--

LOCK TABLES `elearning_teach_task` WRITE;
/*!40000 ALTER TABLE `elearning_teach_task` DISABLE KEYS */;
INSERT INTO `elearning_teach_task` VALUES (1,430,10,2,NULL,'2018-12-21 14:37:29',3,'经济学','2017-11-08','2017-11-15',NULL),(2,41016,10,2,NULL,'2018-12-21 14:37:26',3,'大数据与公共管理	','2017-11-23','2017-12-14',NULL),(4,1,10,2,'1','2019-03-28 16:23:59',3,'数据结构','2017-11-02','2020-11-12',NULL),(4782,41023,10,2,NULL,'2019-03-28 16:25:20',3,'先秦两汉文学学术要籍研讨','2017-11-23','2017-12-14',NULL),(4783,41016,51,3,NULL,'2019-03-28 16:24:44',3,'大数据公开课','2018-11-01','2019-12-31',NULL),(4784,41026,10,3,NULL,'2019-03-28 16:25:47',3,'计算机网路通识课','2017-11-15','2017-12-14',NULL),(4785,41028,10,3,NULL,'2019-03-28 16:25:16',3,'【校庆专辑】文学生活馆——经典十课','2017-11-18','2017-12-25',NULL),(4786,41030,NULL,NULL,NULL,'2018-12-21 14:37:16',3,'OS one piece','2018-11-08','2018-12-08',NULL),(4787,41030,NULL,NULL,NULL,'2019-03-28 16:26:13',3,'操作系统第二次课','2018-11-01','2018-12-04',NULL),(4788,41026,NULL,3,NULL,'2018-12-21 14:35:31',3,'计算机网络','2018-12-13','2019-01-10',NULL),(4789,41033,NULL,3,NULL,'2019-01-12 13:55:06',NULL,'计算机组成原理第一学期课程','2019-01-18','2019-06-30',NULL),(4790,41033,NULL,3,NULL,'2019-01-12 13:59:16',NULL,'计算机组成原理第二次课','2019-01-17','2019-07-24',NULL),(4791,1155,NULL,3,NULL,'2019-01-12 14:04:54',NULL,'重要会议','2019-01-10','2019-02-06',NULL),(4792,41035,NULL,3,NULL,'2019-05-21 09:37:47',NULL,'软件工程导论','2019-05-01','2019-08-01',NULL);
/*!40000 ALTER TABLE `elearning_teach_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `elearning_term`
--

DROP TABLE IF EXISTS `elearning_term`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elearning_term` (
  `termId` int(11) NOT NULL AUTO_INCREMENT,
  `termName` varchar(50) DEFAULT NULL,
  `termEngName` varchar(50) DEFAULT NULL,
  `startTime` varchar(50) DEFAULT NULL,
  `endTime` varchar(50) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `examTime` varchar(20) DEFAULT NULL,
  `termNum` varchar(45) DEFAULT NULL,
  `termType` varchar(2) DEFAULT NULL,
  `isVisible` int(11) DEFAULT NULL,
  PRIMARY KEY (`termId`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `elearning_term`
--

LOCK TABLES `elearning_term` WRITE;
/*!40000 ALTER TABLE `elearning_term` DISABLE KEYS */;
INSERT INTO `elearning_term` VALUES (10,'2017－2018学年第1学期','','2017-09-01','2018-03-01','','20180116','20170100001','',1),(51,'2017－2018学年第2学期',NULL,'2018-03-01','2018-09-01',NULL,NULL,'20170200000',NULL,0),(52,'2016－2017学年第2学期',NULL,'2017-03-01','2017-09-01',NULL,NULL,'20160200001',NULL,0),(53,'2016－2017学年第1学期',NULL,'2016-09-01','2018-03-01',NULL,NULL,'2016010001',NULL,0),(59,'2018－2019学年第1学期',NULL,'2018-09-01','2019-03-01',NULL,NULL,NULL,NULL,NULL),(60,'2018－2019学年第2学期',NULL,'2019-03-01','2019-09-01',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `elearning_term` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_funres`
--

DROP TABLE IF EXISTS `group_funres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_funres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) DEFAULT NULL,
  `resid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_group_funres_1` (`groupid`),
  KEY `FK_group_funres_2` (`resid`),
  CONSTRAINT `FK_group_funres_1` FOREIGN KEY (`groupid`) REFERENCES `sys_user_group` (`groupid`),
  CONSTRAINT `FK_group_funres_2` FOREIGN KEY (`resid`) REFERENCES `sys_fun_res` (`resid`)
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_funres`
--

LOCK TABLES `group_funres` WRITE;
/*!40000 ALTER TABLE `group_funres` DISABLE KEYS */;
INSERT INTO `group_funres` VALUES (214,1,1),(215,1,2),(216,1,4),(217,1,5),(218,1,6),(219,1,34),(220,1,35),(250,3,11),(251,3,15),(252,3,16),(253,3,17),(254,3,18),(255,3,19),(256,3,20),(257,3,21),(258,3,25),(259,3,26),(260,3,29),(261,3,31),(262,3,32),(263,3,37),(264,3,38),(265,4,11),(266,4,15),(267,4,16),(268,4,17),(269,4,18),(270,4,19),(271,4,20),(272,4,21),(273,4,25),(274,4,26),(275,4,29),(276,4,31),(277,4,32),(278,4,33),(279,4,37),(280,4,38),(281,2,7),(282,2,8),(283,2,9),(284,2,10),(285,2,12),(286,2,13),(287,2,14),(288,2,22),(289,2,23),(290,2,24),(291,2,27),(292,2,28),(293,2,30),(294,2,36),(295,2,39);
/*!40000 ALTER TABLE `group_funres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_person_info`
--

DROP TABLE IF EXISTS `info_person_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_person_info` (
  `personId` int(11) NOT NULL AUTO_INCREMENT,
  `perName` varchar(50) DEFAULT NULL,
  `perTypeCode` varchar(5) DEFAULT NULL COMMENT '0：用户，1：教练',
  `perIdCard` varchar(18) DEFAULT NULL,
  `genderCode` varchar(5) DEFAULT NULL COMMENT '1男 2女',
  `perBirthday` date DEFAULT NULL,
  `mobilePhone` varchar(15) DEFAULT NULL,
  `perAddress` varchar(500) DEFAULT NULL,
  `perPostalCode` varchar(6) DEFAULT NULL,
  `perTelephone` varchar(20) DEFAULT NULL,
  `qq` varchar(20) DEFAULT NULL,
  `createTime` date DEFAULT NULL,
  `perNum` varchar(45) DEFAULT NULL,
  `wechat` varchar(60) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `modifyTime` datetime DEFAULT NULL,
  `modifyerId` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `headimgurl` varchar(200) DEFAULT NULL COMMENT '从微信得到用户头像',
  PRIMARY KEY (`personId`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_person_info`
--

LOCK TABLES `info_person_info` WRITE;
/*!40000 ALTER TABLE `info_person_info` DISABLE KEYS */;
INSERT INTO `info_person_info` VALUES (1,'徐敏峰','M','370481199404020310','2',NULL,'16742550011',NULL,NULL,NULL,NULL,NULL,'201099999901',NULL,NULL,'2018-12-27 14:24:46',1,NULL,NULL),(2,'超级管理员','M','370481196901173250','1',NULL,'15416350002',NULL,NULL,NULL,NULL,NULL,'system',NULL,NULL,'2019-01-11 22:09:48',2,NULL,NULL),(3,'王波','T','37048119840504564X','1',NULL,'17832992891',NULL,NULL,NULL,NULL,NULL,'200899999901',NULL,NULL,'2018-12-27 14:22:52',1,NULL,NULL),(4,'杨培林','S','370481196901173250','1',NULL,'13780795479',NULL,NULL,NULL,NULL,NULL,'200999999801',NULL,NULL,'2018-12-18 17:15:09',4,NULL,NULL),(5,'宫晨','U','370481196901173250','1',NULL,'17862992892',NULL,NULL,NULL,NULL,NULL,'17862992892',NULL,NULL,NULL,NULL,NULL,NULL),(6,'杨丰','S','370481196901173250','2',NULL,'13963227196',NULL,NULL,NULL,NULL,NULL,'200999999803',NULL,NULL,NULL,NULL,NULL,NULL),(7,'徐鹏涛','S','370481196901173250','1',NULL,'5161850',NULL,NULL,NULL,NULL,NULL,'200999999804',NULL,NULL,NULL,NULL,NULL,NULL),(8,'张三','T','370481199205180354','2',NULL,'18340071090',NULL,NULL,NULL,NULL,'2018-12-12','200999999903',NULL,NULL,'2018-12-27 14:22:57',1,NULL,NULL),(9,'李建国','T','370481196901173250','1',NULL,'15763250002',NULL,NULL,NULL,NULL,'2018-12-27','200799999902',NULL,NULL,NULL,NULL,NULL,NULL),(10,'韩伟','M','370481196901173251','2',NULL,'18763255855',NULL,NULL,NULL,NULL,'2018-12-27','201199999901',NULL,NULL,'2018-12-27 14:24:55',1,NULL,NULL),(11,'伊善文','M','370481196901173250','1',NULL,'15763250021',NULL,NULL,NULL,NULL,'2018-12-27','201299999901',NULL,NULL,'2018-12-27 14:24:50',1,NULL,NULL),(12,'余悦','T','445302199703170011','1',NULL,'13922668538',NULL,NULL,NULL,NULL,NULL,'201700210023',NULL,NULL,NULL,NULL,NULL,NULL),(13,'冯木坚','T','445322199605153424','2',NULL,'15602372900',NULL,NULL,NULL,NULL,NULL,'201700210024',NULL,NULL,NULL,NULL,NULL,NULL),(14,'陈宝霞','T','510402199901185125','1',NULL,'15183433114',NULL,NULL,NULL,NULL,NULL,'201700210025',NULL,NULL,NULL,NULL,NULL,NULL),(15,'严浩东','T','511502199801206597','2',NULL,'13990967495',NULL,NULL,NULL,NULL,NULL,'201700210026',NULL,NULL,NULL,NULL,NULL,NULL),(16,'成海川','T','511522199804035370','1',NULL,'18483106775',NULL,NULL,NULL,NULL,NULL,'201700210027',NULL,NULL,NULL,NULL,NULL,NULL),(17,'王润霄','T','511525199907020031','2',NULL,'13708295467',NULL,NULL,NULL,NULL,NULL,'201700210028',NULL,NULL,NULL,NULL,NULL,NULL),(18,'黄恩柯','T','511527199706230019','1',NULL,'18881916863',NULL,NULL,NULL,NULL,NULL,'201700210029',NULL,NULL,NULL,NULL,NULL,NULL),(19,'方晟宇','T','330104199901222312','1',NULL,'13708295467',NULL,NULL,NULL,NULL,NULL,'201700210030',NULL,NULL,NULL,NULL,NULL,NULL),(20,'章永泽','T','330127199802232413','1',NULL,'13708295467',NULL,NULL,NULL,NULL,NULL,'201700210031',NULL,NULL,NULL,NULL,NULL,NULL),(21,'张磊','S','513030199906086333','1',NULL,'13057830903,',NULL,NULL,NULL,NULL,NULL,'201700210032',NULL,NULL,NULL,NULL,NULL,NULL),(22,'倪嘉琛','S','330721199811134414','2',NULL,'13708295467',NULL,NULL,NULL,NULL,NULL,'201700210033',NULL,NULL,NULL,NULL,NULL,NULL),(23,'王宇浩','S','330822199909230019','1',NULL,'13708295467',NULL,NULL,NULL,NULL,NULL,'201700210034',NULL,NULL,NULL,NULL,NULL,NULL),(24,'张耀歌','S','371002199811068518','1',NULL,'13665423190',NULL,NULL,NULL,NULL,NULL,'201700210035',NULL,NULL,NULL,NULL,NULL,NULL),(25,'姜伊凡','S','370281199901161842','2',NULL,'13573859017',NULL,NULL,NULL,NULL,NULL,'201700210036',NULL,NULL,NULL,NULL,NULL,NULL),(26,'吴优','S','370281199910120508','1',NULL,'13606301956',NULL,NULL,NULL,NULL,NULL,'201700210037',NULL,NULL,NULL,NULL,NULL,NULL),(27,'崔润泽','S','370281199909130039','2',NULL,'15166630595',NULL,NULL,NULL,NULL,NULL,'201700210038',NULL,NULL,NULL,NULL,NULL,NULL),(28,'韩笑','S','370284199809071018','1',NULL,'13864874151',NULL,NULL,NULL,NULL,NULL,'201700210039',NULL,NULL,NULL,NULL,NULL,NULL),(29,'卓家同','S','370881199904095812','1',NULL,'13562432218',NULL,NULL,NULL,NULL,NULL,'201700210040',NULL,NULL,NULL,NULL,NULL,NULL),(30,'董振华','S','370911199807266030','1',NULL,'13583893217',NULL,NULL,NULL,NULL,NULL,'201700210041',NULL,NULL,NULL,NULL,NULL,NULL),(31,'于磊','S','370911199805156014','2',NULL,'15288918091',NULL,NULL,NULL,NULL,NULL,'201700210042',NULL,NULL,NULL,NULL,NULL,NULL),(32,'吴彤','S','370911199809282026','1',NULL,'18753881259',NULL,NULL,NULL,NULL,NULL,'201700210043',NULL,NULL,NULL,NULL,NULL,NULL),(33,'孙祥峰','S','370911199801072817','2',NULL,'13405382628',NULL,NULL,NULL,NULL,NULL,'201700210044',NULL,NULL,NULL,NULL,NULL,NULL),(34,'夏彤','S','370911199811203649','1',NULL,'13583897747',NULL,NULL,NULL,NULL,NULL,'201700210045',NULL,NULL,NULL,NULL,NULL,NULL),(35,'李龙飞','S','370911200002231610','1',NULL,'15966020655',NULL,NULL,NULL,NULL,NULL,'201700210046',NULL,NULL,NULL,NULL,NULL,NULL),(36,'周帅','S','370911199710075211','2',NULL,'15698123786',NULL,NULL,NULL,NULL,NULL,'201700210047',NULL,NULL,NULL,NULL,NULL,NULL),(37,'李西贤','S','37091119980719361X','1',NULL,'15621543010',NULL,NULL,NULL,NULL,NULL,'201700210048',NULL,NULL,NULL,NULL,NULL,NULL),(38,'尹逊鑫','S','370983199809071335','1',NULL,'15966046903',NULL,NULL,NULL,NULL,NULL,'201700210049',NULL,NULL,NULL,NULL,NULL,NULL),(39,'王梓臣','S','371002199908260039','2',NULL,'18606413006',NULL,NULL,NULL,NULL,NULL,'201700210050',NULL,NULL,NULL,NULL,NULL,NULL),(40,'董洪林','S','230822199706220896','1',NULL,'15763181402',NULL,NULL,NULL,NULL,NULL,'201700210051',NULL,NULL,NULL,NULL,NULL,NULL),(41,'刘洋','S','37110219980211651X','1',NULL,'15563337689',NULL,NULL,NULL,NULL,NULL,'201700210052',NULL,NULL,NULL,NULL,NULL,NULL),(42,'赵日皓','S','371122199810290038','1',NULL,'13561994324',NULL,NULL,NULL,NULL,NULL,'201700210053',NULL,NULL,NULL,NULL,NULL,NULL),(43,'杨预麟','S','371328199804132518','1',NULL,'18754988390',NULL,NULL,NULL,NULL,NULL,'201700210054',NULL,NULL,NULL,NULL,NULL,NULL),(44,'杜正康','S','371321199812196111','2',NULL,'13573976397',NULL,NULL,NULL,NULL,NULL,'201700210055',NULL,NULL,NULL,NULL,NULL,NULL),(45,'刘宗玉','S','371327199804085719','1',NULL,'15253947963',NULL,NULL,NULL,NULL,NULL,'201700210056',NULL,NULL,NULL,NULL,NULL,NULL),(46,'黄森','S','371425199803228178','2',NULL,'13583409623',NULL,NULL,NULL,NULL,NULL,'201700210057',NULL,NULL,NULL,NULL,NULL,NULL),(47,'王超','S','371428200010081510','1',NULL,'13583459161',NULL,NULL,NULL,NULL,NULL,'201700210058',NULL,NULL,NULL,NULL,NULL,NULL),(48,'黄志强','S','371581199903112419','2',NULL,'13734467718',NULL,NULL,NULL,NULL,NULL,'201700210059',NULL,NULL,NULL,NULL,NULL,NULL),(49,'盛雪瑞','S','371522199810190522','1',NULL,'15966235153',NULL,NULL,NULL,NULL,NULL,'201700210060',NULL,NULL,NULL,NULL,NULL,NULL),(50,'赵丽丹','S','372922199903063082','1',NULL,'18254094651',NULL,NULL,NULL,NULL,NULL,'201700210061',NULL,NULL,NULL,NULL,NULL,NULL),(51,'马超','S','372925199903086558','1',NULL,'17854049301',NULL,NULL,NULL,NULL,NULL,'201700210062',NULL,NULL,NULL,NULL,NULL,NULL),(52,'朱忠壮','S','372925199901160910','1',NULL,'15865108032',NULL,NULL,NULL,NULL,NULL,'201700210063',NULL,NULL,NULL,NULL,NULL,NULL),(53,'颜硕','S','372925199910012338','1',NULL,'15169732084',NULL,NULL,NULL,NULL,NULL,'201700210064',NULL,NULL,NULL,NULL,NULL,NULL),(54,'贺清','S','430124200004196366','1',NULL,'13548540289',NULL,NULL,NULL,NULL,NULL,'201700210065',NULL,NULL,NULL,NULL,NULL,NULL),(55,'张格','S','430221199901125307','1',NULL,'18374061390',NULL,NULL,NULL,NULL,NULL,'201700210066',NULL,NULL,NULL,NULL,NULL,NULL),(56,'成吉午','S','430423199907123218','2',NULL,'13142302912',NULL,NULL,NULL,NULL,NULL,'201700210067',NULL,NULL,NULL,NULL,NULL,NULL),(57,'汤志刚','S','43070319981125111X','1',NULL,'13257427158',NULL,NULL,NULL,NULL,NULL,'201700210068',NULL,NULL,NULL,NULL,NULL,NULL),(58,'欧阳璐','S','431003199910016513','1',NULL,'18153873506',NULL,NULL,NULL,NULL,NULL,'201700210069',NULL,NULL,NULL,NULL,NULL,NULL),(59,'陈帆','S','360403199906253025','1',NULL,'13879298292',NULL,NULL,NULL,NULL,NULL,'201700210070',NULL,NULL,NULL,NULL,NULL,NULL),(60,'冯阳','S','360428199709274131','2',NULL,'13979289908',NULL,NULL,NULL,NULL,NULL,'201700210071',NULL,NULL,NULL,NULL,NULL,NULL),(61,'王余松','U','360782199810301514','1',NULL,'15070169309',NULL,NULL,NULL,NULL,NULL,'13969710175',NULL,NULL,NULL,NULL,NULL,NULL),(62,'高龙','U','360922199909270329','1',NULL,'13576174749',NULL,NULL,NULL,NULL,NULL,'13013502344',NULL,NULL,NULL,NULL,NULL,NULL),(63,'刘文源','U','360781199811082919','1',NULL,'18679798952',NULL,NULL,NULL,NULL,NULL,'18266252758',NULL,NULL,NULL,NULL,NULL,NULL),(64,'施明槟','U','350425199810033710','1',NULL,'15759065815',NULL,NULL,NULL,NULL,NULL,'15866405335',NULL,NULL,NULL,NULL,NULL,NULL),(65,'骆炜军','U','350521199904103011','1',NULL,'18759502939',NULL,NULL,NULL,NULL,NULL,'15966752462',NULL,NULL,NULL,NULL,NULL,NULL),(66,'吴潇剑','U','350722199907020518','1',NULL,'18350925282',NULL,NULL,NULL,NULL,NULL,'15954604838',NULL,NULL,NULL,NULL,NULL,NULL),(67,'吴宝文','U','350725199810223510','2',NULL,'15659741656',NULL,NULL,NULL,NULL,NULL,'18661807369',NULL,NULL,NULL,NULL,NULL,NULL),(68,'查建平','U','341022199811011319','2',NULL,'18558790926',NULL,NULL,NULL,NULL,NULL,'15553619618',NULL,NULL,NULL,NULL,NULL,NULL),(69,'林烨锦','U','450102199812140037','2',NULL,'18705023177',NULL,NULL,NULL,NULL,NULL,'18615380588',NULL,NULL,NULL,NULL,NULL,NULL),(70,'余泳松','U','450102199812140037','1',NULL,'18750187815',NULL,NULL,NULL,NULL,NULL,'13854565893',NULL,NULL,NULL,NULL,NULL,NULL),(71,'杨雅涵','U','450102199812140037','1',NULL,'15801717877',NULL,NULL,NULL,NULL,NULL,'18506361132',NULL,NULL,NULL,NULL,NULL,NULL),(72,'仇常皓','U','120107199907305119','2',NULL,'13708295467',NULL,NULL,NULL,NULL,NULL,'13563715786',NULL,NULL,NULL,NULL,NULL,NULL),(73,'乔石磊','U','120110199904190334','1',NULL,'13708295467',NULL,NULL,NULL,NULL,NULL,'15263753411',NULL,NULL,NULL,NULL,NULL,NULL),(74,'甘安霆','U','362401199904012016','1',NULL,'13708295467',NULL,NULL,NULL,NULL,NULL,'13964528031',NULL,NULL,NULL,NULL,NULL,NULL),(75,'张峰玮','U','120109199909290013','1',NULL,'13708295467',NULL,NULL,NULL,NULL,NULL,'15964255999',NULL,NULL,NULL,NULL,NULL,NULL),(76,'李兴嘉','U','231005199902154815','1',NULL,'13708295467',NULL,NULL,NULL,NULL,NULL,'13854903089',NULL,NULL,NULL,NULL,NULL,NULL),(77,'黄耀聪','U','450102199812140037','1',NULL,'18376682801',NULL,NULL,NULL,NULL,NULL,'13153992118',NULL,NULL,NULL,NULL,NULL,NULL),(78,'卢亦弢','U','450103199902022516','1',NULL,'15277005728',NULL,NULL,NULL,NULL,NULL,'13953159285',NULL,NULL,NULL,NULL,NULL,NULL),(79,'谢高建','U','452223199810204016','2',NULL,'18276721602',NULL,NULL,NULL,NULL,NULL,'18953356397',NULL,NULL,NULL,NULL,NULL,NULL),(80,'梁成煊','U','452228199909182015','1',NULL,'13978298872',NULL,NULL,NULL,NULL,NULL,'15910048046',NULL,NULL,NULL,NULL,NULL,NULL),(81,'陈廖昕','U','450304199901060032','1',NULL,'13707832676',NULL,NULL,NULL,NULL,NULL,'15163439177',NULL,NULL,NULL,NULL,NULL,NULL),(82,'叶春江','U','450304199907121510','2',NULL,'13768334197',NULL,NULL,NULL,NULL,NULL,'13625392550',NULL,NULL,NULL,NULL,NULL,NULL),(83,'施莹莹','U','450721199803114947','1',NULL,'18276610056',NULL,NULL,NULL,NULL,NULL,'13685436390',NULL,NULL,NULL,NULL,NULL,NULL),(84,'陆西成','U','450802199906200879','2',NULL,'07754831158',NULL,NULL,NULL,NULL,NULL,'13969832072',NULL,NULL,NULL,NULL,NULL,NULL),(85,'陆东宝','U','452624199805103817','1',NULL,'15777673592',NULL,NULL,NULL,NULL,NULL,'15105347159',NULL,NULL,NULL,NULL,NULL,NULL),(86,'吴铸','U','452726199907030012','1',NULL,'13768080628',NULL,NULL,NULL,NULL,NULL,'13583325097',NULL,NULL,NULL,NULL,NULL,NULL),(87,'黄舒漪','U','452225199906080022','2',NULL,'13978281163',NULL,NULL,NULL,NULL,NULL,'17793117030',NULL,NULL,NULL,NULL,NULL,NULL),(88,'沈浩仪','U','440107199904220325','1',NULL,'13533387013',NULL,NULL,NULL,NULL,NULL,'15117157407',NULL,NULL,NULL,NULL,NULL,NULL),(89,'任奕','U','440102199810071419','2',NULL,'18022307645',NULL,NULL,NULL,NULL,NULL,'03738888489',NULL,NULL,NULL,NULL,NULL,NULL),(90,'黄灏彦','U','440102199811165214','1',NULL,'13312866001',NULL,NULL,NULL,NULL,NULL,'13837391567',NULL,NULL,NULL,NULL,NULL,NULL),(91,'梁嘉旋','U','440882199812293015','1',NULL,'13510501785',NULL,NULL,NULL,NULL,NULL,'15093923870',NULL,NULL,NULL,NULL,NULL,NULL),(92,'岳旻祺','U','440306199908230613','2',NULL,'13600427678',NULL,NULL,NULL,NULL,NULL,'13598812962',NULL,NULL,NULL,NULL,NULL,NULL),(93,'唐佳文','U','420983200001209039','1',NULL,'13026675326',NULL,NULL,NULL,NULL,NULL,'13693700048',NULL,NULL,NULL,NULL,NULL,NULL),(94,'杨智钧','U','440883199811040311','2',NULL,'13823238308',NULL,NULL,NULL,NULL,NULL,'13849678599',NULL,NULL,NULL,NULL,NULL,NULL),(95,'李鸿','U','440303199906211313','1',NULL,'13632880133',NULL,NULL,NULL,NULL,NULL,'13932209573',NULL,NULL,NULL,NULL,NULL,NULL),(96,'游二炜','U','35062419990316401X','1',NULL,'18675664525',NULL,NULL,NULL,NULL,NULL,'18931714435',NULL,NULL,NULL,NULL,NULL,NULL),(97,'冯智杰','U','44068219990106327X','1',NULL,'13679821120',NULL,NULL,NULL,NULL,NULL,'13403117505',NULL,NULL,NULL,NULL,NULL,NULL),(98,'陈昊','U','440603199903053416','2',NULL,'13702485176',NULL,NULL,NULL,NULL,NULL,'02988490826',NULL,NULL,NULL,NULL,NULL,NULL),(99,'肖铭昊','U','440682199907105733','1',NULL,'13380207619',NULL,NULL,NULL,NULL,NULL,'13891059136',NULL,NULL,NULL,NULL,NULL,NULL),(100,'叶展宏','U','440681199905150219','1',NULL,'13902562845',NULL,NULL,NULL,NULL,NULL,'14791696772',NULL,NULL,NULL,NULL,NULL,NULL),(101,'张腾','U','440233199807200072','2',NULL,'13377517488',NULL,NULL,NULL,NULL,NULL,'02988218785',NULL,NULL,NULL,NULL,NULL,NULL),(102,'黄滢','U','442000199809306640','1',NULL,'13600330477',NULL,NULL,NULL,NULL,NULL,'18991807159',NULL,NULL,NULL,NULL,NULL,NULL),(103,'魏雅娜','U','320112199910080027','1',NULL,'13902562845',NULL,NULL,NULL,NULL,NULL,'13324578455',NULL,NULL,NULL,NULL,NULL,NULL),(104,'张钰琳','U','320281199906091784','1',NULL,'13902562845',NULL,NULL,NULL,NULL,NULL,'13312453405',NULL,NULL,NULL,NULL,NULL,NULL),(105,'李佳飞','U','320281199808233275','1',NULL,'13632880133',NULL,NULL,NULL,NULL,NULL,'15285266727',NULL,NULL,NULL,NULL,NULL,NULL),(106,'周丹钰','U','320281199904112027','2',NULL,'13632880133',NULL,NULL,NULL,NULL,NULL,'15942286888',NULL,NULL,NULL,NULL,NULL,NULL),(107,'姚云志','U','320324200002050334','1',NULL,'13768080628',NULL,NULL,NULL,NULL,NULL,'13704329235',NULL,NULL,NULL,NULL,NULL,NULL),(108,'赵立帆','U','320311199808304316','2',NULL,'13768080628',NULL,NULL,NULL,NULL,NULL,'13943589500',NULL,NULL,NULL,NULL,NULL,NULL),(109,'宋非凡','U','320321199808317216','1',NULL,'13632880133',NULL,NULL,NULL,NULL,NULL,'13986667958',NULL,NULL,NULL,NULL,NULL,NULL),(110,'徐曦烈','U','320483199908207019','1',NULL,'13768080628',NULL,NULL,NULL,NULL,NULL,'18771123961',NULL,NULL,NULL,NULL,NULL,NULL),(111,'朱金森','U','320623199902267170','2',NULL,'13632880133',NULL,NULL,NULL,NULL,NULL,'13886409156',NULL,NULL,NULL,NULL,NULL,NULL),(112,'花梦圆','U','320623199810207664','2',NULL,'13768080628',NULL,NULL,NULL,NULL,NULL,'02788851979',NULL,NULL,NULL,NULL,NULL,NULL),(113,'王前前',NULL,'111111111111111111','1',NULL,'17862992891',NULL,NULL,NULL,NULL,'2019-01-12','2016135145',NULL,NULL,'2019-01-12 13:41:12',2,NULL,NULL);
/*!40000 ALTER TABLE `info_person_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_stu_train_info`
--

DROP TABLE IF EXISTS `info_stu_train_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `info_stu_train_info` (
  `personId` int(11) NOT NULL AUTO_INCREMENT,
  `stuTypeCode` varchar(5) DEFAULT NULL,
  `studyFormCode` varchar(5) DEFAULT NULL,
  `trainFormCode` varchar(5) DEFAULT NULL,
  `consignUnit` varchar(30) DEFAULT NULL,
  `studyLevelCode` varchar(5) DEFAULT NULL,
  `specialtyWay` varchar(30) DEFAULT NULL,
  `bachelorDegreeCode` varchar(20) DEFAULT NULL,
  `examNo` varchar(20) DEFAULT NULL,
  `isOversea` int(11) DEFAULT NULL,
  `isHerochild` int(11) DEFAULT NULL,
  `entrYearMon` datetime DEFAULT NULL,
  `campusCardID` varchar(20) DEFAULT NULL,
  `healthInfo` varchar(10) DEFAULT NULL,
  `hobby` varchar(50) DEFAULT NULL,
  `economyStatus` varchar(50) DEFAULT NULL,
  `economySource` varchar(50) DEFAULT NULL,
  `hasStudyFile` int(11) DEFAULT NULL,
  `isSchoStudyFile` int(11) DEFAULT NULL,
  `isNationStudyFile` int(11) DEFAULT NULL,
  `classYear` int(11) DEFAULT NULL,
  `foreignLanKind` varchar(10) DEFAULT NULL,
  `foreignLanLevel` varchar(50) DEFAULT NULL,
  `collegeId` int(11) DEFAULT NULL,
  `majorId` int(11) DEFAULT NULL,
  `validateCorrect` int(11) DEFAULT NULL,
  `isUpdated` int(11) DEFAULT NULL,
  `grade` varchar(4) DEFAULT NULL,
  `directionId` int(11) DEFAULT NULL,
  `studyState` int(11) DEFAULT NULL,
  `schemeId` int(11) DEFAULT NULL,
  `stuFeeState` int(11) DEFAULT NULL,
  `stuGreenPassState` int(11) DEFAULT NULL,
  `stuQuestionState` int(11) DEFAULT NULL,
  `stuHealthInfo` varchar(2) DEFAULT NULL,
  `classForm` varchar(2) DEFAULT NULL,
  `registerState` char(1) DEFAULT NULL,
  `masterDoctorState` char(1) DEFAULT NULL,
  `doctorPhaseTime` datetime DEFAULT NULL,
  `stuInfoState` char(1) DEFAULT NULL,
  `computerLevel` varchar(45) DEFAULT NULL,
  `studyDegree` varchar(45) DEFAULT NULL,
  `jobDegree` varchar(45) DEFAULT NULL,
  `className` varchar(45) DEFAULT NULL,
  `consignUnitAdress` varchar(100) DEFAULT NULL,
  `stuSourceProvince` varchar(15) DEFAULT NULL,
  `stuSourceCity` varchar(15) DEFAULT NULL,
  `stuSourceTown` varchar(15) DEFAULT NULL,
  `graduateDate` datetime DEFAULT NULL,
  `graduateYear` varchar(15) DEFAULT NULL,
  `isSpecial` varchar(45) DEFAULT NULL,
  `gradgoto` varchar(45) DEFAULT NULL,
  `consignUnitAddressCode` varchar(45) DEFAULT NULL,
  `leaveYearMon` datetime DEFAULT NULL,
  `realLeavingDate` datetime DEFAULT NULL,
  `registerDate` datetime DEFAULT NULL,
  `languageType` varchar(2) DEFAULT NULL,
  `examType` varchar(45) DEFAULT NULL,
  `lastDegree` varchar(45) DEFAULT NULL,
  `archivesAdress` varchar(100) DEFAULT NULL,
  `expendField1` varchar(45) DEFAULT NULL,
  `expendField2` varchar(45) DEFAULT NULL,
  `expendField3` varchar(45) DEFAULT NULL,
  `expendField4` varchar(45) DEFAULT NULL,
  `expendField5` varchar(45) DEFAULT NULL,
  `expendField6` varchar(45) DEFAULT NULL,
  `secondMajorName` varchar(45) DEFAULT NULL,
  `secondMajorId` int(11) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `degreeType` varchar(2) DEFAULT NULL,
  `transferDate` varchar(20) DEFAULT NULL,
  `degreeAreaCode` varchar(6) DEFAULT NULL,
  `studyPlace` varchar(5) DEFAULT NULL,
  `campusNum` varchar(2) DEFAULT NULL,
  `depGrade` char(4) DEFAULT NULL,
  `depMasterDoctorState` char(1) DEFAULT NULL,
  `gradIntegrationCertiNo` char(20) DEFAULT NULL,
  `classPlace` varchar(45) DEFAULT NULL,
  `sourceTypeCode` varchar(4) DEFAULT NULL,
  `classDuty` varchar(45) DEFAULT NULL,
  `isCanAppDegree` varchar(45) DEFAULT NULL,
  `studyDuration` varchar(45) DEFAULT NULL,
  `entreExcuse` varchar(2) DEFAULT NULL,
  `leaveExcuse` varchar(2) DEFAULT NULL,
  `isYingJie` char(1) DEFAULT NULL,
  `xtxExcuse` varchar(1) DEFAULT NULL,
  `registerCode` char(1) DEFAULT NULL,
  `infoTypeCode` varchar(45) DEFAULT NULL,
  `fileTransferStatus` varchar(45) DEFAULT NULL,
  `salaryStatus` varchar(45) DEFAULT NULL,
  `matriculateNum` varchar(45) DEFAULT NULL,
  `leaveCause` varchar(2) DEFAULT NULL,
  `graduateProcessId` int(11) DEFAULT NULL,
  `degreeProcessId` int(11) DEFAULT NULL,
  `researchId` int(11) DEFAULT NULL,
  PRIMARY KEY (`personId`),
  UNIQUE KEY `personId` (`personId`),
  UNIQUE KEY `info_stu_train_info_personId_unique` (`personId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_stu_train_info`
--

LOCK TABLES `info_stu_train_info` WRITE;
/*!40000 ALTER TABLE `info_stu_train_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `info_stu_train_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `starfish_menu_access`
--

DROP TABLE IF EXISTS `starfish_menu_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `starfish_menu_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menuName` varchar(45) NOT NULL DEFAULT '',
  `menuURL` varchar(45) DEFAULT NULL,
  `authDetail` varchar(45) NOT NULL DEFAULT '',
  `updateTime` datetime DEFAULT NULL,
  `logicId` varchar(45) NOT NULL DEFAULT '',
  `parentLogicId` varchar(45) DEFAULT NULL,
  `positionNum` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `starfish_menu_access`
--

LOCK TABLES `starfish_menu_access` WRITE;
/*!40000 ALTER TABLE `starfish_menu_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `starfish_menu_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_fun_res`
--

DROP TABLE IF EXISTS `sys_fun_res`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_fun_res` (
  `resid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `path` varchar(300) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`resid`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_fun_res`
--

LOCK TABLES `sys_fun_res` WRITE;
/*!40000 ALTER TABLE `sys_fun_res` DISABLE KEYS */;
INSERT INTO `sys_fun_res` VALUES (1,'人员管理','/index/manage/person'),(2,'群组管理','/index/manage/group'),(4,'课程成绩查看','/index/statistics/scorePreview'),(5,'菜单管理','/index/manage/menu'),(6,'学生学习统计','/index/statistics/learningStatistics'),(7,'资源管理','/index/course/resourceManage'),(8,'课程管理','/index/course/courseManage'),(9,'学期管理','/index/course/term'),(10,'课程计划管理','/index/course/teachTackManage'),(11,'课程学习','/index/course/courseStudy'),(12,'讲座研讨管理','/index/lecture/manage'),(13,'报名审核','/index/lecture/entry'),(14,'签到管理','/index/lecture/attendance'),(15,'讲座预览','/index/lecture/lecturePreview'),(16,'已报名讲座研讨','/index/lecture/entried'),(17,'已完成讲座研讨','/index/lecture/finish'),(18,'课程研讨预览','/index/lecture/discussPreview'),(19,'在线课程','/index/course/coursePreview'),(20,'讲座报告','/index/course/lecturePreview'),(21,'重要会议','/index/course/meetingPreview'),(22,'在线考试','/index/exam/examManage'),(23,'在线练习','/index/exam/practiceManage'),(24,'题库管理','/index/exam/questionManage'),(25,'待完成考试','/index/exam/unfinishedExam'),(26,'已完成考试','/index/exam/finishedExam'),(27,'课程计划维护','/index/course/teachTackMaintain'),(28,'课程作业管理','/index/homework/homeworkManage'),(29,'课程作业','/index/homework/unfinished'),(30,'课程实践管理','/index/homework/activityManage'),(31,'课程实践','/index/homework/activityPreview'),(32,'讲座直播','/index/lecture/live'),(33,'课程付费记录','/index/manage/personCharge'),(34,'课程计费管理','/index/manage/taskCharge'),(35,'付费记录汇总','/index/manage/payRecord'),(36,'课程成绩管理','/index/statistics/scoreManage'),(37,'课程成绩查看','/index/statistics/personScore'),(38,'学习成果','/index/statistics/achievement'),(39,'学生学习统计','/index/statistics/studyStatistics');
/*!40000 ALTER TABLE `sys_fun_res` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `sysusrid` int(11) NOT NULL AUTO_INCREMENT,
  `loginName` varchar(45) NOT NULL,
  `password` varchar(45) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `unionid` varchar(60) DEFAULT NULL,
  `authority` varchar(100) DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0' COMMENT '账号是否为可用',
  `pwd` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sysusrid`),
  UNIQUE KEY `username_UNIQUE` (`loginName`),
  KEY `FK_users_userid_idx` (`userid`),
  CONSTRAINT `FK_users_userid` FOREIGN KEY (`userid`) REFERENCES `info_person_info` (`personId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,'201099999901','c4ca4238a0b923820dcc509a6f75849b',1,NULL,'<sf-identity><belong dim=\"role\" value=\"root\" /></sf-identity>',1,'MQ=='),(2,'system','5690dddfa28ae085d23518a035707282',2,NULL,'<sf-identity><belong dim=\"role\" value=\"root\" /></sf-identity>',1,'YTEyMzQ1Njc='),(3,'teacher','c4ca4238a0b923820dcc509a6f75849b',3,NULL,'<sf-identity><belong dim=\"role\" value=\"teacher\" /></sf-identity>',1,'MQ=='),(4,'student','c4ca4238a0b923820dcc509a6f75849b',4,NULL,'<sf-identity><belong dim=\"role\" value=\"student\" /></sf-identity>',1,'MQ=='),(5,'student1','c4ca4238a0b923820dcc509a6f75849b',5,NULL,NULL,1,'MQ=='),(6,'200999999803','c4ca4238a0b923820dcc509a6f75849b',6,NULL,NULL,1,'MQ=='),(7,'200999999804','c4ca4238a0b923820dcc509a6f75849b',7,NULL,NULL,1,'MQ=='),(8,'200999999903','c4ca4238a0b923820dcc509a6f75849b',8,NULL,NULL,1,'MQ=='),(9,'200799999902','c4ca4238a0b923820dcc509a6f75849b',9,NULL,NULL,1,'MQ=='),(10,'201199999901','c4ca4238a0b923820dcc509a6f75849b',10,NULL,NULL,1,'MQ=='),(11,'201299999901','c4ca4238a0b923820dcc509a6f75849b',11,NULL,NULL,1,'MQ=='),(12,'201700210023','c4ca4238a0b923820dcc509a6f75849b',12,NULL,NULL,1,'MQ=='),(13,'201700210024','c4ca4238a0b923820dcc509a6f75849b',13,NULL,NULL,1,'MQ=='),(14,'201700210025','c4ca4238a0b923820dcc509a6f75849b',14,NULL,NULL,1,'MQ=='),(15,'201700210026','c4ca4238a0b923820dcc509a6f75849b',15,NULL,NULL,1,'MQ=='),(16,'201700210027','c4ca4238a0b923820dcc509a6f75849b',16,NULL,NULL,1,'MQ=='),(17,'201700210028','c4ca4238a0b923820dcc509a6f75849b',17,NULL,NULL,1,'MQ=='),(18,'201700210029','c4ca4238a0b923820dcc509a6f75849b',18,NULL,NULL,1,'MQ=='),(19,'201700210030','c4ca4238a0b923820dcc509a6f75849b',19,NULL,NULL,1,'MQ=='),(20,'201700210031','c4ca4238a0b923820dcc509a6f75849b',20,NULL,NULL,1,'MQ=='),(21,'201700210032','c4ca4238a0b923820dcc509a6f75849b',21,NULL,NULL,1,'MQ=='),(22,'201700210033','c4ca4238a0b923820dcc509a6f75849b',22,NULL,NULL,1,'MQ=='),(23,'201700210034','c4ca4238a0b923820dcc509a6f75849b',23,NULL,NULL,1,'MQ=='),(24,'201700210035','c4ca4238a0b923820dcc509a6f75849b',24,NULL,NULL,1,'MQ=='),(25,'201700210036','c4ca4238a0b923820dcc509a6f75849b',25,NULL,NULL,1,'MQ=='),(26,'201700210037','c4ca4238a0b923820dcc509a6f75849b',26,NULL,NULL,1,'MQ=='),(27,'201700210038','c4ca4238a0b923820dcc509a6f75849b',27,NULL,NULL,1,'MQ=='),(28,'201700210039','c4ca4238a0b923820dcc509a6f75849b',28,NULL,NULL,1,'MQ=='),(29,'201700210040','c4ca4238a0b923820dcc509a6f75849b',29,NULL,NULL,1,'MQ=='),(30,'201700210041','c4ca4238a0b923820dcc509a6f75849b',30,NULL,NULL,1,'MQ=='),(31,'201700210042','c4ca4238a0b923820dcc509a6f75849b',31,NULL,NULL,1,'MQ=='),(32,'201700210043','c4ca4238a0b923820dcc509a6f75849b',32,NULL,NULL,1,'MQ=='),(33,'201700210044','c4ca4238a0b923820dcc509a6f75849b',33,NULL,NULL,1,'MQ=='),(34,'201700210045','c4ca4238a0b923820dcc509a6f75849b',34,NULL,NULL,1,'MQ=='),(35,'201700210046','c4ca4238a0b923820dcc509a6f75849b',35,NULL,NULL,1,'MQ=='),(36,'201700210047','c4ca4238a0b923820dcc509a6f75849b',36,NULL,NULL,1,'MQ=='),(37,'201700210048','c4ca4238a0b923820dcc509a6f75849b',37,NULL,NULL,1,'MQ=='),(38,'201700210049','c4ca4238a0b923820dcc509a6f75849b',38,NULL,NULL,1,'MQ=='),(39,'201700210050','c4ca4238a0b923820dcc509a6f75849b',39,NULL,NULL,1,'MQ=='),(40,'201700210051','c4ca4238a0b923820dcc509a6f75849b',40,NULL,NULL,1,'MQ=='),(41,'201700210052','c4ca4238a0b923820dcc509a6f75849b',41,NULL,NULL,1,'MQ=='),(42,'201700210053','c4ca4238a0b923820dcc509a6f75849b',42,NULL,NULL,1,'MQ=='),(43,'201700210054','c4ca4238a0b923820dcc509a6f75849b',43,NULL,NULL,1,'MQ=='),(44,'201700210055','c4ca4238a0b923820dcc509a6f75849b',44,NULL,NULL,1,'MQ=='),(45,'201700210056','c4ca4238a0b923820dcc509a6f75849b',45,NULL,NULL,1,'MQ=='),(46,'201700210057','c4ca4238a0b923820dcc509a6f75849b',46,NULL,NULL,1,'MQ=='),(47,'201700210058','c4ca4238a0b923820dcc509a6f75849b',47,NULL,NULL,1,'MQ=='),(48,'201700210059','c4ca4238a0b923820dcc509a6f75849b',48,NULL,NULL,1,'MQ=='),(49,'201700210060','c4ca4238a0b923820dcc509a6f75849b',49,NULL,NULL,1,'MQ=='),(50,'201700210061','c4ca4238a0b923820dcc509a6f75849b',50,NULL,NULL,1,'MQ=='),(51,'201700210062','c4ca4238a0b923820dcc509a6f75849b',51,NULL,NULL,1,'MQ=='),(52,'201700210063','c4ca4238a0b923820dcc509a6f75849b',52,NULL,NULL,1,'MQ=='),(53,'201700210064','c4ca4238a0b923820dcc509a6f75849b',53,NULL,NULL,1,'MQ=='),(54,'201700210065','c4ca4238a0b923820dcc509a6f75849b',54,NULL,NULL,1,'MQ=='),(55,'201700210066','c4ca4238a0b923820dcc509a6f75849b',55,NULL,NULL,1,'MQ=='),(56,'201700210067','c4ca4238a0b923820dcc509a6f75849b',56,NULL,NULL,1,'MQ=='),(57,'201700210068','c4ca4238a0b923820dcc509a6f75849b',57,NULL,NULL,1,'MQ=='),(58,'201700210069','c4ca4238a0b923820dcc509a6f75849b',58,NULL,NULL,1,'MQ=='),(59,'201700210070','c4ca4238a0b923820dcc509a6f75849b',59,NULL,NULL,1,'MQ=='),(60,'201700210071','c4ca4238a0b923820dcc509a6f75849b',60,NULL,NULL,1,'MQ=='),(61,'13969710175','c4ca4238a0b923820dcc509a6f75849b',61,NULL,NULL,1,'MQ=='),(62,'13013502344','c4ca4238a0b923820dcc509a6f75849b',62,NULL,NULL,1,'MQ=='),(63,'18266252758','c4ca4238a0b923820dcc509a6f75849b',63,NULL,NULL,1,'MQ=='),(64,'15866405335','c4ca4238a0b923820dcc509a6f75849b',64,NULL,NULL,1,'MQ=='),(65,'15966752462','c4ca4238a0b923820dcc509a6f75849b',65,NULL,NULL,1,'MQ=='),(66,'15954604838','c4ca4238a0b923820dcc509a6f75849b',66,NULL,NULL,1,'MQ=='),(67,'18661807369','c4ca4238a0b923820dcc509a6f75849b',67,NULL,NULL,1,'MQ=='),(68,'15553619618','c4ca4238a0b923820dcc509a6f75849b',68,NULL,NULL,1,'MQ=='),(69,'18615380588','c4ca4238a0b923820dcc509a6f75849b',69,NULL,NULL,1,'MQ=='),(70,'13854565893','c4ca4238a0b923820dcc509a6f75849b',70,NULL,NULL,1,'MQ=='),(71,'18506361132','c4ca4238a0b923820dcc509a6f75849b',71,NULL,NULL,1,'MQ=='),(72,'13563715786','c4ca4238a0b923820dcc509a6f75849b',72,NULL,NULL,1,'MQ=='),(73,'15263753411','c4ca4238a0b923820dcc509a6f75849b',73,NULL,NULL,1,'MQ=='),(74,'13964528031','c4ca4238a0b923820dcc509a6f75849b',74,NULL,NULL,1,'MQ=='),(75,'15964255999','c4ca4238a0b923820dcc509a6f75849b',75,NULL,NULL,1,'MQ=='),(76,'13854903089','c4ca4238a0b923820dcc509a6f75849b',76,NULL,NULL,1,'MQ=='),(77,'13153992118','c4ca4238a0b923820dcc509a6f75849b',77,NULL,NULL,1,'MQ=='),(78,'13953159285','c4ca4238a0b923820dcc509a6f75849b',78,NULL,NULL,1,'MQ=='),(79,'18953356397','c4ca4238a0b923820dcc509a6f75849b',79,NULL,NULL,1,'MQ=='),(80,'15910048046','c4ca4238a0b923820dcc509a6f75849b',80,NULL,NULL,1,'MQ=='),(81,'15163439177','c4ca4238a0b923820dcc509a6f75849b',81,NULL,NULL,1,'MQ=='),(82,'13625392550','c4ca4238a0b923820dcc509a6f75849b',82,NULL,NULL,1,'MQ=='),(83,'13685436390','c4ca4238a0b923820dcc509a6f75849b',83,NULL,NULL,1,'MQ=='),(84,'13969832072','c4ca4238a0b923820dcc509a6f75849b',84,NULL,NULL,1,'MQ=='),(85,'15105347159','c4ca4238a0b923820dcc509a6f75849b',85,NULL,NULL,1,'MQ=='),(86,'13583325097','c4ca4238a0b923820dcc509a6f75849b',86,NULL,NULL,1,'MQ=='),(87,'17793117030','c4ca4238a0b923820dcc509a6f75849b',87,NULL,NULL,1,'MQ=='),(88,'15117157407','c4ca4238a0b923820dcc509a6f75849b',88,NULL,NULL,1,'MQ=='),(89,'03738888489','c4ca4238a0b923820dcc509a6f75849b',89,NULL,NULL,1,'MQ=='),(90,'13837391567','c4ca4238a0b923820dcc509a6f75849b',90,NULL,NULL,1,'MQ=='),(91,'15093923870','c4ca4238a0b923820dcc509a6f75849b',91,NULL,NULL,1,'MQ=='),(92,'13598812962','c4ca4238a0b923820dcc509a6f75849b',92,NULL,NULL,1,'MQ=='),(93,'13693700048','c4ca4238a0b923820dcc509a6f75849b',93,NULL,NULL,1,'MQ=='),(94,'13849678599','c4ca4238a0b923820dcc509a6f75849b',94,NULL,NULL,1,'MQ=='),(95,'13932209573','c4ca4238a0b923820dcc509a6f75849b',95,NULL,NULL,1,'MQ=='),(96,'18931714435','c4ca4238a0b923820dcc509a6f75849b',96,NULL,NULL,1,'MQ=='),(97,'13403117505','c4ca4238a0b923820dcc509a6f75849b',97,NULL,NULL,1,'MQ=='),(98,'02988490826','c4ca4238a0b923820dcc509a6f75849b',98,NULL,NULL,1,'MQ=='),(99,'13891059136','c4ca4238a0b923820dcc509a6f75849b',99,NULL,NULL,1,'MQ=='),(100,'14791696772','c4ca4238a0b923820dcc509a6f75849b',100,NULL,NULL,1,'MQ=='),(101,'02988218785','c4ca4238a0b923820dcc509a6f75849b',101,NULL,NULL,1,'MQ=='),(102,'18991807159','c4ca4238a0b923820dcc509a6f75849b',102,NULL,NULL,1,'MQ=='),(103,'13324578455','c4ca4238a0b923820dcc509a6f75849b',103,NULL,NULL,1,'MQ=='),(104,'13312453405','c4ca4238a0b923820dcc509a6f75849b',104,NULL,NULL,1,'MQ=='),(105,'15285266727','c4ca4238a0b923820dcc509a6f75849b',105,NULL,NULL,1,'MQ=='),(106,'15942286888','c4ca4238a0b923820dcc509a6f75849b',106,NULL,NULL,1,'MQ=='),(107,'13704329235','c4ca4238a0b923820dcc509a6f75849b',107,NULL,NULL,1,'MQ=='),(108,'13943589500','c4ca4238a0b923820dcc509a6f75849b',108,NULL,NULL,1,'MQ=='),(109,'13986667958','c4ca4238a0b923820dcc509a6f75849b',109,NULL,NULL,1,'MQ=='),(110,'18771123961','c4ca4238a0b923820dcc509a6f75849b',110,NULL,NULL,1,'MQ=='),(111,'13886409156','c4ca4238a0b923820dcc509a6f75849b',111,NULL,NULL,1,'MQ=='),(112,'02788851979','c4ca4238a0b923820dcc509a6f75849b',112,NULL,NULL,1,'MQ=='),(113,'2016135145','26b37043ae966f318e33f9603428b756',113,NULL,NULL,1,'YTEyMzQ2NTc=');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_group`
--

DROP TABLE IF EXISTS `sys_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_group` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `createrId` int(11) DEFAULT NULL,
  PRIMARY KEY (`groupid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_group`
--

LOCK TABLES `sys_user_group` WRITE;
/*!40000 ALTER TABLE `sys_user_group` DISABLE KEYS */;
INSERT INTO `sys_user_group` VALUES (1,'管理员组',1),(2,'教师组',1),(3,'学生组',1),(4,'注册用户组',1);
/*!40000 ALTER TABLE `sys_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_group`
--

DROP TABLE IF EXISTS `user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_group` (
  `groupid` int(11) DEFAULT NULL,
  `sysusrid` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `FK_user_group_2` (`sysusrid`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_group`
--

LOCK TABLES `user_group` WRITE;
/*!40000 ALTER TABLE `user_group` DISABLE KEYS */;
INSERT INTO `user_group` VALUES (1,1,1),(1,2,2),(2,3,3),(3,4,4),(4,5,5),(3,6,6),(3,7,7),(2,8,8),(2,9,9),(1,10,10),(1,11,11),(2,12,12),(2,13,13),(2,14,14),(2,15,15),(2,16,16),(2,17,17),(2,18,18),(2,19,19),(2,20,20),(3,21,21),(3,22,22),(3,23,23),(3,24,24),(3,25,25),(3,26,26),(3,27,27),(3,28,28),(3,29,29),(3,30,30),(3,31,31),(3,32,32),(3,33,33),(3,34,34),(3,35,35),(3,36,36),(3,37,37),(3,38,38),(3,39,39),(3,40,40),(3,41,41),(3,42,42),(3,43,43),(3,44,44),(3,45,45),(3,46,46),(3,47,47),(3,48,48),(3,49,49),(3,50,50),(3,51,51),(3,52,52),(3,53,53),(3,54,54),(3,55,55),(3,56,56),(3,57,57),(3,58,58),(3,59,59),(3,60,60),(4,61,61),(4,62,62),(4,63,63),(4,64,64),(4,65,65),(4,66,66),(4,67,67),(4,68,68),(4,69,69),(4,70,70),(4,71,71),(4,72,72),(4,73,73),(4,74,74),(4,75,75),(4,76,76),(4,77,77),(4,78,78),(4,79,79),(4,80,80),(4,81,81),(4,82,82),(4,83,83),(4,84,84),(4,85,85),(4,86,86),(4,87,87),(4,88,88),(4,89,89),(4,90,90),(4,91,91),(4,92,92),(4,93,93),(4,94,94),(4,95,95),(4,96,96),(4,97,97),(4,98,98),(4,99,99),(4,100,100),(4,101,101),(4,102,102),(4,103,103),(4,104,104),(4,105,105),(4,106,106),(4,107,107),(4,108,108),(4,109,109),(4,110,110),(4,111,111),(4,112,112),(3,113,113);
/*!40000 ALTER TABLE `user_group` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-22 14:33:46
