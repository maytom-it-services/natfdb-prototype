CREATE TABLE `sys_choice` (
  `sys_id` char(36) NOT NULL,
  `sys_created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sys_created_by` varchar(255) NOT NULL,
  `sys_updated_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sys_updated_by` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `table_name` varchar(255) NOT NULL,
  `field_name` varchar(255) NOT NULL,
  `sequence` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `dependent` varchar(255) DEFAULT NULL,
  `hint` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sys_id`),
  UNIQUE KEY `sys_id_UNIQUE` (`sys_id`),
  KEY `sys_choice_tbl_fld` (`table_name`,`field_name`) /*!80000 INVISIBLE */
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci