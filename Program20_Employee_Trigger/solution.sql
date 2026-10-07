USE CollegeDB;

-- Create a table Employee_Log.

CREATE TABLE Employee_Log (
    Message VARCHAR(255),
    CreatedAt TIMESTAMP DEFAULT
    CURRENT_TIMESTAMP
);

-- Trigger

DELIMITER //

CREATE TRIGGER AfterEmployeeInsert
AFTER INSERT ON Employee
FOR EACH ROW
BEGIN
    INSERT INTO Employee_Log (Message)
    VALUES (
        CONCAT('New employee inserted: ',
        NEW.EmployeeName)
    );
END //

DELIMITER ;

- Display 

INSERT INTO Employee(EmployeeID, EmployeeName)
VALUES (1, 'Ravi');

SELECT * FROM Employee_Log;
