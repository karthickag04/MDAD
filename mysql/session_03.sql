-- Create the studentdatabase if it doesn't exist
CREATE DATABASE IF NOT EXISTS studentdatabase;

-- Use the studentdatabase
USE studentdatabase;

-- Drop existing tables if they exist to start fresh
DROP TABLE IF EXISTS enrollments;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS courses;

-- Create the students table
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    gender VARCHAR(10)
);

-- Display the tables to check the creation of 'students'
SHOW TABLES;

-- Describe the structure of the 'students' table
DESCRIBE students;

-- Create the courses table
CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100),
    course_description TEXT
);

-- Display the tables to check the creation of 'courses'
SHOW TABLES;

-- Create the enrollments table
CREATE TABLE enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Display the tables to check the creation of 'enrollments'
SHOW TABLES;

-- Insert random data into the students table
INSERT INTO students (first_name, last_name, age, gender) VALUES
('John', 'Doe', 20, 'Male'),
('Jane', 'Smith', 22, 'Female'),
('Emily', 'Jones', 19, 'Female'),
('Michael', 'Brown', 21, 'Male'),
('Sarah', 'Davis', 23, 'Female');

-- Insert random data into the courses table
INSERT INTO courses (course_name, course_description) VALUES
('Math 101', 'Introduction to Mathematics'),
('English 101', 'Introduction to English Literature'),
('History 101', 'Introduction to World History'),
('Science 101', 'Introduction to Basic Sciences'),
('Art 101', 'Introduction to Art and Design');

-- Insert random data into the enrollments table
INSERT INTO enrollments (student_id, course_id, enrollment_date) VALUES
(1, 1, '2023-01-15'),
(2, 2, '2023-02-20'),
(3, 3, '2023-03-10'),
(4, 4, '2023-04-05'),
(5, 5, '2023-05-01'),
(1, 2, '2023-06-10'),
(2, 3, '2023-07-15'),
(3, 4, '2023-08-20'),
(4, 5, '2023-09-25'),
(5, 1, '2023-10-30');

-- Trying to insert data violating foreign key constraint
-- This will fail because student_id 6 and course_id 9 do not exist
INSERT INTO enrollments (student_id, course_id, enrollment_date) VALUES
(6, 9, '2023-01-15');
