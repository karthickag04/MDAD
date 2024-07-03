-- Create Customer Registration Table
create database customerDB;
use customerDB;

CREATE TABLE customer_registration (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(15),
    address VARCHAR(255)
);

-- Create Product Table
CREATE TABLE product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100),
    product_description TEXT,
    price DECIMAL(10, 2)
);

-- Create Order Table, with foreign key reference to Customer Registration Table
CREATE TABLE order_table (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customer_registration(customer_id)
);

-- Create Login Table, with foreign key reference to Customer Registration Table
CREATE TABLE login (
    login_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    username VARCHAR(50) UNIQUE,
    password VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES customer_registration(customer_id)
);

-- Create Preferred Product List Table, with foreign key references to Customer Registration and Product Tables
CREATE TABLE preferred_product_list (
    customer_id INT,
    product_id INT,
    PRIMARY KEY (customer_id, product_id),
    FOREIGN KEY (customer_id) REFERENCES customer_registration(customer_id),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

-- Insert data into Customer Registration Table
INSERT INTO customer_registration (first_name, last_name, email, phone_number, address) VALUES
('John', 'Doe', 'john1.doe@example.com', '123-456-7890', '123 Elm Street'),
('Jane', 'Smith', 'jane1.smith@example.com', '987-654-3210', '456 Oak Avenue');

-- Insert data into Product Table
INSERT INTO product (product_name, product_description, price) VALUES
('Laptop', 'A high-performance laptop', 1200.00),
('Smartphone', 'A latest model smartphone', 800.00),
('Headphones', 'Noise-cancelling headphones', 150.00);

-- Insert data into Order Table
INSERT INTO order_table (customer_id, order_date, total_amount) VALUES
(2, '2023-06-01', 1350.00),
(2, '2023-06-05', 800.00);

-- Insert data into Login Table
INSERT INTO login (customer_id, username, password) VALUES
(1, 'johndoe', 'password123'),
(2, 'janesmith', 'password456');

-- Insert data into Preferred Product List Table
INSERT INTO preferred_product_list (customer_id, product_id) VALUES
(1, 1),
(1, 3),
(2, 2);

-- Example of Inner Join between Customer Registration, Order, Preferred Product List, and Product Tables
SELECT 
    cr.first_name, 
    o.order_id, 
    o.order_date, 
    o.total_amount, 
    p.product_name, 
    p.price 
FROM  
    customer_registration cr
INNER JOIN  
    order_table o ON cr.customer_id = o.customer_id
INNER JOIN 
    preferred_product_list ppl ON cr.customer_id = ppl.customer_id 
INNER JOIN 
    product p ON ppl.product_id = p.product_id;

-- Example of Left Join between Customer Registration and Login Table
SELECT 
    cr.first_name, 
    cr.last_name, 
    l.username
FROM 
    customer_registration cr
LEFT JOIN 
    login l ON cr.customer_id = l.customer_id;

-- Example of Join between Preferred Product List and Product Table
SELECT 
    cr.first_name, 
    cr.last_name, 
    p.product_name
FROM 
    preferred_product_list ppl
INNER JOIN 
    customer_registration cr ON ppl.customer_id = cr.customer_id
INNER JOIN 
    product p ON ppl.product_id = p.product_id;

-- Example of Inner Join between Customer Registration, Order, Preferred Product List, Product, and Login Tables
SELECT 
    cr.first_name, 
    cr.last_name, 
    o.order_id, 
    o.order_date, 
    o.total_amount, 
    p.product_name, 
    p.price,
    l.username
FROM 
    customer_registration cr
INNER JOIN 
    order_table o ON cr.customer_id = o.customer_id
INNER JOIN 
    preferred_product_list ppl ON cr.customer_id = ppl.customer_id
INNER JOIN 
    product p ON ppl.product_id = p.product_id
LEFT JOIN 
    login l ON cr.customer_id = l.customer_id;
