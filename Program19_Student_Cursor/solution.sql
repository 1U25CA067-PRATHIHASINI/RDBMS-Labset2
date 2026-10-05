USE CollegeDB;

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    DepartmentID INT
);

INSERT INTO Student VALUES
(101, 'Arun', 1),
(102, 'Bala', 2),
(103, 'Kavi', 1),
(104, 'Riya', 2);

--cursor
DELIMITER //

CREATE PROCEDURE DisplayStudents()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE id INT;
    DECLARE name VARCHAR(50);
    DECLARE dept INT;

    DECLARE c CURSOR FOR
        SELECT StudentID, StudentName, DepartmentID
        FROM Student;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN c;

    read_loop: LOOP
        FETCH c INTO id, name, dept;

        IF done = 1 THEN
            LEAVE read_loop;
        END IF;

        SELECT id AS StudentID, name AS StudentName,
               dept AS DepartmentID;
    END LOOP;

    CLOSE c;
END //

DELIMITER ;

CALL DisplayStudents();
