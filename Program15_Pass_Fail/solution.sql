USE CollegeDB;
DELIMITER //

CREATE PROCEDURE CheckMarks()
BEGIN
    DECLARE marks INT DEFAULT 60;

    IF marks >= 40 THEN
        SELECT 'Pass' AS Result;
    ELSE
        SELECT 'Fail' AS Result;
    END IF;
END //

DELIMITER ;

CALL CheckMarks();
