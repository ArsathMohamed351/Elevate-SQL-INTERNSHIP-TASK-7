# Elevate-SQL-INTERNSHIP-TASK-7

# Task 7 – Creating Views (SQL Intern Task)

## Objective
Learn how to create and use SQL Views to simplify queries and reuse SQL logic.

## Full Code + Description (All in One Block)

CREATE DATABASE IF NOT EXISTS SQL_INTERN_TASK_7;
USE SQL_INTERN_TASK_7;

-- Creating Employees table
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT,
    Location VARCHAR(50)
);

-- Inserting sample data
INSERT INTO Employees VALUES 
(1, 'Arun', 'IT', 45000, 'Chennai'),
(2, 'Priya', 'HR', 52000, 'Bangalore'),
(3, 'Kiran', 'Finance', 60000, 'Hyderabad'),
(4, 'Rahul', 'IT', 70000, 'Chennai'),
(5, 'Sara', 'HR', 48000, 'Bangalore');

-- Creating a view for IT employees
CREATE VIEW IT_Employees AS
SELECT EmpID, Name, Salary
FROM Employees
WHERE Department = 'IT';

-- Creating a view for average salary by department
CREATE VIEW Avg_Department_Salary AS
SELECT Department, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Department;

-- Querying the IT employees view
SELECT * FROM IT_Employees;

-- Querying the average salary view
SELECT * FROM Avg_Department_Salary;

-- Updating data through the IT view (MySQL supported)
UPDATE IT_Employees
SET Salary = 50000
WHERE EmpID = 1;

## Outcome
-- Created database and table  
-- Inserted sample data  
-- Created and used SQL views  
-- Understood how views provide abstraction and reusable SQL logic  
