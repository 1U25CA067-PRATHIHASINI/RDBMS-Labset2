USE CollegeDB;

-- create function 

DELIMITER //

CREATE FUNCTION CountStudents(p_DepartmentID
INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE student_count INT;

    SELECT COUNT(*)
    INTO student_count
    FROM Student
    WHERE DepartmentID = p_DepartmentID;

    RETURN student_count;
END //

DELIMITER ;

SELECT CountStudents(10) AS TotalStudents;

