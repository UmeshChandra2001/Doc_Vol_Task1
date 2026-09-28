-- Create Database
CREATE DATABASE IF NOT EXISTS TFI_Heroes
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE TFI_Heroes;

-- Drop table if exists (MySQL syntax)
DROP TABLE IF EXISTS Heroes;

-- Create Heroes Table
CREATE TABLE Heroes (
    HeroID      INT AUTO_INCREMENT PRIMARY KEY,
    HeroName    VARCHAR(100) NOT NULL,
    DateOfBirth DATE NOT NULL,
    DebutYear   INT NOT NULL
) ENGINE=InnoDB;

-- Insert Sample Data
INSERT INTO Heroes (HeroName, DateOfBirth, DebutYear)
VALUES
('Prabhas',           '1979-10-23', 2002),
('Mahesh Babu',       '1975-08-09', 1979),
('Pawan Kalyan',      '1971-09-02', 1996),
('Allu Arjun',        '1982-04-08', 2003),
('NTR Jr',            '1983-05-20', 1997),
('Ram Charan',        '1985-03-27', 2007),
('Vijay Deverakonda', '1989-05-09', 2011),
('Rana Daggubati',    '1984-12-14', 2010),
('Nani',              '1984-02-24', 2008),
('Sai Dharam Tej',    '1986-10-15', 2014),
('Nithiin',           '1983-03-30', 2002),
('Sharwanand',        '1984-03-06', 2004),
('Naga Chaitanya',    '1986-11-23', 2009),
('Akhil Akkineni',    '1994-04-08', 2015),
('Varun Tej',         '1990-01-19', 2014);

-- View: Age and Experience calculated dynamically
CREATE OR REPLACE VIEW vw_HeroAgeExperience AS
SELECT
    HeroID,
    HeroName,
    DateOfBirth,
    DebutYear,
    TIMESTAMPDIFF(YEAR, DateOfBirth, CURDATE()) AS Age,
    (YEAR(CURDATE()) - DebutYear) AS ExperienceYears
FROM Heroes;

