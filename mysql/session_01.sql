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


-- Creating a database:
create database studentDatabase;

-- Showing available databases:
show databases;

-- Selecting a database to work further (e.g., creating tables, updating tables):
use studentDatabase;

-- Showing the available tables in the selected database:
show tables;


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
-- CREATE TABLE table_name ( column1 datatype, column2 datatype, column3 datatype, ... );

-- The following constraints are commonly used in SQL:

-- NOT NULL - Ensures that a column cannot have a NULL value
-- UNIQUE - Ensures that all values in a column are different
-- PRIMARY KEY - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
-- FOREIGN KEY - Prevents actions that would destroy links between tables
-- CHECK - Ensures that the values in a column satisfy a specific condition
-- DEFAULT - Sets a default value for a column if no value is specified
-- CREATE INDEX - Used to create and retrieve data from the database very quickly

-- Example of table creation:
CREATE TABLE users (
    user_id INT PRIMARY KEY AUTO_INCREMENT, -- Automatically increments the primary key
    username VARCHAR(50) UNIQUE NOT NULL, -- Ensures the username is unique and not null
    password VARCHAR(50) NOT NULL -- Ensures the password is not null
);

-- Inserting Data: (syntax)
-- INSERT INTO table_name (column1, column2, column3, ...) VALUES (value1, value2, value3, ...);

-- Example of inserting values into a table:
INSERT INTO users (user_id, username, password)
VALUES (1, 'john_doe', 'securepassword');

-- Inserting additional records(Multiple Records):
INSERT INTO users (user_id, username, password) VALUES 
(2, 'jane_doe', 'anotherpassword'),
(3, 'alice_smith', 'alicepass123'),
(4, 'bob_jones', 'bobsecurepass'),
(5, 'charlie_brown', 'charlie123'),
(6, 'diana_prince', 'wonderwoman'),
(7, 'evan_wright', 'evanpass456');

-- Another example of inserting values into a table without specifying column names (must provide values for all columns):
INSERT INTO users VALUES (2, 'jane_doe', 'anotherpassword');


-- Selecting Data: (syntax)
-- SELECT column1, column2, ... FROM table_name WHERE condition;

-- Example for selecting all data from a particular table:
SELECT * FROM users;

-- Example for selecting data from a particular table based on conditions:
SELECT username, created_at FROM users WHERE user_id = 1;


-- Additional table creation example with more constraints:
CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE NOT NULL,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    CHECK (order_date >= '2020-01-01'), -- Ensures the order date is after 2020-01-01
    status VARCHAR(20) DEFAULT 'pending' -- Sets a default value for the status column
);

-- Example of inserting data with default values and constraints:
INSERT INTO orders (order_date, customer_id)
VALUES ('2023-06-18', 1);
