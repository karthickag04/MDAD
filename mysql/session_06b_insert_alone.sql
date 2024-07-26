INSERT INTO Customers (name, email, phone, address, password_hash, loyalty_points) VALUES
('Alice Johnson', 'alice.johnson@example.com', '555-0101', '123 Elm Street, Springfield', 'hashed_password1', 150),
('Bob Smith', 'bob.smith@example.com', '555-0102', '456 Oak Avenue, Springfield', 'hashed_password2', 200),
('Charlie Brown', 'charlie.brown@example.com', '555-0103', '789 Pine Road, Springfield', 'hashed_password3', 250),
('David Wilson', 'david.wilson@example.com', '555-0104', '101 Maple Street, Springfield', 'hashed_password4', 100),
('Eva Davis', 'eva.davis@example.com', '555-0105', '202 Birch Lane, Springfield', 'hashed_password5', 300),
('Fiona Martinez', 'fiona.martinez@example.com', '555-0106', '303 Cedar Drive, Springfield', 'hashed_password6', 180),
('George Lee', 'george.lee@example.com', '555-0107', '404 Spruce Avenue, Springfield', 'hashed_password7', 120),
('Hannah Clark', 'hannah.clark@example.com', '555-0108', '505 Fir Street, Springfield', 'hashed_password8', 220),
('Ivy Adams', 'ivy.adams@example.com', '555-0109', '606 Redwood Road, Springfield', 'hashed_password9', 170),
('Jack Taylor', 'jack.taylor@example.com', '555-0110', '707 Willow Way, Springfield', 'hashed_password10', 90);



INSERT INTO Partners (name, email, phone, address, latitude, longitude, opening_time, closing_time, average_rating) VALUES
('The Gourmet Bistro', 'contact@gourmetbistro.com', '555-0201', '123 Culinary Street, Springfield', 40.712776, -74.005974, '08:00:00', '22:00:00', 4.5),
('Spicy Delights', 'info@spicydelights.com', '555-0202', '456 Flavor Road, Springfield', 34.052235, -118.243683, '10:00:00', '23:00:00', 4.0),
('Sushi Haven', 'hello@sushihaven.com', '555-0203', '789 Sushi Avenue, Springfield', 37.774929, -122.419418, '11:00:00', '21:00:00', 4.7),
('The Vegan Table', 'contact@vegantable.com', '555-0204', '101 Green Street, Springfield', 47.606209, -122.332069, '09:00:00', '20:00:00', 4.2),
('Burger House', 'info@burgerhouse.com', '555-0205', '202 Burger Lane, Springfield', 36.169941, -115.139832, '11:00:00', '22:00:00', 4.3),
('Pasta Palace', 'support@pastapalace.com', '555-0206', '303 Pasta Street, Springfield', 51.507351, -0.127758, '12:00:00', '23:00:00', 4.1),
('Seafood Central', 'contact@seafoodcentral.com', '555-0207', '404 Ocean Drive, Springfield', 52.367984, 4.903561, '10:00:00', '22:00:00', 4.6),
('Taco Town', 'info@tacotown.com', '555-0208', '505 Taco Boulevard, Springfield', 35.689487, 139.691711, '11:00:00', '21:00:00', 4.4),
('The Cake Shop', 'hello@cakeshop.com', '555-0209', '606 Dessert Street, Springfield', 40.730610, -73.935242, '09:00:00', '20:00:00', 4.8),
('Coffee Corner', 'contact@coffeecorner.com', '555-0210', '707 Coffee Lane, Springfield', 48.856613, 2.352222, '08:00:00', '18:00:00', 4.0);


INSERT INTO Items (partner_id, name, description, price, available, category, average_rating) VALUES
(1, 'Gourmet Burger', 'A juicy beef burger with gourmet toppings.', 12.99, TRUE, 'Burgers', 4.5),
(1, 'Truffle Fries', 'Fries with truffle oil and Parmesan cheese.', 7.99, TRUE, 'Sides', 4.7),
(2, 'Spicy Tacos', 'Tacos with a spicy kick.', 9.99, TRUE, 'Tacos', 4.2),
(2, 'Guacamole', 'Fresh guacamole with tortilla chips.', 6.99, TRUE, 'Sides', 4.3),
(3, 'California Roll', 'Sushi roll with avocado, cucumber, and crab.', 13.99, TRUE, 'Sushi', 4.8),
(3, 'Miso Soup', 'Traditional miso soup with tofu and seaweed.', 4.99, TRUE, 'Soup', 4.5),
(4, 'Vegan Burger', 'Plant-based burger with fresh vegetables.', 11.99, TRUE, 'Burgers', 4.4),
(4, 'Quinoa Salad', 'Quinoa salad with mixed greens and vegetables.', 8.99, TRUE, 'Salads', 4.6),
(5, 'Cheeseburger', 'Classic cheeseburger with lettuce and tomato.', 10.99, TRUE, 'Burgers', 4.3),
(5, 'Onion Rings', 'Crispy onion rings with dipping sauce.', 5.99, TRUE, 'Sides', 4.4);


INSERT INTO Inventory (partner_id, item_id, stock_quantity) VALUES
(1, 1, 50),
(1, 2, 30),
(2, 3, 40),
(2, 4, 20),
(3, 5, 25),
(3, 6, 35),
(4, 7, 15),
(4, 8, 40),
(5, 9, 60),
(5, 10, 45);

INSERT INTO Orders (customer_id, partner_id, total_amount, status, delivery_address, scheduled_delivery_time) VALUES
(1, 1, 20.98, 'Delivered', '123 Elm Street, Springfield', '2024-07-26 12:00:00'),
(2, 2, 16.98, 'Pending', '456 Oak Avenue, Springfield', '2024-07-27 13:00:00'),
(3, 3, 18.98, 'In Preparation', '789 Pine Road, Springfield', '2024-07-28 14:00:00'),
(4, 4, 20.98, 'Out for Delivery', '101 Maple Street, Springfield', '2024-07-29 15:00:00'),
(5, 5, 16.98, 'Cancelled', '202 Birch Lane, Springfield', '2024-07-30 16:00:00'),
(6, 6, 25.98, 'Delivered', '303 Cedar Drive, Springfield', '2024-07-31 17:00:00'),
(7, 7, 14.98, 'Accepted', '404 Spruce Avenue, Springfield', '2024-08-01 18:00:00'),
(8, 8, 19.98, 'Pending', '505 Fir Street, Springfield', '2024-08-02 19:00:00'),
(9, 9, 22.98, 'Delivered', '606 Redwood Road, Springfield', '2024-08-03 20:00:00'),
(10, 10, 17.98, 'In Preparation', '707 Willow Way, Springfield', '2024-08-04 21:00:00');


