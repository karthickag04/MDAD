-- 1. SQL RDBMS Concepts

-- Relational Database Management System (RDBMS):
-- An RDBMS is a type of database management system that stores data in tables, which are organized into rows and columns.
-- Examples of RDBMS include MySQL, PostgreSQL, Oracle, and SQL Server.
-- The key feature of an RDBMS is the relational model, where data is structured in relations (tables).

-- Key Concepts in RDBMS:
-- Tables: Collections of related data entries with rows and columns.
-- Rows: Individual records in a table.
-- Columns: Attributes or fields in a table.
-- Primary Key: A unique identifier for each row in a table.
-- Foreign Key: A field in one table that uniquely identifies a row in another table, establishing a relationship between the tables.
-- Indexes: Used to speed up query processing.


-- use the below comment to create database
create database studentDatabase;

-- use the below comment to see the available databases
show databases;

-- use the below statement to select the database to work further like creating table or update tables
use studentDatabase;

-- use the below comment to see the available tables in the selected databases
show databases;


-- 2. SQL Data Types

-- Numeric Data Types:
-- INT: Integer values (e.g., 123, -456).
CREATE TABLE students (
    student_id INT,
    age INT
);

-- FLOAT: Floating-point numbers (e.g., 123.45, -456.78).
CREATE TABLE measurements (
    measurement_id INT,
    value FLOAT
);

-- Character and String Data Types:
-- CHAR(size): Fixed-length character string (e.g., CHAR(10)).
CREATE TABLE employees (
    emp_id INT,
    emp_code CHAR(5)
);

-- VARCHAR(size): Variable-length character string (e.g., VARCHAR(50)).
CREATE TABLE customers (
    customer_id INT,
    name VARCHAR(50)
);

-- Date and Time Data Types:
-- DATE: Date value (e.g., '2023-06-18').
CREATE TABLE events (
    event_id INT,
    event_date DATE
);

-- TIMESTAMP: Date and time value (e.g., '2023-06-18 10:30:00').
CREATE TABLE logs (
    log_id INT,
    log_timestamp TIMESTAMP
);

-- Boolean Data Type:
-- BOOLEAN: True or false value.
CREATE TABLE settings (
    setting_id INT,
    is_enabled BOOLEAN
);

-- 3. SQL Syntax

-- Creating a Table: (syntax)
-- CREATE TABLE table_name ( column1 datatype,  column2 datatype, column3 datatype, ... );

-- Example of table creation:
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50) UNIQUE,
    password VARCHAR(50) NOT NULL
);

-- Inserting Data: (syntax)
-- INSERT INTO table_name (column1, column2, column3, ...) VALUES (value1, value2, value3, ...);

-- Example of inserting values to table:
INSERT INTO users (user_id, username, password)
VALUES (1, 'john_doe', 'securepassword');

-- Selecting Data: (syntax)
-- SELECT column1, column2, ... FROM table_name WHERE condition;

-- Example for selecting all datas from particular table:
select * from users;

-- Example for selecting datas from particular table based on conditions:
SELECT username, created_at FROM users WHERE user_id = 1;

