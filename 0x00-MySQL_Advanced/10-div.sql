-- Create a function that safely adds and return the div of two numbers
-- Function div
DELIMITER $$
CREATE FUNCTION IF NOT EXISTS`safeDiv`(
	a INT, b INT
) 
RETURNS FLOAT
BEGIN
    IF b = 0 THEN
        RETURN (0);
    ELSE
	    RETURN (a / b);
    END IF;
END;$$
DELIMITER ;
