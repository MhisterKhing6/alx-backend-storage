-- Adding a new correction procedure
-- Add bonause to correction databasei
DELIMITER $$
CREATE PROCEDURE `AddBonus`(IN id INT, IN project_name VARCHAR(255), IN score INT)
BEGIN
DECLARE pid INT;
IF project_name NOT IN (SELECT `name` FROM `projects`) THEN
    INSERT INTO projects(name) VALUES (project_name);
END IF;
SELECT `id` INTO pid from projects WHERE `name`  = project_name;
INSERT INTO corrections(`user_id`, `project_id`, `score`) VALUES (id, pid , score);
END $$
DELIMITER ; $$
