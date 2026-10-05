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
(104, 'Riya', 2);


DELIMITER //

CREATE PROCEDURE InsertStudent(
    IN id INT,
    IN name VARCHAR(50),
    IN dept INT
)
BEGIN
    INSERT INTO Student
    VALUES (id, name, dept);
END //

DELIMITER ;

CALL InsertStudent(105, 'Kavin', 1);

SELECT * FROM Student;
