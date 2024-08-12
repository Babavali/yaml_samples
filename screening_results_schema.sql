CREATE DATABASE  IF NOT EXISTS `postgres` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `postgres`;
-- public.id_proof definition

DROP TABLE IF EXISTS `screening_results`;
CREATE TABLE screening_results (
    `ID SERIAL` PRIMARY KEY,
    `CA_workflow_instance_identifier` VARCHAR(500) NOT NULL UNIQUE,
    `CA_screening_configuration_identifier` VARCHAR(500) NOT NULL,
    `MSD_entity_id` VARCHAR(255),
    `MSD_entity_type` VARCHAR(100),
    `Finx_entity_status` VARCHAR(100),
    `Finx_Api_id` VARCHAR(100),
    `Finx_overall_decision` VARCHAR(100),
    `Finx_status_from_method` VARCHAR(500),
    `scan_initiated_on` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `scan_status_updated_on` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `CA_Webhook_configuration_identifier` VARCHAR(500)
);

