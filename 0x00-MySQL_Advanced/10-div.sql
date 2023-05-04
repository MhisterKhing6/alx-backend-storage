DELIMITER $$
CREATE FUNCTION `safeDiv`(
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
