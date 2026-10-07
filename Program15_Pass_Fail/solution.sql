USE CollegeDB;

--check Greater than 40.

DELIMITER //

CREATE PROCEDURE CheckResult(IN marks INT)
BEGIN
    IF marks >= 40 THEN
        SELECT 'Pass' AS Result;
    ELSE
        SELECT 'Fail' AS Result;
    END IF;
END //

DELIMITER ;

CALL CheckResult(65);
