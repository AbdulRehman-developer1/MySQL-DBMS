-- NoteBook 3 covers UPDATE, DELETE queries using WHERE condition in depth

CREATE DATABASE  company_db_o3;

USE company_db_o3;

CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    gender ENUM('Male', 'Female'),
    date_of_birth DATE,
    salary DECIMAL(10, 2)
);


INSERT INTO employees 
(name, email, gender, date_of_birth, salary)
VALUES
('Ali Khan', 'ali.khan@gmail.com', 'Male', '2000-05-12', 55000.00),
('Sara Ahmed', 'sara.ahmed@gmail.com', 'Female', '1998-08-21', 72000.00),
('Usman Malik', 'usman.malik@gmail.com', 'Male', '1995-03-15', 85000.00),
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

-- Update name, email of employee whose id is 1 and 2
UPDATE employees
SET name = 'Abdul Rehman', email = 'abdul.rehman06996@gmail.com'
WHERE id = 1;

UPDATE employees
SET name = 'Saba Hussain', email = 'sabafatima9@gmail.com'
WHERE id = 2;

-- Increase 10k salary of employees whose salary is less than 70k, and increase 20k salary of employees whose salary is greater than 70k
UPDATE employees
SET salary = CASE
    WHEN salary < 70000.00 THEN salary + 10000.00
    WHEN salary > 70000.00 THEN salary + 20000.00
    ELSE salary
END;

SELECT * FROM employees;

-- DELETE / removing data from a TABLE

-- Remove single row and multiple columns (Remove data whose id is 4)
DELETE FROM employees
WHERE id = 4;

-- Remove multiple rows and  multiple columns (Remove data of Male employees)
DELETE FROM employees
WHERE gender = 'Male';

-- Remove data whose salary is less than 60k
DELETE FROM employees
WHERE salary < 60000.00;


-- Delete table rows but keep its structure
-- DELETE FROM employees

-- Delete Enite TABLE
-- DROP TABLE employees;