INSERT INTO OrderItems (order_id, item_id, quantity, price) VALUES
(1, 1, 1, 12.99),
(1, 2, 1, 7.99),
(2, 3, 2, 9.99),
(2, 4, 1, 6.99),
(3, 5, 1, 13.99),
(3, 6, 1, 4.99),
(4, 7, 1, 11.99),
(4, 8, 1, 8.99),
(5, 9, 2, 10.99),
(5, 10, 1, 5.99);

select * from payments;

describe payments;
INSERT INTO Payments (order_id, amount, payment_method, payment_status) VALUES
(1, 20.98, 'Credit Card', 'Completed'),
(2, 16.98, 'Debit Card', 'Pending'),
(3, 18.98, 'Credit Card', 'Completed'),
(4, 20.98, 'Credit Card', 'Completed'),
(5, 16.98, 'Credit Card', 'Refunded'),
(6, 25.98, 'Debit Card', 'Completed'),
(7, 14.98, 'Credit Card', 'Completed'),
(8, 19.98, 'Debit Card', 'Pending'),
(9, 22.98, 'Credit Card', 'Completed'),
(10, 17.98, 'Credit Card', 'Completed');






INSERT INTO Reviews (customer_id, partner_id, rating, comment, review_date) VALUES
(1, 1, 4, 'Great burger and fries!', '2024-07-25'),
(2, 2, 3, 'Tacos were too spicy for my taste.', '2024-07-26'),
(3, 3, 5, 'Best sushi I have ever had!', '2024-07-27'),
(4, 4, 4, 'Vegan options were good, but a bit expensive.', '2024-07-28'),
(5, 5, 3, 'Cheeseburger was average.', '2024-07-29'),
(6, 6, 4, 'Pasta was delicious but a bit salty.', '2024-07-30'),
(7, 7, 5, 'Seafood was fresh and tasty!', '2024-07-31'),
(8, 8, 4, 'Tacos were great, but the guacamole was too chunky.', '2024-08-01'),
(9, 9, 5, 'The cake was amazing!', '2024-08-02'),
(10, 10, 4, 'Coffee was good, but the service was slow.', '2024-08-03');


INSERT INTO Reservations (customer_id, partner_id, reservation_date, reservation_time, number_of_people) VALUES
(1, 1, '2024-07-26', '19:00:00', 2),
(2, 2, '2024-07-27', '20:00:00', 4),
(3, 3, '2024-07-28', '18:30:00', 3),
(4, 4, '2024-07-29', '12:00:00', 2),
(5, 5, '2024-07-30', '13:00:00', 1),
(6, 6, '2024-07-31', '17:00:00', 5),
(7, 7, '2024-08-01', '20:30:00', 2),
(8, 8, '2024-08-02', '19:30:00', 3),
(9, 9, '2024-08-03', '15:00:00', 4),
(10, 10, '2024-08-04', '10:00:00', 2);



INSERT INTO Delivery (order_id, delivery_person, delivery_time, delivery_status) VALUES
(1, 'John Doe', '2024-07-26 12:30:00', 'Delivered'),
(2, 'Jane Smith', '2024-07-27 13:15:00', 'Pending'),
(3, 'Robert Brown', '2024-07-28 14:45:00', 'In Progress'),
(4, 'Emily Davis', '2024-07-29 15:30:00', 'Out for Delivery'),
(5, 'Michael Wilson', '2024-07-30 16:20:00', 'Cancelled'),
(6, 'Sarah Johnson', '2024-07-31 17:10:00', 'Delivered'),
(7, 'David Lee', '2024-08-01 18:05:00', 'Accepted'),
(8, 'Laura Clark', '2024-08-02 19:25:00', 'Pending'),
(9, 'James Taylor', '2024-08-03 20:15:00', 'Delivered'),
(10, 'Olivia Martinez', '2024-08-04 21:00:00', 'In Progress');


INSERT INTO Offers (partner_id, offer_description, discount_percentage, start_date, end_date) VALUES
(1, 'Buy one get one free on all burgers!', 50, '2024-07-25', '2024-08-01'),
(2, '20% off on all spicy tacos.', 20, '2024-07-26', '2024-08-05'),
(3, '15% off on sushi rolls.', 15, '2024-07-27', '2024-08-10'),
(4, 'Free dessert with any vegan burger.', 100, '2024-07-28', '2024-08-15'),
(5, '10% off on cheeseburgers and onion rings.', 10, '2024-07-29', '2024-08-20'),
(6, '25% off on all pasta dishes.', 25, '2024-07-30', '2024-08-25'),
(7, 'Buy two get one free on seafood platters.', 33, '2024-07-31', '2024-08-30'),
(8, 'Free guacamole with any taco order.', 100, '2024-08-01', '2024-09-01'),
(9, '20% off on cakes and pastries.', 20, '2024-08-02', '2024-09-05'),
(10, '15% off on all coffee beverages.', 15, '2024-08-03', '2024-09-10');


INSERT INTO Messages (sender_id, receiver_id, message_text, sent_time) VALUES
(1, 2, 'Your order is ready for pickup.', '2024-07-25 09:00:00'),
(2, 3, 'Your reservation has been confirmed.', '2024-07-26 10:15:00'),
(3, 4, 'We are running a special offer on sushi today.', '2024-07-27 11:30:00'),
(4, 5, 'Thank you for your feedback on the vegan burger.', '2024-07-28 12:45:00'),
(5, 6, 'Your payment was successful.', '2024-07-29 14:00:00'),
(6, 7, 'The pasta dish you ordered is on special today.', '2024-07-30 15:15:00'),
(7, 8, 'We have updated our delivery times.', '2024-07-31 16:30:00'),
(8, 9, 'Your order will arrive within 30 minutes.', '2024-08-01 17:45:00'),
(9, 10, 'We are extending our offer on cakes.', '2024-08-02 19:00:00'),
(10, 1, 'Your coffee order is ready for pickup.', '2024-08-03 20:15:00');


INSERT INTO Orders (customer_id, partner_id, order_date, total_amount, order_status) VALUES
(1, 1, '2024-07-25', 15.50, 'Completed'),
(2, 2, '2024-07-26', 25.00, 'Pending'),
(3, 3, '2024-07-27', 30.75, 'Completed'),
(4, 4, '2024-07-28', 22.00, 'Shipped'),
(5, 5, '2024-07-29', 10.50, 'Cancelled'),
(6, 6, '2024-07-30', 18.20, 'Completed'),
(7, 7, '2024-07-31', 27.50, 'Pending'),
(8, 8, '2024-08-01', 12.00, 'Shipped'),
(9, 9, '2024-08-02', 7.80, 'Completed'),
(10, 10, '2024-08-03', 16.90, 'Shipped');


