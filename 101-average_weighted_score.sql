-- Adding a new correction procedure
DELIMITER $$;
CREATE PROCEDURE `ComputeAverageWeightedScoreForUsers`()
BEGIN 
DECLARE total_student INT DEFAULT 0;
DECLARE start_row INT DEFAULT 0;
DECLARE ui_d INT DEFAULT 0;
DECLARE sum_all FLOAT DEFAULT 0;
DECLARE total_weight FLOAT DEFAULT 1;
-- Get total student
SELECT COUNT(*) INTO total_student FROM `users`;
-- Loop through all the students;
WHILE start_row < total_student DO
SELECT `id` iNTO ui_d FROM users LIMIT start_row, 1;
-- Compute the toal weight
SELECT SUM(C.score * P.weight), Sum(P.weight) INTO sum_all, total_weight 
FROM `corrections` as C, projects as P 
WHERE C.user_id = ui_d and P.id = C.project_id ;
-- Set the user weighted score for the user score
UPDATE `users` SET `average_score` = (sum_all / total_weight) WHERE `id` = ui_d;
-- Update start_row
SET start_row = start_row + 1;
END WHILE;
END;$$
DELIMITER ;
