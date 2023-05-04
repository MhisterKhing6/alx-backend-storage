-- Adding a new correction procedure
-- Add bonause to correction databasei
DELIMITER $$
CREATE PROCEDURE `AddBonus`(IN id INT, IN project_name VARCHAR(255), IN score INT)
BEGIN
END IF;
--Get pid from projects table
INSERT INTO `corrections`(`user_id`, `project_id`, `score`) VALUES (id, (SELECT id from `projects` WHERE `name` = project_name;) , score);
END $$
DELIMITER ; $$