INSERT INTO OrderItems (order_id, item_name, quantity, item_price) VALUES
(1, 'Burger', 2, 10.00),
(1, 'Fries', 1, 5.50),
(2, 'Tacos', 3, 7.50),
(2, 'Soda', 2, 2.50),
(3, 'Sushi Roll', 4, 8.00),
(3, 'Edamame', 1, 6.75),
(4, 'Vegan Burger', 2, 11.00),
(4, 'Salad', 1, 5.00),
(5, 'Cheeseburger', 1, 10.50),
(6, 'Pasta', 2, 9.10),
(7, 'Seafood Platter', 1, 27.50),
(8, 'Tacos', 4, 8.00),
(9, 'Cake Slice', 2, 3.90),
(10, 'Coffee', 2, 8.00);


INSERT INTO Payments (order_id, payment_date, payment_amount, payment_method) VALUES
(1, '2024-07-25', 15.50, 'Credit Card'),
(2, '2024-07-26', 25.00, 'Cash'),
(3, '2024-07-27', 30.75, 'Debit Card'),
(4, '2024-07-28', 22.00, 'Credit Card'),
(5, '2024-07-29', 10.50, 'PayPal'),
(6, '2024-07-30', 18.20, 'Credit Card'),
(7, '2024-07-31', 27.50, 'Cash'),
(8, '2024-08-01', 12.00, 'Debit Card'),
(9, '2024-08-02', 7.80, 'PayPal'),
(10, '2024-08-03', 16.90, 'Credit Card');


INSERT INTO Ratings (customer_id, partner_id, item_id, rating, review) VALUES
(1, 1, 1, 4, 'Great food, will order again.'),
(2, 2, 2, 5, 'Excellent service and tasty dishes.'),
(3, 3, 3, 3, 'Average experience. Could be better.'),
(4, 4, 4, 2, 'Not satisfied with the quality.'),
(5, 5, 5, 4, 'Good value for money.'),
(6, 6, 6, 5, 'Amazing flavors and quick delivery.'),
(7, 7, 7, 4, 'Food was good, but delivery was late.'),
(8, 8, 8, 5, 'Excellent as always. Highly recommended.'),
(9, 9, 9, 3, 'Okay experience, nothing special.'),
(10, 10, 10, 4, 'Good food and prompt service.');



INSERT INTO DeliveryPersonnel (name, email, phone, vehicle_number) VALUES
('John Doe', 'john.doe@example.com', '123-456-7890', 'XYZ 1234'),
('Jane Smith', 'jane.smith@example.com', '234-567-8901', 'ABC 5678'),
('Sam Wilson', 'sam.wilson@example.com', '345-678-9012', 'LMN 9101'),
('Lisa Brown', 'lisa.brown@example.com', '456-789-0123', 'OPQ 2345'),
('Mike Johnson', 'mike.johnson@example.com', '567-890-1234', 'RST 6789'),
('Emma Davis', 'emma.davis@example.com', '678-901-2345', 'UVW 3456'),
('Olivia Moore', 'olivia.moore@example.com', '789-012-3456', 'XYZ 7890'),
('Liam Taylor', 'liam.taylor@example.com', '890-123-4567', 'ABC 3456'),
('Noah Anderson', 'noah.anderson@example.com', '901-234-5678', 'LMN 6789'),
('Ava Thomas', 'ava.thomas@example.com', '012-345-6789', 'OPQ 7890');


INSERT INTO OrderDelivery (order_id, personnel_id, delivery_status, assigned_at) VALUES
(1, 1, 'Delivered', '2024-07-25'),
(2, 2, 'Picked Up', '2024-07-26'),
(3, 3, 'On the Way', '2024-07-27'),
(4, 4, 'Delivered', '2024-07-28'),
(5, 5, 'Pending', '2024-07-29'),
(6, 6, 'Delivered', '2024-07-30'),
(7, 7, 'Picked Up', '2024-07-31'),
(8, 8, 'On the Way', '2024-08-01'),
(9, 9, 'Delivered', '2024-08-02'),
(10, 10, 'On the Way', '2024-08-03');


INSERT INTO Promotions (code, description, discount_percent, discount_amount, start_date, end_date, max_uses, min_order_amount) VALUES
('PROMO10', '10% off on orders above $30', 10.00, NULL, '2024-07-01', '2024-07-31', 100, 30.00),
('FREESHIP', 'Free shipping on orders above $20', NULL, NULL, '2024-07-01', '2024-07-31', 200, 20.00),
('SUMMER20', '20% off on all items', 20.00, NULL, '2024-07-01', '2024-07-31', 150, 0.00),
('BOGO50', 'Buy one get one 50% off', 50.00, NULL, '2024-07-01', '2024-07-31', 75, 15.00),
('WELCOME5', '5% off on your first order', 5.00, NULL, '2024-07-01', '2024-07-31', 500, 0.00),
('MIDWEEK10', '10% off on Wednesdays', 10.00, NULL, '2024-07-01', '2024-07-31', 250, 10.00),
('HAPPYHOUR15', '15% off during happy hours', 15.00, NULL, '2024-07-01', '2024-07-31', 100, 0.00),
('LOYALTY20', '20% off for loyal customers', 20.00, NULL, '2024-07-01', '2024-07-31', 50, 0.00),
('SEASONAL30', '30% off seasonal specials', 30.00, NULL, '2024-07-01', '2024-07-31', 80, 25.00),
('FLASHSALE25', '25% off flash sale items', 25.00, NULL, '2024-07-01', '2024-07-31', 120, 0.00);


INSERT INTO PromotionUsage (promotion_id, customer_id, order_id, used_at) VALUES
(1, 1, 1, '2024-07-25'),
(2, 2, 2, '2024-07-26'),
(3, 3, 3, '2024-07-27'),
(4, 4, 4, '2024-07-28'),
(5, 5, 5, '2024-07-29'),
(6, 6, 6, '2024-07-30'),
(7, 7, 7, '2024-07-31'),
(8, 8, 8, '2024-08-01'),
(9, 9, 9, '2024-08-02'),
(10, 10, 10, '2024-08-03');


INSERT INTO SupportTickets (customer_id, subject, message, status) VALUES
(1, 'Delivery Issue', 'My order was delivered late.', 'Open'),
(2, 'Wrong Item', 'Received the wrong item in my order.', 'In Progress'),
(3, 'Refund Request', 'Requesting a refund for a damaged item.', 'Open'),
(4, 'Order Not Received', 'I did not receive my order.', 'In Progress'),
(5, 'Complaint', 'Food quality was poor.', 'Closed'),
(6, 'Account Issue', 'Having trouble logging into my account.', 'Open'),
(7, 'Missing Items', 'Some items were missing from my order.', 'In Progress'),
(8, 'Billing Issue', 'Incorrect charge on my bill.', 'Closed'),
(9, 'Service Feedback', 'Great service and friendly staff.', 'Closed'),
(10, 'Technical Problem', 'App is crashing frequently.', 'Open');



INSERT INTO CustomerPreferences (customer_id, cuisine_preferences, dietary_restrictions, payment_preferences) VALUES
(1, 'Italian, Mexican', 'Vegetarian', 'Credit Card'),
(2, 'Chinese, Indian', 'Gluten-Free', 'PayPal'),
(3, 'American', 'None', 'Debit Card'),
(4, 'Japanese, Korean', 'Vegan', 'Cash'),
(5, 'Thai', 'Nut Allergy', 'Credit Card'),
(6, 'Mediterranean', 'None', 'PayPal'),
(7, 'French', 'Dairy-Free', 'Debit Card'),
(8, 'Spanish', 'None', 'Cash'),
(9, 'Indian', 'Halal', 'Credit Card'),
(10, 'Greek', 'None', 'PayPal');

use foodapp;
INSERT INTO Geolocation (entity_id, entity_type, latitude, longitude) VALUES
(1, 'Customer', 40.712776, -74.005974),
(2, 'Partner', 34.052235, -118.243683),
(3, 'DeliveryPersonnel', 37.774929, -122.419418),
(4, 'Customer', 51.507351, -0.127758),
(5, 'Partner', 48.856613, 2.352222),
(6, 'DeliveryPersonnel', 40.730610, -73.935242),
(7, 'Customer', 34.052235, -118.243683),
(8, 'Partner', 41.878113, -87.629799),
(9, 'DeliveryPersonnel', 39.099727, -94.578567),
(10, 'Customer', 47.606209, -122.332069);


INSERT INTO Admins (name, email, password_hash, role) VALUES
('Alice Johnson', 'alice.johnson@example.com', 'hashedpassword1', 'SuperAdmin'),
('Bob Smith', 'bob.smith@example.com', 'hashedpassword2', 'Support'),
('Charlie Davis', 'charlie.davis@example.com', 'hashedpassword3', 'Manager'),
('Diana Wilson', 'diana.wilson@example.com', 'hashedpassword4', 'Support'),
('Edward Harris', 'edward.harris@example.com', 'hashedpassword5', 'SuperAdmin'),
('Fiona Lee', 'fiona.lee@example.com', 'hashedpassword6', 'Manager'),
('George Walker', 'george.walker@example.com', 'hashedpassword7', 'Support'),
('Hannah Green', 'hannah.green@example.com', 'hashedpassword8', 'SuperAdmin'),
('Ian Clark', 'ian.clark@example.com', 'hashedpassword9', 'Manager'),
('Jane White', 'jane.white@example.com', 'hashedpassword10', 'Support');


select * from admins;

INSERT INTO Admins (admin_id,name, email, password_hash, role) VALUES
(1,'Alice Johnson', 'alice@example.com', 'hashedpassword1', 'SuperAdmin'),
(2,'Bob Smith', 'bob@example.com', 'hashedpassword2', 'Support'),
(3,'Charlie Davis', 'davis@example.com', 'hashedpassword3', 'Manager'),
(4,'Diana Wilson', 'wilson@example.com', 'hashedpassword4', 'Support'),
(5,'Edward Harris', 'harris@example.com', 'hashedpassword5', 'SuperAdmin'),
(6,'Fiona Lee', 'lee@example.com', 'hashedpassword6', 'Manager'),
(7,'George Walker', 'walker@example.com', 'hashedpassword7', 'Support'),
(8,'Hannah Green', 'green@example.com', 'hashedpassword8', 'SuperAdmin'),
(9,'Ian Clark', 'clark@example.com', 'hashedpassword9', 'Manager'),
(10,'Jane White', 'white@example.com', 'hashedpassword10', 'Support');

-- Insert Records into AuditLogs Table
INSERT INTO AuditLogs (admin_id, action) VALUES
(21, 'Created a new user account'),
(22, 'Updated user permissions'),
(23, 'Deleted a user account'),
(24, 'Reviewed security logs'),
(25, 'Reset user password'),
(26, 'Changed site settings'),
(27, 'Updated profile information'),
(28, 'Reviewed audit logs'),
(29, 'Managed user roles'),
(30, 'Deleted audit logs');


INSERT INTO PaymentMethods (customer_id, card_number, card_expiry, card_type, billing_address) VALUES
(1, '4111111111111111', '12/25', 'Visa', '123 Elm St, Springfield, IL'),
(2, '5500000000000004', '09/24', 'MasterCard', '456 Oak St, Rivertown, CA'),
(3, '340000000000009', '11/23', 'American Express', '789 Pine St, Metropolis, NY'),
(4, '6011000000000004', '07/26', 'Discover', '101 Maple St, Gotham, NJ'),
(5, '30000000000004', '03/25', 'Diners Club', '202 Birch St, Star City, TX'),
(6, '4111111111111111', '12/27', 'Visa', '303 Cedar St, Emerald City, WA'),
(7, '5500000000000004', '08/24', 'MasterCard', '404 Willow St, Smallville, KS'),
(8, '340000000000009', '10/23', 'American Express', '505 Redwood St, Central City, OH'),
(9, '6011000000000004', '06/26', 'Discover', '606 Spruce St, Lakewood, FL'),
(10, '30000000000004', '04/25', 'Diners Club', '707 Fir St, Bay City, MI');



INSERT INTO DeliveryZones (zone_id, zone_name, delivery_fee, min_order_amount) VALUES
(1, 'Downtown', 5.00, 10.00),
(2, 'Uptown', 7.50, 20.00),
(3, 'Suburbs', 10.00, 30.00),
(4, 'Rural', 15.00, 50.00),
(5, 'City Center', 6.00, 15.00),
(6, 'Industrial Area', 12.00, 25.00),
(7, 'Airport Zone', 8.00, 20.00),
(8, 'University District', 5.50, 12.00),
(9, 'Tech Park', 9.00, 18.00),
(10, 'Central Business District', 6.50, 22.00);


