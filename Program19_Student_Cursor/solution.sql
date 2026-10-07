USE CollegeDB;

-- Cursor

DELIMITER //

CREATE PROCEDURE DisplayStudents()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE sid INT;
    DECLARE sname VARCHAR(100);
    DECLARE did INT;

    DECLARE student_cursor CURSOR FOR
    SELECT StudentID, StudentName, DepartmentID
    FROM Student;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET
    done = 1;

    OPEN student_cursor;

    read_loop: LOOP
        FETCH student_cursor INTO sid, sname, did;

        IF done = 1 THEN
            LEAVE read_loop;
        END IF;

        SELECT sid AS StudentID,
            sname AS StudentName,
            did AS DepartmentID;
    END LOOP;

    CLOSE student_cursor;
END //

DELIMITER ;

CALL DisplayStudents();
