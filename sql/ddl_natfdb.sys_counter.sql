CREATE TABLE `sys_counter` (
  `table_name` varchar(255) NOT NULL COMMENT 'Name of the table to which the ID counter applies. Note there can only be one ID counter per table',
  `sys_id` char(36) NOT NULL,
  `sys_created_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date and time the record is created',
  `sys_created_by` varchar(255) NOT NULL COMMENT 'Identifier of the user that created the record',
  `sys_updated_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'Date and time the record was last updated',
  `sys_updated_by` varchar(255) NOT NULL COMMENT 'Identifier of the user that last updated the record',
  `counter_value` int(11) NOT NULL,
  `prefix` varchar(10) DEFAULT NULL COMMENT 'Static text value to prefix to all ID numbers',
  `prefix_year` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Flag to indicate if 2-digit year should be prefixed',
  `suffix` varchar(10) DEFAULT NULL COMMENT 'Static text value to suffix to all ID numbers',
  `suffix_year` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Flag to indicate if 2-digit year should be suffixed/appended to the end of the ID',
  `separator` varchar(2) DEFAULT NULL COMMENT 'Separator to use between all components of the ID',
  PRIMARY KEY (`sys_id`),
  UNIQUE KEY `table_name_UNIQUE` (`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Table identifier counter. Stores the current counter value for tables.'