INSERT INTO ItemReviews (item_id, customer_id, rating, review_text, review_date) VALUES
(1, 1, 5, 'Fantastic pizza with fresh ingredients!', '2024-07-25'),
(2, 2, 4, 'Great sushi, but a bit pricey.', '2024-07-26'),
(3, 3, 3, 'The burger was okay, but the fries were cold.', '2024-07-27'),
(4, 4, 2, 'Disappointed with the pasta. Not worth the price.', '2024-07-28'),
(5, 5, 4, 'Tasty dessert, but the portion was small.', '2024-07-29'),
(6, 6, 5, 'Excellent service and delicious food.', '2024-07-30'),
(7, 7, 4, 'Good but took too long to deliver.', '2024-07-31'),
(8, 8, 5, 'Always a great experience!', '2024-08-01'),
(9, 9, 3, 'The food was average, nothing special.', '2024-08-02'),
(10, 10, 4, 'Good food, would order again.', '2024-08-03');


INSERT INTO SpecialRequests (order_id, request_details, request_status) VALUES
(1, 'Extra napkins and utensils', 'Completed'),
(2, 'No peanuts in the dish', 'Pending'),
(3, 'Additional sauce on the side', 'Completed'),
(4, 'Spicy food', 'In Progress'),
(5, 'Gluten-free option', 'Completed'),
(6, 'Less salt', 'Completed'),
(7, 'Request for a large drink', 'Pending'),
(8, 'Separate bags for items', 'Completed'),
(9, 'No ice in the drink', 'In Progress'),
(10, 'Extra cheese on the pizza', 'Completed');


INSERT INTO DeliveryZones (zone_id, zone_name, delivery_fee, min_order_amount) VALUES
(1, 'Downtown', 5.00, 10.00),
(2, 'Uptown', 7.50, 20.00),
(3, 'Suburbs', 10.00, 30.00),
(4, 'Rural', 15.00, 50.00),
(5, 'City Center', 6.00, 15.00),
(6, 'Industrial Area', 12.00, 25.00),
(7, 'Airport Zone', 8.00, 20.00),
(8, 'University District', 5.50, 12.00),
(9, 'Tech Park', 9.00, 18.00),
(10, 'Central Business District', 6.50, 22.00);



INSERT INTO ItemReviews (item_id, customer_id, rating, review_text, review_date) VALUES
(1, 1, 5, 'Fantastic pizza with fresh ingredients!', '2024-07-25'),
(2, 2, 4, 'Great sushi, but a bit pricey.', '2024-07-26'),
(3, 3, 3, 'The burger was okay, but the fries were cold.', '2024-07-27'),
(4, 4, 2, 'Disappointed with the pasta. Not worth the price.', '2024-07-28'),
(5, 5, 4, 'Tasty dessert, but the portion was small.', '2024-07-29'),
(6, 6, 5, 'Excellent service and delicious food.', '2024-07-30'),
(7, 7, 4, 'Good but took too long to deliver.', '2024-07-31'),
(8, 8, 5, 'Always a great experience!', '2024-08-01'),
(9, 9, 3, 'The food was average, nothing special.', '2024-08-02'),
(10, 10, 4, 'Good food, would order again.', '2024-08-03');



INSERT INTO SpecialRequests (order_id, request_details, request_status) VALUES
(1, 'Extra napkins and utensils', 'Completed'),
(2, 'No peanuts in the dish', 'Pending'),
(3, 'Additional sauce on the side', 'Completed'),
(4, 'Spicy food', 'In Progress'),
(5, 'Gluten-free option', 'Completed'),
(6, 'Less salt', 'Completed'),
(7, 'Request for a large drink', 'Pending'),
(8, 'Separate bags for items', 'Completed'),
(9, 'No ice in the drink', 'In Progress'),
(10, 'Extra cheese on the pizza', 'Completed');



INSERT INTO ReferralBonuses (referral_id, bonus_amount, bonus_date) VALUES
(1, 50.00, '2024-07-25'),
(2, 25.00, '2024-07-26'),
(3, 30.00, '2024-07-27'),
(4, 40.00, '2024-07-28'),
(5, 35.00, '2024-07-29'),
(6, 45.00, '2024-07-30'),
(7, 20.00, '2024-07-31'),
(8, 55.00, '2024-08-01'),
(9, 25.00, '2024-08-02'),
(10, 30.00, '2024-08-03');



INSERT INTO LoyaltyProgram (customer_id, points_earned, program_start_date) VALUES
(1, 100, '2024-07-01'),
(2, 150, '2024-07-01'),
(3, 200, '2024-07-01'),
(4, 250, '2024-07-01'),
(5, 300, '2024-07-01'),
(6, 50, '2024-07-01'),
(7, 75, '2024-07-01'),
(8, 125, '2024-07-01'),
(9, 175, '2024-07-01'),
(10, 225, '2024-07-01');



INSERT INTO FeedbackComplaints (feedback_id, customer_id, partner_id, order_id, type, description, status) VALUES
(1, 1, 1, 1, 'Feedback', 'Great service, but the food was a bit cold.', 'Resolved'),
(2, 2, 2, 2, 'Complaint', 'Received wrong order.', 'In Progress'),
(3, 3, 3, 3, 'Feedback', 'Delicious meal, but delivery was late.', 'Closed'),
(4, 4, 4, 4, 'Complaint', 'Food was not as described.', 'Open'),
(5, 5, 5, 5, 'Feedback', 'Loved the new dish on the menu.', 'Resolved'),
(6, 6, 6, 6, 'Complaint', 'Unprofessional delivery personnel.', 'In Progress'),
(7, 7, 7, 7, 'Feedback', 'Excellent quality, will order again.', 'Closed'),
(8, 8, 8, 8, 'Complaint', 'Overcharged on the bill.', 'Open'),
(9, 9, 9, 9, 'Feedback', 'Good experience overall.', 'Resolved'),
(10, 10, 10, 10, 'Complaint', 'Food was not fresh.', 'In Progress');


-- Insert Records into NotificationPreferences Table
INSERT INTO NotificationPreferences (customer_id, notification_type, enabled) VALUES
(1, 'Email', TRUE),
(1, 'SMS', FALSE),
(1, 'Push Notification', TRUE),
(2, 'Email', TRUE),
(2, 'SMS', TRUE),
(2, 'Push Notification', FALSE),
(3, 'Email', FALSE),
(3, 'SMS', TRUE),
(3, 'Push Notification', TRUE),
(4, 'Email', TRUE),
(4, 'SMS', FALSE),
(4, 'Push Notification', TRUE),
(5, 'Email', TRUE),
(5, 'SMS', TRUE),
(5, 'Push Notification', FALSE),
(6, 'Email', FALSE),
(6, 'SMS', TRUE),
(6, 'Push Notification', TRUE),
(7, 'Email', TRUE),
(7, 'SMS', FALSE),
(7, 'Push Notification', TRUE),
(8, 'Email', TRUE),
(8, 'SMS', TRUE),
(8, 'Push Notification', FALSE),
(9, 'Email', FALSE),
(9, 'SMS', TRUE),
(9, 'Push Notification', TRUE),
(10, 'Email', TRUE),
(10, 'SMS', FALSE),
(10, 'Push Notification', TRUE);


