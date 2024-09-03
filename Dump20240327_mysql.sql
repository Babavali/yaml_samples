CREATE DATABASE  IF NOT EXISTS `rest_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `rest_db`;

drop table if exists table `report_access_log`;
	
create table `report_access_log` (
	`report_name` varchar (64),
	`parameters` varchar (256),
	`user_name` varchar (64),
	`generated_timestamp`	date
  PRIMARY KEY (`id`)
);

DROP TABLE IF EXISTS `address_map`;
CREATE TABLE `address_map` (
  `id` varchar(255) NOT NULL,
  `address_line1` varchar(255) DEFAULT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS `employee_map`;
CREATE TABLE `employee_map` (
  `id` int NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_hayqfjiruee1h6gs8jpcnjkmh` (`address_id`),
  CONSTRAINT `fklm8wihj7bmjdv4lyk18e9j814` FOREIGN KEY (`address_id`) REFERENCES `address_map` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

