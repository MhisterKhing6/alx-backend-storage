-- Adding a new correction procedure
DELIMITER $$;
CREATE PROCEDURE `ComputeAverageWeightedScoreForUser`(IN ui_d INT)
BEGIN 
DECLARE sum_all FLOAT;
DECLARE total_weight FLOAT;
-- Select the aveage score for the student
SELECT SUM(C.score * P.weight), Sum(P.weight) INTO sum_all, total_weight 
FROM `corrections` as C, projects as P 
WHERE C.user_id = ui_d and P.id = C.project_id ;
-- Set the user weighted score for the project
UPDATE `users` SET `average_score` = (sum_all / total_weight) WHERE `id` = ui_d;
END;$$
DELIMITER ; 
