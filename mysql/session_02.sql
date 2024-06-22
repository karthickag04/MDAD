-- Describing the structure of a table:
-- DESCRIBE table_name;

-- Example:
DESCRIBE users;

-- Selecting specific columns from a table:
-- SELECT column1, column2, ...
-- FROM table_name;

-- Example:
SELECT user_id, username
FROM users;


-- Selecting Data based on conditions:
-- SELECT column1, column2, ...
-- FROM table_name
-- WHERE condition;

-- Example:
SELECT username, created_at
FROM users
WHERE user_id = 1;

-- Selecting all data from a table:
SELECT * FROM users;

-- Updating Data:
-- UPDATE table_name
-- SET column1 = value1, column2 = value2, ...
-- WHERE condition;

-- Example:
UPDATE users
SET password = 'newpassword'
WHERE user_id = 1;

-- Deleting Data:
-- DELETE FROM table_name
-- WHERE condition;

-- Example:
DELETE FROM users
WHERE user_id = 1;

-- Dropping a table:
-- DROP TABLE table_name;

-- Example:
DROP TABLE users;

-- 4. SQL Operators

-- Arithmetic Operators:
-- +: Addition
-- -: Subtraction
-- *: Multiplication
-- /: Division
-- %: Modulus

-- Example:
SELECT 5 + 2;  -- Output: 7
SELECT 10 - 3; -- Output: 7
SELECT 4 * 3;  -- Output: 12
SELECT 8 / 2;  -- Output: 4
SELECT 10 % 3; -- Output: 1

-- Comparison Operators:
-- =: Equal to
-- <> or !=: Not equal to
-- >: Greater than
-- <: Less than
-- >=: Greater than or equal to
-- <=: Less than or equal to

-- Example:
SELECT *
FROM users
WHERE user_id = 1;

-- Logical Operators:
-- AND: Combines two conditions and returns true if both conditions are true.
-- OR: Combines two conditions and returns true if either condition is true.
-- NOT: Negates a condition.

-- Example:
SELECT *
FROM users
WHERE username = 'john_doe' AND password = 'securepassword';

-- Other Operators:
-- BETWEEN: Selects values within a range.
-- IN: Selects values that match any value in a list.
-- LIKE: Selects values that match a pattern.
-- IS NULL: Checks for null values.

-- Example:
SELECT *
FROM users
WHERE created_at BETWEEN '2023-01-01' AND '2023-12-31';

SELECT *
FROM users
WHERE username IN ('john_doe', 'jane_doe');

SELECT *
FROM users
WHERE username LIKE 'john%';

SELECT *
FROM users
WHERE password IS NULL;

-- 5. SQL Aggregate Functions

-- Aggregate functions perform a calculation on a set of values and return a single value.
-- Common aggregate functions include:
-- COUNT: Returns the number of rows that match a specified criteria.
-- SUM: Returns the total sum of a numeric column.
-- AVG: Returns the average value of a numeric column.
-- MAX: Returns the largest value of a column.
-- MIN: Returns the smallest value of a column.

-- Example:
SELECT COUNT(*)
FROM users;

SELECT SUM(age)
FROM students;

SELECT AVG(age)
FROM students;

SELECT MAX(age)
FROM students;

SELECT MIN(age)
FROM students;

-- 6. SQL Group By and Having Clauses

-- GROUP BY: Groups rows that have the same values into summary rows.
-- HAVING: Filters records that work on summarized GROUP BY results.

-- Example:
SELECT age, COUNT(*)
FROM students
GROUP BY age;

-- Example with HAVING:
SELECT age, COUNT(*)
FROM students
GROUP BY age
HAVING COUNT(*) > 1;

-- 7. SQL Order By Clause

-- ORDER BY: Sorts the result set in either ascending or descending order.

-- Example:
SELECT * 
FROM users
ORDER BY username ASC;

SELECT * 
FROM users
ORDER BY username DESC;

-- 8. SQL Aliases

-- SQL Aliases are used to give a table, or a column in a table, a temporary name.
-- Aliases are often used to make column names more readable.

-- Example:
SELECT u.username AS user_name, u.password AS user_password
FROM users u;

-- 9. SQL Case Statement

-- The CASE statement goes through conditions and returns a value when the first condition is met.

-- Example:
SELECT username,
       CASE 
           WHEN created_at < '2023-01-01' THEN 'Old User'
           ELSE 'New User'
       END AS user_status
FROM users;
