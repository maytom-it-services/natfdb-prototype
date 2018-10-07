CREATE TABLE `species` (
  `sys_id` char(36) NOT NULL,
  `sys_created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sys_created_by` varchar(255) NOT NULL,
  `sys_updated_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sys_updated_by` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `name_common` varchar(255) NOT NULL,
  `code` varchar(20) NOT NULL,
  `classification` varchar(255) NOT NULL,
  `name_scientific` varchar(255) DEFAULT NULL,
  `reference` longtext,
  PRIMARY KEY (`sys_id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci