drop table if exists Managers;
CREATE TABLE Managers (
    Manager_Id INT PRIMARY KEY,
    First_name VARCHAR(50),
    Last_name VARCHAR(50),
    DOB DATE,
    Age INT CHECK (Age >= 18),
    Last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Gender CHAR(1),
    Department VARCHAR(50),
    Salary DECIMAL(10, 2) NOT NULL
);
INSERT INTO Managers (Manager_Id, First_name, Last_name, DOB, Age, Gender, Department, Salary)
VALUES 
(1, 'sharil', 'ps', '2003-04-23', 38, 'M', 'IT', 30000),
(2, 'shimmy', 'janson', '2001-08-15', 33, 'F', 'Finance', 40000),
(3, 'Aaliya', 'Khan', '1999-06-10', 35, 'F', 'HR', 25000),
(4, 'jimmy', 'Smith', '1997-11-22', 44, 'M', 'IT', 32000),
(5, 'kavya', 'Johnson', '1995-09-05', 29, 'F', 'Marketing', 28000),
(6, 'Jacky', 'Williams', '1987-03-12', 37, 'M', 'IT', 27000),
(7, 'Liam', 'Brown', '1988-02-02', 42, 'M', 'Finance', 34000),
(8, 'meow', 'Jones', '1999-12-17', 31, 'F', 'Sales', 26000),
(9, 'Mason', 'Garcia', '1993-07-14', 41, 'M', 'IT', 15000),
(10, 'Ava', 'Martin', '1996-05-25', 38, 'F', 'Finance', 38000);
SELECT First_name, Last_name, DOB 
FROM Managers 
WHERE Manager_Id = 1;
SELECT First_name, Last_name, (Salary * 12) AS Annual_Income 
FROM Managers;
SELECT * 
FROM Managers 
WHERE First_name <> 'Aaliya';
SELECT * 
FROM Managers 
WHERE Department = 'IT' AND Salary > 25000;
SELECT * 
FROM Managers 
WHERE Salary BETWEEN 10000 AND 35000;

