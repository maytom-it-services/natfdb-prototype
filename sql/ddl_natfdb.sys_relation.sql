CREATE TABLE `sys_relation` (
  `sys_id` char(36) NOT NULL,
  `sys_created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sys_created_by` varchar(255) NOT NULL,
  `sys_updated_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sys_updated_by` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `parent_table_name` varchar(255) NOT NULL,
  `child_table_name` varchar(255) NOT NULL,
  `parent_sys_id` char(36) NOT NULL,
  `child_sys_id` char(36) NOT NULL,
  `relation_type` varchar(255) DEFAULT NULL,
  `sys_expire_on` date DEFAULT NULL,
  PRIMARY KEY (`sys_id`),
  KEY `sys_relation_parent_child` (`parent_table_name`,`parent_sys_id`,`child_table_name`,`child_sys_id`) /*!80000 INVISIBLE */,
  KEY `sys_relation_active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Relationships between records in user-defined tables'