INSERT INTO OrderStatus (status_id, status_name, description) VALUES
(1, 'Pending', 'Order has been received but not yet processed.'),
(2, 'Processing', 'Order is currently being prepared.'),
(3, 'Shipped', 'Order has been dispatched for delivery.'),
(4, 'Delivered', 'Order has been delivered to the customer.'),
(5, 'Cancelled', 'Order has been cancelled.'),
(6, 'Returned', 'Order has been returned by the customer.'),
(7, 'Refunded', 'Order has been refunded to the customer.'),
(8, 'On Hold', 'Order is temporarily on hold for review.'),
(9, 'Out for Delivery', 'Order is out for delivery and on its way to the customer.'),
(10, 'Failed', 'Order processing failed due to some issues.');



INSERT INTO PaymentMethods (method_id, method_name, description) VALUES
(1, 'Credit Card', 'Payment made using a credit card.'),
(2, 'Debit Card', 'Payment made using a debit card.'),
(3, 'PayPal', 'Payment made using PayPal.'),
(4, 'Bank Transfer', 'Payment made through a bank transfer.'),
(5, 'Cash on Delivery', 'Payment made in cash upon delivery.'),
(6, 'Gift Card', 'Payment made using a gift card.'),
(7, 'Mobile Payment', 'Payment made using mobile payment apps.'),
(8, 'Cryptocurrency', 'Payment made using cryptocurrency.'),
(9, 'Direct Debit', 'Payment made via direct debit from a bank account.'),
(10, 'Prepaid Card', 'Payment made using a prepaid card.');


-- Insert Records into CustomerAddresses Table
INSERT INTO CustomerAddresses (customer_id, label, address, latitude, longitude, is_default) VALUES
(1, 'Home', '123 Main St, Springfield, IL 62701', 39.7817, -89.6501, TRUE),
(2, 'Work', '456 Elm St, Springfield, IL 62701', 39.7820, -89.6510, FALSE),
(3, 'Home', '789 Oak St, Springfield, IL 62701', 39.7825, -89.6520, TRUE),
(4, 'Work', '101 Pine St, Springfield, IL 62701', 39.7830, -89.6530, FALSE),
(5, 'Home', '202 Maple St, Springfield, IL 62701', 39.7835, -89.6540, TRUE),
(6, 'Home', '303 Cedar St, Springfield, IL 62701', 39.7840, -89.6550, TRUE),
(7, 'Work', '404 Birch St, Springfield, IL 62701', 39.7845, -89.6560, FALSE),
(8, 'Home', '505 Walnut St, Springfield, IL 62701', 39.7850, -89.6570, TRUE),
(9, 'Work', '606 Chestnut St, Springfield, IL 62701', 39.7855, -89.6580, FALSE),
(10, 'Home', '707 Redwood St, Springfield, IL 62701', 39.7860, -89.6590, TRUE);

INSERT INTO Referrals (referrer_id, referee_id, referral_code, reward_points) VALUES
(1, 2, 'REF12345', 50),
(3, 4, 'REF67890', 30),
(5, 6, 'REF11223', 70),
(7, 8, 'REF44556', 40),
(9, 10, 'REF78901', 60),
(2, 3, 'REF23456', 20),
(4, 5, 'REF34567', 50),
(6, 7, 'REF45678', 80),
(8, 9, 'REF56789', 30),
(10, 1, 'REF67891', 90);


-- Insert Records into OrderStatusHistory Table
INSERT INTO OrderStatusHistory (order_id, status) VALUES
(1, 'Pending'),
(2, 'Accepted'),
(3, 'In Preparation'),
(4, 'Out for Delivery'),
(5, 'Delivered'),
(6, 'Cancelled'),
(7, 'Pending'),
(8, 'Accepted'),
(9, 'In Preparation'),
(10, 'Out for Delivery');


INSERT INTO Currencies (currency_id, currency_name, currency_code, exchange_rate_to_usd) VALUES
(1, 'US Dollar', 'USD', 1.00),
(2, 'Euro', 'EUR', 1.12),
(3, 'British Pound', 'GBP', 1.29),
(4, 'Japanese Yen', 'JPY', 0.007),
(5, 'Canadian Dollar', 'CAD', 0.74),
(6, 'Australian Dollar', 'AUD', 0.67),
(7, 'Swiss Franc', 'CHF', 1.09),
(8, 'Chinese Yuan', 'CNY', 0.14),
(9, 'Indian Rupee', 'INR', 0.012),
(10, 'Brazilian Real', 'BRL', 0.20);


INSERT INTO PromotionalOffers (offer_id, offer_description, discount_percentage, start_date, end_date) VALUES
(1, 'Summer Sale - 20% off on all items', 20, '2024-07-01', '2024-07-31'),
(2, 'Buy 1 Get 1 Free on selected items', 50, '2024-07-05', '2024-07-25'),
(3, '10% off on orders over $50', 10, '2024-07-10', '2024-08-10'),
(4, 'Free delivery on orders above $30', 100, '2024-07-15', '2024-07-30'),
(5, '15% off on first-time orders', 15, '2024-07-20', '2024-08-20'),
(6, 'Weekend Special - 25% off', 25, '2024-07-25', '2024-07-27'),
(7, 'Loyalty Points Double Bonus', 100, '2024-07-01', '2024-07-15'),
(8, 'Free dessert with every meal', 100, '2024-07-10', '2024-07-31'),
(9, 'Seasonal Discount - 30% off on selected items', 30, '2024-07-20', '2024-08-05'),
(10, 'Referral Bonus - $10 off on next order', 10, '2024-07-01', '2024-07-31');



INSERT INTO ItemCategories (category_id, category_name, description) VALUES
(1, 'Pizza', 'Various types of pizzas including vegetarian and non-vegetarian.'),
(2, 'Sushi', 'Japanese sushi rolls and sashimi.'),
(3, 'Burgers', 'Different varieties of burgers including beef, chicken, and veggie.'),
(4, 'Pasta', 'Italian pasta dishes including spaghetti, penne, and lasagna.'),
(5, 'Desserts', 'Sweet treats including cakes, cookies, and ice cream.'),
(6, 'Drinks', 'Beverages including soft drinks, juices, and coffee.'),
(7, 'Appetizers', 'Starters and small dishes including fries, wings, and salads.'),
(8, 'Seafood', 'Various seafood dishes including shrimp, fish, and calamari.'),
(9, 'Sandwiches', 'Different types of sandwiches including grilled and cold.'),
(10, 'Salads', 'Fresh salads including Caesar, Greek, and mixed greens.');


