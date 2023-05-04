-- Adding a new correction procedure
DELIMITER $$;
CREATE PROCEDURE `ComputeAverageScoreForUser`(IN ui_d INT)
BEGIN 
DECLARE average FLOAT;
-- Select the aveage score for the student
SELECT AVG(`score`) INTO average FROM `corrections` WHERE user_id = ui_d;
UPDATE `users` SET `average_score` = average WHERE `id` = ui_d;
END;$$
DELIMITER ; 
