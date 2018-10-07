CREATE DEFINER=`natfadmin`@`192.168.1.%` TRIGGER `person_BEFORE_INSERT` BEFORE INSERT ON `person` FOR EACH ROW BEGIN
	IF (NEW.sys_id IS NULL) THEN 
		SET NEW.sys_id = UUID(); 
    END IF;
    IF (NEW.sys_created_on IS NULL) THEN
		SET NEW.sys_created_on = NOW();
	END IF;
END