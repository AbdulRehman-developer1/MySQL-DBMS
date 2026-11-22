-- NoteBook 5 covers Transactions, COMMIT, ROLLBACK 

CREATE DATABASE company_db_05;

USE company_db_05;

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
('Saba Hussain', 'sabafatima9@gmail.com', 'Female', '2005-04-09', 100000.00),
('Abdul Rehman', 'abdulrehman01@gmail.com', 'Male', '2005-12-01', 150000.00),
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

-- ROLLBACK
START TRANSACTION;
UPDATE employees
SET salary = salary + 10000.00
WHERE email = 'sabafatima9@gmail.com';

ROLLBACK;

-- COMMIT
START TRANSACTION;
UPDATE employees
SET salary = salary + 30000.00
WHERE id IN (1, 2);

COMMIT;
