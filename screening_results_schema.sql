CREATE DATABASE  IF NOT EXISTS `postgres`
USE `postgres`;

DROP TABLE IF EXISTS `screening_results`;
CREATE TABLE `screening_results` (
    `CA_workflow_instance_identifier` VARCHAR(500) NOT NULL,
    `CA_screening_configuration_identifier` VARCHAR(500) NOT NULL,
    `MSD_entity_id` VARCHAR(255),
    `MSD_entity_type` VARCHAR(100),
    `Finx_entity_status` VARCHAR(100),
    `Finx_Api_id` VARCHAR(100),
    `Finx_overall_decision` VARCHAR(100),
    `Finx_status_from_method` VARCHAR(500),
    `scan_initiated_on` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `scan_status_updated_on` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `CA_Webhook_configuration_identifier` VARCHAR(500),
    PRIMARY KEY (`ID SERIAL`),
);

DROP TABLE IF EXISTS `address_postgres`;
CREATE TABLE `address_postgres` (
  `id` varchar(255) NOT NULL,
  `address_line1` varchar(255) DEFAULT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
)

