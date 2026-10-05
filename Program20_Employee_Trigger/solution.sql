USE CollegeDB;
--create table Employee
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    EmployeeName VARCHAR(50)
);

--insert values

INSERT INTO Employee VALUES
(1, 'Arun'),
(2, 'Bala'),
(3, 'Kavi'),
(4, 'Riya');

-- create table Employeelog

CREATE TABLE EmployeeLog (
    Message VARCHAR(100)
);

--

DELIMITER //

CREATE TRIGGER EmployeeTrigger
AFTER INSERT ON Employee
FOR EACH ROW
BEGIN
    INSERT INTO EmployeeLog
    VALUES ('New employee record inserted successfully');
END //
    
--
    INSERT INTO Employee VALUES (5, 'Prathi');

SELECT * FROM EmployeeLog;

DELIMITER ;
