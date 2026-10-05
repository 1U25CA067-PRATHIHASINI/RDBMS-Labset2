USE CollegeDB;
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    DepartmentID INT
);

INSERT INTO Student VALUES
(101, 'Arun', 1),
(102, 'Bala', 1),
(103, 'Kavi', 2),
(104, 'Riya', 1);


DELIMITER //

CREATE FUNCTION CountStudents(dept INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total INT;

    SELECT COUNT(*) INTO total
    FROM Student
    WHERE DepartmentID = dept;

    RETURN total;
END //

DELIMITER ;

SELECT CountStudents(1) AS TotalStudents;

