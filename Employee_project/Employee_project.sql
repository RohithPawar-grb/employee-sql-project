CREATE DATABASE employee_project;
USE employee_project;

CREATE TABLE Departments (
    DepartmentID int primary key,
    DepartmentName varchar(50));
alter table Departments
change DepartmentName Department_name varchar(50);

CREATE TABLE EMPLOYEES(
Employee_ID int primary key,
Employee_name varchar(50),
Department_ID int,
Salary int,
Hire_date date);

INSERT INTO Departments values
(1, 'HR'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Sales');


INSERT INTO Employees VALUES
(101, 'Rahul Sharma', 3, 45000, '2022-06-01'),
(102, 'Priya Verma', 2, 40000, '2021-03-15'),
(103, 'Amit Singh', 4, 35000, '2020-01-10'),
(104, 'Neha Gupta', 1, 32000, '2023-02-01'),
(105, 'Rohit Mehta', 3, 55000, '2019-08-20'),
(106, 'Sneha Reddy', 2, 38000, '2022-11-01');

-- Query 1 : Show Employee name and salary
select Employee_name,salary from Employees;

-- Q2 Employees earning more than 40,000
Select * from employees
where salary>40000;

-- Q3 Sort employees by salary (High → Low)
select * from employees
order by salary desc;

-- Q4 Show employee name + department name
SELECT 
    e.Employee_Name,
    d.Department_Name
FROM Employees e
JOIN Departments d
    ON e.Department_ID = d.Department_ID;
    
 -- Q5 No.of employee in each department   
SELECT 
    d.Department_Name,
    COUNT(e.Employee_ID) AS EmployeeCount
FROM Departments d
LEFT JOIN Employees e
    ON d.Department_ID = e.Department_ID
GROUP BY d.Department_Name;

-- Q6 Top 3 employees with highest salary
SELECT * FROM Employees
ORDER BY Salary DESC
LIMIT 3;