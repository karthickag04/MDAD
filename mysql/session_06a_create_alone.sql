
CREATE DATABASE foodApp;
USE foodApp;

show tables;



-- the table names:

-- 1. **Customers**
-- 2. **Partners**
-- 3. **Items**
-- 4. **Orders**
-- 5. **OrderItems**
-- 6. **OrderStatuses**
-- 7. **Payments**
-- 8. **DeliveryPersonnel**
-- 9. **Promotions**
-- 10. **CustomerRatings**
-- 11. **PartnerRatings**
-- 12. **PartnerReviews**
-- 13. **DeliveryPersonnelRatings**
-- 14. **DeliveryPersonnelReviews**
-- 15. **CustomerFavorites**
-- 16. **CustomerNotifications**
-- 17. **SubscriptionPlans**
-- 18. **CustomerSubscriptions**
-- 19. **PartnerPayouts**
-- 20. **MenuCategories**
-- 21. **ItemCategoryMapping**
-- 22. **OrderPromotions**
-- 23. **UserRoles**
-- 24. **RolePermissions**
-- 25. **UserRoleMapping**
-- 26. **ChatSupport**
-- 27. **PartnerLicenses**
-- 28. **EnvironmentalInitiatives**
-- 29. **SeasonalSpecials**
-- 30. **FraudReports**
-- 31. **LoyaltyRedemptions**
-- 32. **CustomerAddresses**
-- 33. **OrderStatusHistory**
-- 34. **Referrals**
-- 35. **FeedbackComplaints**
-- 36. **NotificationPreferences**
-- 37. **DriverPerformance**
-- 38. **DynamicPricing**
-- 39. **CorporateAccounts**
-- 40. **CorporateOrders**

CREATE DATABASE foodApp;
USE foodApp;

-- Customers Table
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15) UNIQUE NOT NULL,
    address TEXT NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    loyalty_points INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Partners (Restaurants) Table
CREATE TABLE Partners (
    partner_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15) UNIQUE NOT NULL,
    address TEXT NOT NULL,
    latitude DECIMAL(9,6),
    longitude DECIMAL(9,6),
    opening_time TIME,
    closing_time TIME,
    average_rating DECIMAL(3,2) DEFAULT 0.0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Items Table
CREATE TABLE Items (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    partner_id INT,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    available BOOLEAN DEFAULT TRUE,
    category VARCHAR(50),
    average_rating DECIMAL(3,2) DEFAULT 0.0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (partner_id) REFERENCES Partners(partner_id)
);

-- Inventory Management Table
CREATE TABLE Inventory (
    inventory_id INT AUTO_INCREMENT PRIMARY KEY,
    partner_id INT,
    item_id INT,
    stock_quantity INT NOT NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (partner_id) REFERENCES Partners(partner_id),
    FOREIGN KEY (item_id) REFERENCES Items(item_id)
);

-- Orders Table
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    partner_id INT,
    total_amount DECIMAL(10, 2) NOT NULL,
    status ENUM('Pending', 'Accepted', 'In Preparation', 'Out for Delivery', 'Delivered', 'Cancelled') NOT NULL DEFAULT 'Pending',
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    delivery_address TEXT NOT NULL,
    scheduled_delivery_time DATETIME,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (partner_id) REFERENCES Partners(partner_id)
);

-- Order Items Table
CREATE TABLE OrderItems (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    item_id INT,
    quantity INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    special_instructions TEXT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (item_id) REFERENCES Items(item_id)
);

drop table payments;
-- Payments Table
CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    payment_method ENUM('Credit Card', 'Debit Card', 'Net Banking', 'UPI', 'Cash on Delivery') NOT NULL,
    payment_status ENUM('Pending', 'Completed', 'Failed','Refunded') NOT NULL DEFAULT 'Pending',
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    amount DOUBLE NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

-- Ratings and Reviews Table
CREATE TABLE Ratings (
    rating_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    partner_id INT,
    item_id INT NULL,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    review TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (partner_id) REFERENCES Partners(partner_id),
    FOREIGN KEY (item_id) REFERENCES Items(item_id)
);

-- Delivery Personnel Table
CREATE TABLE DeliveryPersonnel (
    personnel_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15) UNIQUE NOT NULL,
    vehicle_number VARCHAR(20) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Order Delivery Details Table
