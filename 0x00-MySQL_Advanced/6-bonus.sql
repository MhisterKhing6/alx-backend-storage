-- Adding a new correction procedure
-- Add bonause to correction database
DELIMITER //;
CREATE PROCEDURE AddBonus(IN id INT, IN project_name VARCHAR(255), IN score INT)
BEGIN
IF `project_name` NOT IN (SELECT `name` FROM `projects`) THEN
    INSERT INTO projects(name) VALUES (project_name);
END IF;
INSERT INTO corrections(`user_id`, `project_id`, `score`) VALUES (`id`, (SELECT id from `projects` WHERE `name` = `project_name`), `score`);
END; //
