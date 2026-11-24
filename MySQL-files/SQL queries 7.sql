-- NoteBook 7 Covers SQL joins

CREATE DATABASE company_db_07;

USE company_db_07;

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
('Noor Fatima', 'noor.fatima@gmail.com', 'Female', '2000-03-08', 93000.00),
('Laraib Javed', 'laraib.javed@gmail.com', 'Female', '2001-08-27', 52000.00);

SELECT * FROM employees;

CREATE TABLE addresses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    employees_id INT,
    city VARCHAR(100),
    state VARCHAR(100),
    pincode INT,
    street VARCHAR(250),
    CONSTRAINT fk_employees_adresses FOREIGN KEY (employees_id) REFERENCES employees(id) ON DELETE CASCADE
);

INSERT INTO addresses
(employees_id, city, state, pincode, street)
VALUES
(1, 'Rawalpindi', 'Punjab', 46000, 'Satellite Town, Street 5'),
(2, 'Islamabad', 'ICT', 44000, 'G-11 Markaz, Street 12'),
(3, 'Lahore', 'Punjab', 54000, 'Johar Town, Block A'),
(4, 'Karachi', 'Sindh', 75300, 'Gulshan-e-Iqbal, Block 7'),
(5, 'Peshawar', 'KPK', 25000, 'University Road'),
(6, 'Multan', 'Punjab', 60000, 'Bosan Road'),
(7, 'Faisalabad', 'Punjab', 38000, 'D Ground, Street 3'),
(8, 'Rawalpindi', 'Punjab', 46000, 'Chaklala Scheme 3'),
(9, 'Islamabad', 'ICT', 44000, 'F-10 Markaz'),
(10, 'Lahore', 'Punjab', 54000, 'Model Town, Block C'),
(11, 'Sialkot', 'Punjab', 51310, 'Paris Road'),
(12, 'Gujranwala', 'Punjab', 52250, 'Satellite Town'),
(13, 'Karachi', 'Sindh', 74000, 'Clifton, Block 2'),
(14, 'Bahawalpur', 'Punjab', 63100, 'Model Town A'),
(15, 'Abbottabad', 'KPK', 22010, 'Mandian Road'),
(16, 'Quetta', 'Balochistan', 87300, 'Jinnah Road'),
(17, 'Rawalpindi', 'Punjab', 46000, 'Bahria Town, Phase 4'),
(18, 'Lahore', 'Punjab', 54000, 'DHA Phase 5'),
(19, 'Islamabad', 'ICT', 44000, 'I-8 Markaz'),
(20, 'Murree', 'Punjab', 47150, 'Mall Road');

SELECT * FROM addresses;

-- Inner Join

SELECT
    employees.id,
    employees.name,
    employees.email,
    addresses.city,
    addresses.state,
    addresses.pincode,
    addresses.street
FROM employees
INNER JOIN addresses
ON employees.id = addresses.employees_id;

SELECT employees.name, employees.email, addresses.city, addresses.state
FROM employees
INNER JOIN addresses
ON employees.id = addresses.employees_id;

-- left Join
SELECT employees.name, employees.email, addresses.city, addresses.state
FROM employees
LEFT JOIN addresses
ON employees.id = addresses.employees_id;

-- LEFT JOIN with COUNT and GROUP BY
SELECT
    employees.id,
    employees.name,
    COUNT(addresses.id) AS total_addresses
FROM employees
LEFT JOIN addresses
ON employees.id = addresses.employees_id
GROUP BY employees.id, employees.name;

-- UNION

CREATE TABLE admin_users (
 id INT PRIMARY KEY,
 name VARCHAR(100),
 email VARCHAR(100),
 gender ENUM('Male', 'Female', 'Other'),
 date_of_birth DATE,
 salary INT
);

INSERT INTO admin_users
(id, name, email, gender, date_of_birth, salary)
VALUES
(1, 'Abdul Rehman', 'ar@example.com',
'Male', '2005-12-01', 60000),
(2, 'Hafsa', 'hafsa@example.com',
'Female', '2008-06-20', 58000),
(3, 'Aqeel', 'aqeel@example.com',
'Male', '2004-11-05', 54000),
(4, 'Fatima Begum', 'fatima@example.com',
'Female', '1990-06-30', 62000);


SELECT name FROM employees
UNION
SELECT name FROM admin_users;

-- UNION ALL does not allow repition
SELECT name FROM employees
UNION ALL
SELECT name FROM admin_users;


SELECT name, email FROM employees
UNION
SELECT name, email FROM admin_users;