CREATE DATABASE  IF NOT EXISTS `wvevent` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `wvevent`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: 127.0.0.1    Database: wvevent
-- ------------------------------------------------------
-- Server version	5.6.24

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
-- Table structure for table `auth`
--

DROP TABLE IF EXISTS `auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth` (
  `user_name` varchar(45) NOT NULL,
  `password` varchar(128) DEFAULT NULL,
  `tenant` varchar(32) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `img` varchar(256) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth`
--

LOCK TABLES `auth` WRITE;
/*!40000 ALTER TABLE `auth` DISABLE KEYS */;
INSERT INTO `auth` VALUES ('emchr','$2a$10$5shPxizzPr0YlkzIA.L0FO82x3BjfhvyRHjQ1J2QMqePH9k4sUFwe','EMC','2017-06-29 09:40:19',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channel_account`
--

DROP TABLE IF EXISTS `channel_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `channel_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) DEFAULT NULL,
  `account` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `img` varchar(256) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `country` varchar(45) DEFAULT NULL,
  `province` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `subscribe` varchar(1) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `external_id` varchar(45) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `check_list`
--

DROP TABLE IF EXISTS `check_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `check_list` (
  `user_id` varchar(32) NOT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `tenant` varchar(32) DEFAULT NULL,
  `event` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`,`event`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event_user`
--

DROP TABLE IF EXISTS `event_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_user` (
  `event` varchar(32) NOT NULL,
  `tenant` varchar(32) DEFAULT NULL,
  `user_id` varchar(45) NOT NULL,
  `open_id` varchar(45) DEFAULT NULL,
  `date_joined` datetime DEFAULT NULL,
  PRIMARY KEY (`event`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `exclude_list`
--

DROP TABLE IF EXISTS `exclude_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exclude_list` (
  `user_id` varchar(32) NOT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `tenant` varchar(32) DEFAULT NULL,
  `event` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`,`event`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `job`
--

DROP TABLE IF EXISTS `job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job` (
  `id` varchar(32) NOT NULL,
  `job_code` varchar(32) DEFAULT NULL,
  `tenant` varchar(10) DEFAULT NULL,
  `jd` mediumblob,
  `status` varchar(45) DEFAULT NULL,
  `title` varchar(256) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `openning` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='job';
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `job_applicant`
--

DROP TABLE IF EXISTS `job_applicant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `job_applicant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `summary` varchar(4096) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `resume`
--

DROP TABLE IF EXISTS `resume`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resume` (
  `user_id` int(11) NOT NULL,
  `content` mediumblob,
  `content_type` varchar(128) DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `file_name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tracking`
--

DROP TABLE IF EXISTS `tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenant` varchar(45) DEFAULT NULL,
  `event` varchar(45) DEFAULT NULL,
  `target_name` varchar(256) DEFAULT NULL,
  `target_id` varchar(45) DEFAULT NULL,
  `channel` varchar(45) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `tech_id` varchar(45) DEFAULT NULL,
  `forwarder` varchar(45) DEFAULT NULL,
  `original_forwarder` varchar(45) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenant` varchar(32) DEFAULT NULL,
  `user_id` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `nick_name` varchar(45) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `img` varchar(256) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobile_verified` varchar(1) DEFAULT NULL,
  `email_verified` varchar(1) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `region` varchar(45) DEFAULT NULL,
  `tech_id` varchar(45) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `last_updated` datetime DEFAULT NULL,
  `custom_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `wechat_account`
--

DROP TABLE IF EXISTS `wechat_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wechat_account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tenant` varchar(32) DEFAULT NULL,
  `origin_id` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `no` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `app_id` varchar(45) DEFAULT NULL,
  `app_secret` varchar(45) DEFAULT NULL,
  `callback_address` varchar(45) DEFAULT NULL,
  `token` varchar(45) DEFAULT NULL,
  `aes_key` varchar(45) DEFAULT NULL,
  `img` varchar(45) DEFAULT NULL,
  `server_type` varchar(45) DEFAULT NULL,
  `verify_type` varchar(45) DEFAULT NULL,
  `qrcode` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


