CREATE DATABASE  IF NOT EXISTS `postgres`
USE `postgres`;

DROP TABLE IF EXISTS `FINX_CA_ENTITES_SCAN`;
CREATE TABLE `FINX_CA_ENTITES_SCAN` (
    'ID' BIGSERIAL PRIMARY KEY
    `CA_workflow_instance_identifier` VARCHAR(500) NOT NULL,
    `CA_screening_configuration_identifier` VARCHAR(500) NOT NULL,
    `MSD_entity_id` VARCHAR(255),
    `MSD_entity_type` VARCHAR(100) NOT NULL CHECK (`MSD_entity_type` IN ('corporate', 'individual')),
    `Finx_entity_status` VARCHAR(100),
    `Finx_Api_id` VARCHAR(100),
    `Finx_overall_decision` VARCHAR(100),
    `Finx_status_from_method` VARCHAR(500),
    `scan_initiated_on` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `scan_status_updated_on` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    `CA_Webhook_configuration_identifier` VARCHAR(500),
    PRIMARY KEY (`ID`),
)

