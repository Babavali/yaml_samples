CREATE DATABASE  IF NOT EXISTS `postgres` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `postgres`;
-- public.id_proof definition

-- Drop table
DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` varchar(255) NOT NULL,
  `address_line1` varchar(255) DEFAULT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
)

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` int NOT NULL,
  `city` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_hayqfjiruee1h6gs8jpcnjkmh` (`address_id`),
  CONSTRAINT `fklm8wihj7bmjdv4lyk18e9j814` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`)
)

DROP TABLE IF EXISTS `id_proof`;

CREATE TABLE 'id_proof' (
	`id` varchar(255) NOT NULL,
	`type` varchar(255) NULL,
	`value` varchar(255) NULL,
	CONSTRAINT `id_proof_pkey` PRIMARY KEY (`id`)
);

-- public.test_user definition

-- Drop table

DROP TABLE IF EXISTS `user`;

CREATE TABLE 'user' (
	`id` int4 NOT NULL,
	`city` varchar(255) NULL,
	`email` varchar(255) NULL,
	`name` varchar(255) NULL,
	`id_proof_id` varchar(255) NULL,
	CONSTRAINT `test_user_pkey` PRIMARY KEY (`id`),
	CONSTRAINT `uk_7ob33qsu9iy3il49s0674vyho` UNIQUE (`id_proof_id`)
);


-- public.test_user foreign keys

ALTER TABLE ,`test_user` ADD CONSTRAINT `fksju7i3axjy7lr8vkln3ewknbc` FOREIGN KEY (`id_proof_id`) REFERENCES id_proof(`id`)
;
