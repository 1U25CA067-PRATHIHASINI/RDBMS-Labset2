USE CollegeDB;

-- Insert student procedure 

DELIMITER //

CREATE PROCEDURE InsertStudent(
    IN p_StudentID INT,
    IN p_StudentName VARCHAR(100),
    IN p_DepartmentID INT
)
BEGIN
    INSERT INTO Student
    (StudentID, StudentName, DepartmentID)
    VALUES
    (p_StudentID, p_StudentName,
    p_DepartmentID);
END //

DELIMITER ;

CALL InsertStudent(101, 'Arun', 10);