INSERT INTO Suppliers (supplier_id, supplier_name, contact_info, address) VALUES
(1, 'Fresh Produce Co.', '555-1234', '123 Farm Lane, Springfield'),
(2, 'Oceanic Seafood Ltd.', '555-5678', '456 Harbor Road, Newport'),
(3, 'Dairy Delights', '555-8765', '789 Dairy Street, Hillside'),
(4, 'Bread Bakers Inc.', '555-4321', '101 Baker’s Alley, Midtown'),
(5, 'Meat Masters', '555-6789', '202 Meat Market, Greenfield'),
(6, 'Spice World', '555-3456', '303 Spice Street, Downtown'),
(7, 'Organic Veggies', '555-7890', '404 Organic Lane, Westside'),
(8, 'Sweet Treats', '555-2345', '505 Dessert Drive, Eastside'),
(9, 'Beverage Bros.', '555-6780', '606 Drink Avenue, Central'),
(10, 'Kitchen Essentials', '555-8901', '707 Chef’s Road, Southside');



INSERT INTO EmployeeRoles (role_id, role_name, description) VALUES
(1, 'Manager', 'Responsible for overseeing operations and managing staff.'),
(2, 'Chef', 'Prepares and cooks food items.'),
(3, 'Waiter', 'Serves food and drinks to customers.'),
(4, 'Cashier', 'Handles transactions and manages the cash register.'),
(5, 'Cleaner', 'Responsible for maintaining cleanliness of the premises.'),
(6, 'Bartender', 'Prepares and serves alcoholic and non-alcoholic drinks.'),
(7, 'Delivery Driver', 'Delivers food orders to customers.'),
(8, 'Supervisor', 'Monitors staff and ensures adherence to company policies.'),
(9, 'Marketing Coordinator', 'Handles promotional activities and marketing strategies.'),
(10, 'Customer Service Representative', 'Assists customers and resolves issues.');



INSERT INTO EmployeeSalaries (salary_id, employee_id, role_id, base_salary, bonus) VALUES
(1, 1, 1, 60000, 5000),
(2, 2, 2, 45000, 4000),
(3, 3, 3, 30000, 2000),
(4, 4, 4, 28000, 1500),
(5, 5, 5, 25000, 1000),
(6, 6, 6, 32000, 2500),
(7, 7, 7, 35000, 3000),
(8, 8, 8, 55000, 4500),
(9, 9, 9, 40000, 3500),
(10, 10, 10, 27000, 1800);


INSERT INTO StockLevels (stock_id, item_id, quantity_in_stock) VALUES
(1, 1, 50),
(2, 2, 30),
(3, 3, 20),
(4, 4, 15),
(5, 5, 10),
(6, 6, 40),
(7, 7, 25),
(8, 8, 35),
(9, 9, 45),
(10, 10, 60);


INSERT INTO InventoryPurchases (purchase_id, supplier_id, item_id, quantity, purchase_date, cost_per_unit) VALUES
(1, 1, 1, 100, '2024-07-01', 2.50),
(2, 2, 2, 50, '2024-07-03', 5.00),
(3, 3, 3, 75, '2024-07-05', 1.75),
(4, 4, 4, 120, '2024-07-07', 0.80),
(5, 5, 5, 60, '2024-07-09', 4.00),
(6, 6, 6, 90, '2024-07-12', 1.25),
(7, 7, 7, 110, '2024-07-15', 3.00),
(8, 8, 8, 85, '2024-07-18', 2.10),
(9, 9, 9, 95, '2024-07-21', 0.90),
(10, 10, 10, 70, '2024-07-24', 2.75);


INSERT INTO CustomerFeedback (feedback_id, customer_id, order_id, rating, comments) VALUES
(1, 1, 101, 5, 'Excellent service and food quality.'),
(2, 2, 102, 4, 'Great food but the delivery was late.'),
(3, 3, 103, 3, 'Average experience. The food was cold.'),
(4, 4, 104, 2, 'Not satisfied. The order was incorrect.'),
(5, 5, 105, 5, 'Fantastic! Will definitely order again.'),
(6, 6, 106, 4, 'Good food, but the packaging could be improved.'),
(7, 7, 107, 3, 'It was okay. Nothing special.'),
(8, 8, 108, 5, 'Best meal I’ve had in a while.'),
(9, 9, 109, 2, 'Very disappointed with the quality.'),
(10, 10, 110, 4, 'Overall good, but room for improvement.');


INSERT INTO Discounts (discount_id, discount_name, discount_percentage, applicable_items, start_date, end_date) VALUES
(1, 'Summer Discount', 15, 'All Items', '2024-07-01', '2024-07-31'),
(2, 'Buy 2 Get 1 Free', 33, 'Selected Items', '2024-07-05', '2024-07-25'),
(3, 'Winter Clearance', 25, 'Seasonal Items', '2024-12-01', '2024-12-31'),
(4, 'Early Bird Special', 20, 'Breakfast Items', '2024-07-01', '2024-07-15'),
(5, 'Loyalty Discount', 10, 'All Items for Loyalty Members', '2024-07-10', '2024-08-10'),
(6, 'Festival Offer', 30, 'Selected Festive Items', '2024-08-01', '2024-08-20'),
(7, 'Referral Discount', 15, 'Referral Orders', '2024-07-01', '2024-07-31'),
(8, 'Holiday Sale', 20, 'Holiday Items', '2024-11-01', '2024-12-31'),
(9, 'Student Discount', 10, 'All Items for Students', '2024-07-01', '2024-07-31'),
(10, 'Flash Sale', 50, 'Selected Flash Sale Items', '2024-07-25', '2024-07-25');


-- Insert Records into DriverPerformance Table
INSERT INTO DriverPerformance (personnel_id, order_id, rating, feedback, on_time, delivered_at) VALUES
(1, 1, 5, 'Excellent service, very prompt.', TRUE, '2024-07-24 10:15:00'),
(2, 2, 4, 'Good delivery, but slightly delayed.', FALSE, '2024-07-24 11:30:00'),
(3, 3, 3, 'Average performance, could be improved.', TRUE, '2024-07-24 12:45:00'),
(4, 4, 5, 'On time and professional.', TRUE, '2024-07-24 13:00:00'),
(5, 5, 2, 'Delivery was late and incomplete.', FALSE, '2024-07-24 14:15:00'),
(6, 6, 4, 'Good job, but delivery could be faster.', TRUE, '2024-07-24 15:30:00'),
(7, 7, 3, 'Delivery was okay, not on time.', FALSE, '2024-07-24 16:45:00'),
(8, 8, 5, 'Great experience, very timely.', TRUE, '2024-07-24 17:00:00'),
(9, 9, 4, 'Very good service, but slight delay.', TRUE, '2024-07-24 18:15:00'),
(10, 10, 1, 'Poor service, very late.', FALSE, '2024-07-24 19:30:00');


