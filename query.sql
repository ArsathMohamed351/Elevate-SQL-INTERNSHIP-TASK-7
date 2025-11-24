CREATE DATABASE IF NOT EXISTS SQL_INTERN_TASK_7;
USE SQL_INTERN_TASK_7;

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT,
    Location VARCHAR(50)
);

CREATE TABLE Employees (
    EmpID INTEGER PRIMARY KEY,
    Name TEXT,
    Department TEXT,
    Salary INTEGER,
    Location TEXT
);

INSERT INTO Employees VALUES (1, 'Arun', 'IT', 45000, 'Chennai'),
(2, 'Priya', 'HR', 52000, 'Bangalore'),
(3, 'Kiran', 'Finance', 60000, 'Hyderabad'),
(4, 'Rahul', 'IT', 70000, 'Chennai'),
(5, 'Sara', 'HR', 48000, 'Bangalore');

CREATE VIEW IT_Employees AS
SELECT EmpID, Name, Salary
FROM Employees
WHERE Department = 'IT';

CREATE VIEW Avg_Department_Salary AS
SELECT Department, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Department;

SELECT * FROM IT_Employees;

SELECT * FROM Avg_Department_Salary;

UPDATE IT_Employees
SET Salary = 50000
WHERE EmpID = 1;




