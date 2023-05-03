-- Set valid email when the email attribute change --
DELIMITER //;
CREATE Trigger `valid_email` BEFORE UPDATE ON `users` 
 FOR EACH ROW
 BEGIN
 IF `NEW.email` != `OLD.email` THEN
    IF `NEW.valid_email` = 0 THEN
        SET `NEW.valid_email` = 0;
    ELSE
        SET `New.valid_email` = 0;
    END IF;
END IF;
 END; //
