-- This Notebook 1 covers : How to CREATE DATABASE, How to CREATE TABLE, How to INSERT VALUES in TABLE, And Understand How SELECT, ALTER, RENAME, WHERE queries works.


CREATE DATABASE company_db;

USE company_db;

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(15) NOT NULL,
    email VARCHAR(100) UNIQUE,
    gender ENUM('Male', 'Female'),
    date_of_birth DATE,
    salary DECIMAL(10, 2)
);


INSERT INTO employees 
(name, email, gender, date_of_birth, salary)
VALUES
('Ali Khan', 'ali.khan@gmail.com', 'Male', '2000-05-12', 55000.00),
('Saba Hussain', 'saba.hussain@gmail.com', 'Female', '2005-04-09', 72000.00),
('Abdul Rehman', 'abdul.rehman@gmail.com', 'Male', '2005-12-01', 85000.00),
('Ayesha Noor', 'ayesha.noor@gmail.com', 'Female', '2001-11-09', 48000.00),
('Hamza Sheikh', 'hamza.sheikh@gmail.com', 'Male', '1997-07-25', 65000.00),
('Fatima Zahra', 'fatima.zahra@gmail.com', 'Female', '1999-02-18', 90000.00),
('Ahmed Raza', 'ahmed.raza@gmail.com', 'Male', '1996-12-30', 78000.00),
('Zainab Ali', 'zainab.ali@gmail.com', 'Female', '2002-04-14', 45000.00),
('Bilal Hussain', 'bilal.hussain@gmail.com', 'Male', '1994-09-05', 95000.00),
('Hira Shah', 'hira.shah@gmail.com', 'Female', '2000-06-22', 60000.00),
('Danish Iqbal', 'danish.iqbal@gmail.com', 'Male', '1998-01-11', 70000.00),
('Maham Tariq', 'maham.tariq@gmail.com', 'Female', '1997-10-03', 82000.00),
('Fahad Abbas', 'fahad.abbas@gmail.com', 'Male', '1993-05-19', 110000.00),
('Laiba Javed', 'laiba.javed@gmail.com', 'Female', '2001-08-27', 52000.00),
('Omar Farooq', 'omar.farooq@gmail.com', 'Male', '1996-02-07', 88000.00),
('Iqra Siddiqui', 'iqra.siddiqui@gmail.com', 'Female', '1999-12-16', 67000.00),
('Saad Qureshi', 'saad.qureshi@gmail.com', 'Male', '1995-04-29', 105000.00),
('Maryam Aslam', 'maryam.aslam@gmail.com', 'Female', '2002-07-13', 49000.00),
('Taha Ahmed', 'taha.ahmed@gmail.com', 'Male', '1997-11-20', 76000.00),
('Noor Fatima', 'noor.fatima@gmail.com', 'Female', '2000-03-08', 93000.00);


SELECT * FROM employees;


-- Add column in Existing Table
ALTER TABLE employees
ADD COLUMN city VARCHAR(15);

-- Remove column in Existing Table
ALTER TABLE employees
DROP COLUMN city;

-- Modify Column in Existing Table
ALTER TABLE employees
MODIFY COLUMN name VARCHAR(20);

-- It Filters records of all males
SELECT * FROM employees
WHERE gender = 'Male';

-- It filters / shows records of all employees whose salaries is greater than or equal to 50k
SELECT * FROM employees
WHERE salary >= 50000.00;

-- It filters / shows records of all employees whose salaries lies between 60k to 80k
SELECT * FROM employees 
WHERE salary BETWEEN 60000.00 AND 80000.00;


-- It filters / shows of All employees whose name starts with A
SELECT * FROM employees
WHERE name LIKE 'A%';

-- It shows records of All employees whose name starts with S
SELECT * FROM employees
WHERE name LIKE 'S%';

-- It shows records of All employees whose name starts with A OR S
SELECT * FROM employees
WHERE name LIKE 'A%' OR name LIKE 'S%';

-- It shows records of salaries in descending order with employees names
SELECT name, salary FROM employees
ORDER BY salary DESC;

-- It shows records of Top 5 rows through previous query
SELECT name, salary FROM employees
ORDER BY salary DESC
LIMIT 5;


