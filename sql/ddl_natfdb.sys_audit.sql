CREATE TABLE `sys_audit` (
  `sys_id` char(36) NOT NULL,
  `sys_created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sys_created_by` varchar(255) NOT NULL,
  `sys_updated_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sys_updated_by` varchar(255) NOT NULL,
  `table_name` varchar(255) NOT NULL,
  `field_name` varchar(255) NOT NULL,
  `old_value` varchar(255) DEFAULT NULL,
  `new_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sys_id`),
  UNIQUE KEY `sys_id_UNIQUE` (`sys_id`),
  KEY `sys_audit_table` (`table_name`) /*!80000 INVISIBLE */,
  KEY `sys_audit_field` (`field_name`),
  KEY `sys_audit_created` (`sys_created_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Audit table for user defeined fields'