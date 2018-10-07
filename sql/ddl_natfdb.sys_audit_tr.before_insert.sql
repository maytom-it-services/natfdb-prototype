CREATE DEFINER=`natfadmin`@`192.168.1.%` TRIGGER `sys_audit_BEFORE_INSERT` BEFORE INSERT ON `sys_audit` FOR EACH ROW BEGIN
IF new.sys_id IS NULL THEN
		SET new.sys_id = uuid();
	END IF;
    IF new.sys_created_on IS NULL THEN
		SET new.sys_created_on = NOW();
    END IF;
    IF new.sys_updated_on IS NULL THEN
		SET new.sys_updated_on = NOW();
    END IF;
END