-- Insert Records into DynamicPricing Table
INSERT INTO DynamicPricing (partner_id, item_id, base_price, surge_multiplier) VALUES
(1, 1, 100.00, 1.00),
(2, 2, 150.00, 1.05),
(3, 3, 200.00, 1.10),
(4, 4, 250.00, 1.15),
(5, 5, 300.00, 1.20),
(6, 6, 350.00, 1.25),
(7, 7, 400.00, 1.30),
(8, 8, 450.00, 1.35),
(9, 9, 500.00, 1.40),
(10, 10, 550.00, 1.45);


-- Insert Records into CorporateAccounts Table
INSERT INTO CorporateAccounts (company_name, company_email, contact_person, contact_phone, billing_address, credit_limit, current_balance) VALUES
('Tech Innovations Inc.', 'info@techinnovations.com', 'Alice Johnson', '123-456-7890', '456 Tech Lane, Silicon Valley, CA 94043', 50000.00, 12000.00),
('Green Solutions Ltd.', 'contact@greensolutions.com', 'Bob Smith', '234-567-8901', '789 Green St, Portland, OR 97201', 30000.00, 8000.00),
('MediCare Solutions', 'support@medicaresolutions.com', 'Charlie Davis', '345-678-9012', '101 Health Ave, New York, NY 10001', 25000.00, 15000.00),
('Retail Hub LLC', 'info@retailhub.com', 'Diana Wilson', '456-789-0123', '202 Commerce Dr, Chicago, IL 60614', 40000.00, 5000.00),
('EduTech Systems', 'hello@edutechsystems.com', 'Edward Harris', '567-890-1234', '303 Edu Lane, Boston, MA 02108', 15000.00, 3000.00),
('AutoWorld Corp.', 'info@autoworldcorp.com', 'Fiona Lee', '678-901-2345', '404 Auto Blvd, Detroit, MI 48201', 60000.00, 22000.00),
('Home & Living Inc.', 'contact@homeandliving.com', 'George Walker', '789-012-3456', '505 Living St, Austin, TX 73301', 35000.00, 7000.00),
('BuildIt Construction', 'support@buildit.com', 'Hannah Green', '890-123-4567', '606 Build Rd, Denver, CO 80202', 45000.00, 12000.00),
('FinTech Solutions', 'info@fintechsolutions.com', 'Ian Clark', '901-234-5678', '707 Finance Blvd, San Francisco, CA 94105', 55000.00, 3000.00),
('Global Services Ltd.', 'contact@globalservices.com', 'Jane White', '012-345-6789', '808 Global St, Seattle, WA 98101', 70000.00, 35000.00);

select * from CorporateAccounts;


-- Insert Records into CorporateOrders Table
INSERT INTO CorporateOrders (account_id, order_id, billing_status) VALUES
(1, 1, 'Pending'),
(2, 2, 'Billed'),
(3, 3, 'Paid'),
(4, 4, 'Pending'),
(5, 5, 'Billed'),
(6, 6, 'Paid'),
(7, 7, 'Pending'),
(8, 8, 'Billed'),
(9, 9, 'Paid'),
(10, 10, 'Pending');

-- Insert Records into PartnerPayouts Table
INSERT INTO PartnerPayouts (partner_id, amount) VALUES
(1, 1000.00),
(2, 1500.00),
(3, 2000.00),
(4, 2500.00),
(5, 3000.00),
(6, 3500.00),
(7, 4000.00),
(8, 4500.00),
(9, 5000.00),
(10, 5500.00);


-- Insert Records into MenuCategories Table
INSERT INTO MenuCategories (partner_id, category_name, description) VALUES
(1, 'Appetizers', 'Starters and small dishes to begin your meal.'),
(2, 'Main Courses', 'Hearty and filling main dishes.'),
(3, 'Desserts', 'Sweet treats and desserts to end your meal.'),
(4, 'Beverages', 'Drinks and beverages for all tastes.'),
(5, 'Specials', 'Daily and seasonal specials.'),
(6, 'Seafood', 'Fresh seafood dishes and platters.'),
(7, 'Vegetarian', 'Delicious vegetarian options.'),
(8, 'Grill', 'Grilled meats and BBQ dishes.'),
(9, 'Salads', 'Fresh and healthy salad options.'),
(10, 'Soups', 'Varieties of soups and broths.');


-- Insert Records into ItemCategoryMapping Table
INSERT INTO ItemCategoryMapping (item_id, category_id) VALUES
(1, 1), -- Item 1 in Category 1
(2, 1), -- Item 2 in Category 1
(3, 2), -- Item 3 in Category 2
(4, 2), -- Item 4 in Category 2
(5, 3), -- Item 5 in Category 3
(6, 4), -- Item 6 in Category 4
(7, 5), -- Item 7 in Category 5
(8, 6), -- Item 8 in Category 6
(9, 7), -- Item 9 in Category 7
(10, 8); -- Item 10 in Category 8








-- Insert Records into OrderPromotions Table
INSERT INTO OrderPromotions (order_id, promotion_id, discount_amount) VALUES
(1, 1, 10.00),
(2, 2, 15.00),
(3, 3, 20.00),
(4, 4, 5.00),
(5, 5, 25.00),
(6, 6, 30.00),
(7, 7, 12.00),
(8, 8, 18.00),
(9, 9, 22.00),
(10, 10, 8.00);


-- Insert Records into UserRoles Table
INSERT INTO UserRoles (role_name) VALUES
('Admin'),
('Manager'),
('User'),
('Guest'),
('SuperAdmin'),
('Moderator'),
('Editor'),
('Viewer'),
('Contributor'),
('Analyst');


-- Insert Records into RolePermissions Table
INSERT INTO RolePermissions (role_id, permission_name) VALUES
(1, 'Manage Users'),
(2, 'Manage Projects'),
(3, 'View Reports'),
(4, 'Access Public Pages'),
(5, 'Full Access'),
(6, 'Moderate Content'),
(7, 'Edit Content'),
(8, 'View Content'),
(9, 'Contribute Content'),
(10, 'Analyze Data');


-- Insert Records into UserRoleMapping Table
INSERT INTO UserRoleMapping (user_id, role_id, user_type) VALUES
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