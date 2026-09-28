
-- Create Database
CREATE DATABASE devops_db;

USE devops_db;

-- Create Employees Table
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    role VARCHAR(100),
    experience INT,
    salary DECIMAL(10,2),
    location VARCHAR(100),
    joining_date DATE
);

-- Insert Sample Data
INSERT INTO employees
(name, role, experience, salary, location, joining_date)
VALUES
('Rahul', 'DevOps Engineer', 3, 65000.00, 'Hyderabad', '2022-05-10'),
('Priya', 'Cloud Engineer', 5, 85000.00, 'Bangalore', '2020-08-15'),
('Arjun', 'System Administrator', 4, 70000.00, 'Chennai', '2021-03-20'),
('Sneha', 'SRE Engineer', 6, 95000.00, 'Pune', '2019-11-12'),
('Kiran', 'Docker Engineer', 2, 55000.00, 'Mumbai', '2023-01-05'),
('Anil', 'Linux Administrator', 7, 90000.00, 'Delhi', '2018-06-25'),
('Meena', 'Kubernetes Engineer', 4, 88000.00, 'Hyderabad', '2021-09-18'),
('Vikram', 'Database Administrator', 8, 105000.00, 'Bangalore', '2017-04-10'),
('Umesh', 'DevOps Engineer', 5, 92000.00, 'Hyderabad', '2020-12-01'),
('Divya', 'AWS Engineer', 3, 75000.00, 'Pune', '2022-07-14'),
('Rohit', 'CI/CD Engineer', 6, 98000.00, 'Mumbai', '2019-02-11'),
('Pooja', 'Security Engineer', 4, 82000.00, 'Chennai', '2021-10-22'),
('Suresh', 'Cloud Architect', 10, 150000.00, 'Bangalore', '2016-05-16'),
('Nisha', 'Python Developer', 3, 72000.00, 'Hyderabad', '2022-09-09'),
('Ajay', 'Network Engineer', 7, 89000.00, 'Delhi', '2018-08-30');

-- Create Projects Table
CREATE TABLE projects (
    project_id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(150) NOT NULL,
    technology VARCHAR(100),
    status VARCHAR(50),
    employee_id INT,
    FOREIGN KEY (employee_id) REFERENCES employees(id)
);

-- Insert Project Data
INSERT INTO projects
(project_name, technology, status, employee_id)
VALUES
('Cloud Migration', 'AWS', 'Completed', 1),
('Containerization', 'Docker', 'In Progress', 5),
('Kubernetes Deployment', 'Kubernetes', 'In Progress', 7),
('CI/CD Automation', 'Jenkins', 'Completed', 11),
('Database Migration', 'MySQL', 'In Progress', 8),
('Infrastructure Automation', 'Terraform', 'Completed', 2),
('Monitoring Setup', 'Prometheus', 'In Progress', 4),
('Security Implementation', 'Linux', 'Completed', 12);

-- Create Departments Table
CREATE TABLE departments (
    department_id INT AUTO_INCREMENT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    manager VARCHAR(100),
    location VARCHAR(100)
);

-- Insert Department Data
INSERT INTO departments
(department_name, manager, location)
VALUES
('DevOps', 'Rahul', 'Hyderabad'),
('Cloud Engineering', 'Priya', 'Bangalore'),
('Infrastructure', 'Arjun', 'Chennai'),
('Site Reliability', 'Sneha', 'Pune'),
('Database Administration', 'Vikram', 'Bangalore');