CREATE TABLE OrderDelivery (
    delivery_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    personnel_id INT,
    delivery_status ENUM('Pending', 'Picked Up', 'On the Way', 'Delivered') NOT NULL DEFAULT 'Pending',
    assigned_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    delivered_at TIMESTAMP,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (personnel_id) REFERENCES DeliveryPersonnel(personnel_id)
);

-- Promotions Table
CREATE TABLE Promotions (
    promotion_id INT AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(50) UNIQUE NOT NULL,
    description TEXT,
    discount_percent DECIMAL(5, 2),
    discount_amount DECIMAL(10, 2),
    start_date DATE,
    end_date DATE,
    max_uses INT,
    min_order_amount DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Promotion Usage Table
CREATE TABLE PromotionUsage (
    usage_id INT AUTO_INCREMENT PRIMARY KEY,
    promotion_id INT,
    customer_id INT,
    order_id INT,
    used_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (promotion_id) REFERENCES Promotions(promotion_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

-- Customer Support Tickets Table
CREATE TABLE SupportTickets (
    ticket_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    subject VARCHAR(100),
    message TEXT,
    status ENUM('Open', 'In Progress', 'Closed') DEFAULT 'Open',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Customer Preferences Table
CREATE TABLE CustomerPreferences (
    preference_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    cuisine_preferences TEXT,
    dietary_restrictions TEXT,
    payment_preferences TEXT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

-- Geolocation Data Table
CREATE TABLE Geolocation (
    geolocation_id INT AUTO_INCREMENT PRIMARY KEY,
    entity_id INT,
    entity_type ENUM('Customer', 'Partner', 'DeliveryPersonnel'),
    latitude DECIMAL(9,6),
    longitude DECIMAL(9,6),
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

drop table admins;
-- Admin Management Table
CREATE TABLE Admins (
    admin_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    role ENUM('SuperAdmin', 'Manager', 'Support') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Audit Logs Table
CREATE TABLE AuditLogs (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    admin_id INT,
    action VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (admin_id) REFERENCES Admins(admin_id)
);

-- Existing Tables (Customers, Partners, Items, etc.) are retained from the previous schema...

SELECT * FROM CUSTOMERS;
-- Customer Addresses Table
CREATE TABLE CustomerAddresses (
    address_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    label VARCHAR(50) NOT NULL, -- e.g., Home, Work, etc.
    address TEXT NOT NULL,
    latitude DECIMAL(9,6),
    longitude DECIMAL(9,6),
    is_default BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

select * from orders;
-- Order Status History Table
CREATE TABLE OrderStatusHistory (
    status_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    status ENUM('Pending', 'Accepted', 'In Preparation', 'Out for Delivery', 'Delivered', 'Cancelled') NOT NULL,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

-- Referral System Table
CREATE TABLE Referrals (
    referral_id INT AUTO_INCREMENT PRIMARY KEY,
    referrer_id INT, -- Customer who referred
    referee_id INT,  -- Customer who joined
    referral_code VARCHAR(50) UNIQUE,
    reward_points INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (referrer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (referee_id) REFERENCES Customers(customer_id)
);

-- Feedback and Complaint System Table
CREATE TABLE FeedbackComplaints (
    feedback_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    partner_id INT NULL,
    order_id INT NULL,
    type ENUM('Feedback', 'Complaint') NOT NULL,
    description TEXT NOT NULL,
    status ENUM('Open', 'In Progress', 'Resolved', 'Closed') DEFAULT 'Open',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (partner_id) REFERENCES Partners(partner_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

-- Notification Preferences Table
CREATE TABLE NotificationPreferences (
    preference_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    notification_type ENUM('Email', 'SMS', 'Push Notification'),
    enabled BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

select * from orders;
select * from DeliveryPersonnel;
-- Driver Performance Table
CREATE TABLE DriverPerformance (
    performance_id INT AUTO_INCREMENT PRIMARY KEY,
    personnel_id INT,
    order_id INT,
    rating INT CHECK (rating BETWEEN 1 AND 5),
    feedback TEXT,
    on_time BOOLEAN,
    delivered_at TIMESTAMP,
    FOREIGN KEY (personnel_id) REFERENCES DeliveryPersonnel(personnel_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

select * from items;
select * from partners;
-- Dynamic Pricing Table
CREATE TABLE DynamicPricing (
    pricing_id INT AUTO_INCREMENT PRIMARY KEY,
    partner_id INT,
    item_id INT,
    base_price DECIMAL(10, 2) NOT NULL,
    surge_multiplier DECIMAL(3, 2) DEFAULT 1.0,
    effective_price DECIMAL(10, 2) GENERATED ALWAYS AS (base_price * surge_multiplier) STORED,
    last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (partner_id) REFERENCES Partners(partner_id),
    FOREIGN KEY (item_id) REFERENCES Items(item_id)
);


-- Corporate Accounts Table
CREATE TABLE CorporateAccounts (
    account_id INT AUTO_INCREMENT PRIMARY KEY,
    company_name VARCHAR(100) NOT NULL,
    company_email VARCHAR(100) UNIQUE NOT NULL,
    contact_person VARCHAR(100) NOT NULL,
    contact_phone VARCHAR(15) UNIQUE NOT NULL,
    billing_address TEXT NOT NULL,
    credit_limit DECIMAL(10, 2) DEFAULT 0.00,
    current_balance DECIMAL(10, 2) DEFAULT 0.00,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Orders for Corporate Accounts Table
CREATE TABLE CorporateOrders (
    corporate_order_id INT AUTO_INCREMENT PRIMARY KEY,
    account_id INT,
    order_id INT,
    billing_status ENUM('Pending', 'Billed', 'Paid') DEFAULT 'Pending',
    FOREIGN KEY (account_id) REFERENCES CorporateAccounts(account_id),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

-- Partner Payouts Table
CREATE TABLE PartnerPayouts (
    payout_id INT AUTO_INCREMENT PRIMARY KEY,
    partner_id INT,
    amount DECIMAL(10, 2) NOT NULL,
    payout_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (partner_id) REFERENCES Partners(partner_id)
);

select * from partners;



-- Menu Categories Table
CREATE TABLE MenuCategories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    partner_id INT,
    category_name VARCHAR(100) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (partner_id) REFERENCES Partners(partner_id)
);

-- Menu Items - Menu Categories Mapping Table
CREATE TABLE ItemCategoryMapping (
    mapping_id INT AUTO_INCREMENT PRIMARY KEY,
    item_id INT,
    category_id INT,
    FOREIGN KEY (item_id) REFERENCES Items(item_id),
    FOREIGN KEY (category_id) REFERENCES MenuCategories(category_id)
);

select * from items;
select * from menucategories;
-- Order Promotions Table
CREATE TABLE OrderPromotions (
    order_promotion_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    promotion_id INT,
    discount_amount DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (promotion_id) REFERENCES Promotions(promotion_id)
);

select * from promotions;


-- User Roles and Permissions Table
CREATE TABLE UserRoles (
    role_id INT AUTO_INCREMENT PRIMARY KEY,
    role_name VARCHAR(50) NOT NULL
);

CREATE TABLE RolePermissions (
    permission_id INT AUTO_INCREMENT PRIMARY KEY,
    role_id INT,
    permission_name VARCHAR(100) NOT NULL,
    FOREIGN KEY (role_id) REFERENCES UserRoles(role_id)
);

drop table userrolemapping;

-- Drop Users table if it exists
DROP TABLE IF EXISTS Users;

-- Create Users Table
CREATE TABLE Users (
	u_id int auto_increment primary key,
    user_id INT,
    user_type ENUM('Customer', 'Partner', 'Admin','DeliveryPersonnel') NOT NULL
);


drop table users;
-- Insert Customers into Users table
INSERT INTO Users (user_id, user_type)
SELECT customer_id, 'Customer' FROM Customers;

-- Insert Partners into Users table
INSERT INTO Users (user_id, user_type)
SELECT partner_id, 'Partner' FROM Partners;

-- Insert Partners into Users table
INSERT INTO Users (user_id, user_type)
SELECT personnel_id, 'DeliveryPersonnel' FROM DeliveryPersonnel;


-- Insert Admins into Users table
INSERT INTO Users (user_id, user_type)
SELECT admin_id, 'Admin' FROM Admins;



-- Drop UserRoleMapping table if it exists
DROP TABLE IF EXISTS UserRoleMapping;

-- Create UserRoleMapping Table
CREATE TABLE UserRoleMapping (
    user_role_mapping_id INT AUTO_INCREMENT PRIMARY KEY,
    u_id INT,
    role_id INT,
    user_type ENUM('Customer', 'Partner', 'Admin'),
    FOREIGN KEY (u_id) REFERENCES Users(u_id) ON DELETE CASCADE,
    FOREIGN KEY (role_id) REFERENCES UserRoles(role_id)
);

-- Insert Records into UserRoleMapping Table
INSERT INTO UserRoleMapping (u_id, role_id, user_type) VALUES
(1, 1, 'Customer'),
(2, 2, 'Customer'),
(3, 3, 'Customer'),
(4, 4, 'Customer'),
(5, 5, 'Partner'),
(6, 6, 'Partner'),
(7, 7, 'Partner'),
(8, 8, 'Partner'),
(21, 9, 'Admin'),
(22, 10, 'Admin');



-- Drop ChatSupport table if it exists
DROP TABLE IF EXISTS ChatSupport;

drop table chatsupport;
-- Create ChatSupport Table
CREATE TABLE ChatSupport (
    chat_id INT AUTO_INCREMENT PRIMARY KEY,
    u_id INT,
    user_type ENUM('Customer', 'Partner', 'Admin'),
    message TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (u_id) REFERENCES Users(u_id) ON DELETE CASCADE
);

-- Insert sample records into ChatSupport Table
INSERT INTO ChatSupport (u_id, user_type, message) VALUES
(1, 'Customer', 'How can I reset my password?'),
(2, 'Customer', 'What is the delivery time?'),
(3, 'Customer', 'I need to change my address.'),
(4, 'Customer', 'Where is my order?'),
(5, 'Partner', 'How do I update my menu?'),
(6, 'Partner', 'Can I change my delivery hours?'),
(7, 'Partner', 'How do I get more orders?'),
(8, 'Partner', 'What is the commission rate?'),
(21, 'Admin', 'Please approve the new user registrations.'),
(22, 'Admin', 'There is an issue with the payment gateway.');



select * from customers;



-- Partner Licenses and Certifications Table
CREATE TABLE PartnerLicenses (
    license_id INT AUTO_INCREMENT PRIMARY KEY,
    partner_id INT,
    license_type VARCHAR(100) NOT NULL,
    license_number VARCHAR(100),
    issue_date DATE,
    expiry_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (partner_id) REFERENCES Partners(partner_id)
);

-- Insert Records into PartnerLicenses Table
INSERT INTO PartnerLicenses (partner_id, license_type, license_number, issue_date, expiry_date) VALUES
(1, 'Food Safety', 'FS123456', '2022-01-01', '2024-01-01'),
(2, 'Health Permit', 'HP654321', '2022-02-01', '2024-02-01'),
(3, 'Alcohol License', 'AL789012', '2022-03-01', '2024-03-01'),
(4, 'Business License', 'BL345678', '2022-04-01', '2024-04-01'),
(5, 'Fire Safety Certificate', 'FSC567890', '2022-05-01', '2024-05-01'),
(6, 'Environmental Clearance', 'EC123789', '2022-06-01', '2024-06-01'),
(7, 'Hygiene Certificate', 'HC234890', '2022-07-01', '2024-07-01'),
(8, 'Trade License', 'TL345901', '2022-08-01', '2024-08-01'),
(9, 'Sanitation Certificate', 'SC456012', '2022-09-01', '2024-09-01'),
(10, 'Employee Training Certificate', 'ETC567123', '2022-10-01', '2024-10-01');

-- Environmental and Sustainability Initiatives Table
CREATE TABLE EnvironmentalInitiatives (
    initiative_id INT AUTO_INCREMENT PRIMARY KEY,
    partner_id INT,
    description TEXT NOT NULL,
    impact_score DECIMAL(5, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (partner_id) REFERENCES Partners(partner_id)
);

-- Insert Records into EnvironmentalInitiatives Table
INSERT INTO EnvironmentalInitiatives (partner_id, description, impact_score) VALUES
(1, 'Installed solar panels to reduce carbon footprint.', 8.75),
(2, 'Implemented a recycling program for all waste materials.', 7.50),
(3, 'Switched to biodegradable packaging for all products.', 9.20),
(4, 'Initiated a tree planting campaign in local communities.', 8.00),
(5, 'Reduced water usage by 30% through efficient practices.', 7.80),
(6, 'Partnered with local farms for organic produce.', 8.90),
(7, 'Started a bike-to-work program for employees.', 7.25),
(8, 'Reduced energy consumption by upgrading to LED lighting.', 8.40),
(9, 'Eliminated single-use plastics from operations.', 9.00),
(10, 'Conducted environmental awareness workshops for staff.', 8.10);


-- Seasonal Specials Table
CREATE TABLE SeasonalSpecials (
    special_id INT AUTO_INCREMENT PRIMARY KEY,
    partner_id INT,
    item_id INT,
    special_name VARCHAR(100) NOT NULL,
    description TEXT,
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (partner_id) REFERENCES Partners(partner_id),
    FOREIGN KEY (item_id) REFERENCES Items(item_id)
);


-- Insert Records into SeasonalSpecials Table
INSERT INTO SeasonalSpecials (partner_id, item_id, special_name, description, start_date, end_date) VALUES
(1, 1, 'Summer Splash', 'Refreshing summer special with tropical flavors.', '2023-06-01', '2023-08-31'),
(2, 2, 'Winter Wonderland', 'Cozy winter special with warm spices.', '2023-12-01', '2023-12-31'),
(3, 3, 'Spring Delight', 'Bright and fresh spring special.', '2023-03-01', '2023-05-31'),
(4, 4, 'Autumn Harvest', 'Rich and hearty fall special.', '2023-09-01', '2023-11-30'),
(5, 5, 'Christmas Cheer', 'Festive Christmas special with holiday flavors.', '2023-12-15', '2023-12-25'),
(6, 6, 'New Year Celebration', 'Sparkling New Year special.', '2023-12-31', '2024-01-01'),
(7, 7, 'Halloween Treat', 'Spooky and sweet Halloween special.', '2023-10-25', '2023-10-31'),
(8, 8, 'Easter Eggstravaganza', 'Colorful and fun Easter special.', '2023-04-07', '2023-04-09'),
(9, 9, 'Thanksgiving Feast', 'Delicious Thanksgiving special with all the trimmings.', '2023-11-20', '2023-11-27'),
(10, 10, 'Valentine\'s Delight', 'Romantic Valentine\'s special with sweet treats.', '2024-02-10', '2024-02-14');


-- Fraud Detection and Prevention Table
CREATE TABLE FraudReports (
    report_id INT AUTO_INCREMENT PRIMARY KEY,
    u_id INT,
    user_type ENUM('Customer', 'Partner', 'Admin', 'DeliveryPersonnel'),
    report_type ENUM('Order', 'Payment', 'Account'),
    description TEXT,
    status ENUM('Investigating', 'Confirmed', 'Dismissed') DEFAULT 'Investigating',
    reported_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (u_id) REFERENCES Users(u_id) ON DELETE CASCADE
);

-- Insert Records into FraudReports Table
INSERT INTO FraudReports (u_id, user_type, report_type, description, status) VALUES
(1, 'Customer', 'Order', 'Suspicious order activity detected.', 'Investigating'),
(2, 'Partner', 'Payment', 'Unusual payment patterns observed.', 'Investigating'),
(3, 'Admin', 'Account', 'Unauthorized account access attempt.', 'Confirmed'),
(4, 'DeliveryPersonnel', 'Order', 'Report of fraudulent delivery.', 'Investigating'),
(5, 'Customer', 'Payment', 'Payment discrepancy reported.', 'Dismissed'),
(6, 'Partner', 'Account', 'Account information tampering detected.', 'Confirmed'),
(7, 'Admin', 'Order', 'Suspected order fraud.', 'Investigating'),
(8, 'DeliveryPersonnel', 'Payment', 'Incorrect payment reported.', 'Dismissed'),
(9, 'Customer', 'Account', 'Suspicious login attempt.', 'Investigating'),
(10, 'Partner', 'Order', 'Fraudulent order processing issue.', 'Confirmed');

-- Loyalty Program Redemptions Table
CREATE TABLE LoyaltyRedemptions (
    redemption_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    points_redeemed INT,
    redemption_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);


-- Insert Records into LoyaltyRedemptions Table
INSERT INTO LoyaltyRedemptions (customer_id, points_redeemed, redemption_date) VALUES
(1, 100, '2024-01-15 10:30:00'),
(2, 150, '2024-01-16 11:45:00'),
(3, 200, '2024-01-17 09:00:00'),
(4, 250, '2024-01-18 14:20:00'),
(5, 300, '2024-01-19 16:35:00'),
(6, 350, '2024-01-20 12:00:00'),
(7, 400, '2024-01-21 13:25:00'),
(8, 450, '2024-01-22 15:40:00'),
(9, 500, '2024-01-23 10:55:00'),
(10, 550, '2024-01-24 11:30:00');

