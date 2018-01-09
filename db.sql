CREATE DATABASE  IF NOT EXISTS `emcparty` ;
USE `emcparty`;


DROP TABLE IF EXISTS `auth`;

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


LOCK TABLES `auth` WRITE;
INSERT INTO `auth` VALUES ('emcparty','$2a$10$5shPxizzPr0YlkzIA.L0FO82x3BjfhvyRHjQ1J2QMqePH9k4sUFwe','EMC','2017-06-29 09:40:19',NULL,NULL,NULL,NULL,NULL,NULL);
UNLOCK TABLES;

DROP TABLE IF EXISTS `check_list`;
CREATE TABLE `check_list` (
  `user_id` varchar(32) NOT NULL,
  `user_name` varchar(45) DEFAULT NULL,
  `date_join` varchar(45) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `tenant` varchar(32) DEFAULT NULL,
  `event` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`,`event`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `event_user`;
CREATE TABLE `event_user` (
  `event` varchar(32) NOT NULL,
  `tenant` varchar(32) DEFAULT NULL,
  `user_id` varchar(45) NOT NULL,
  `open_id` varchar(45) DEFAULT NULL,
  `date_joined` datetime DEFAULT NULL,
  PRIMARY KEY (`event`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `user_id` varchar(45) NOT NULL,
  `content` mediumblob,
  `content_type` varchar(128) DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `file_name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `user_info`;
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
