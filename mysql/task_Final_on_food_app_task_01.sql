use foodapp;
show tables;
select * from customers;
select * from customerorders;


-- 1. Customer Retention Analysis
-- Task: Retrieve customer order history and calculate retention rates over time.
-- Analyze how promotions or loyalty redemptions impacted customer retention.

-- Customer Retention Analysis is the process of evaluating how well a company or organization is maintaining its existing customer base over a specific period. It helps businesses understand the effectiveness of their efforts to retain customers and reduce churn (the rate at which customers stop doing business with the company)


-- 1. How many customers have placed more than three orders?

SELECT c.customer_id, COUNT(co.order_id) AS total_orders
FROM customers c
JOIN customerorders co ON c.customer_id = co.customer_id
GROUP BY c.customer_id
HAVING total_orders > 1;


SELECT COUNT(*) AS customers_with_more_than_three_orders
FROM (
    SELECT c.customer_id, COUNT(o.order_id) AS total_orders
    FROM customers c
    JOIN customerorders o ON c.customer_id = o.customer_id
    GROUP BY c.customer_id
    HAVING total_orders > 1
) AS subquery;



-- question 02
-- What percentage of customers redeem loyalty rewards? Is there a correlation between loyalty rewards and the number of orders?

select * from loyaltyredemptions;
SELECT COUNT(DISTINCT customer_id) 
     FROM loyaltyredemptions;

SELECT 
    (SELECT COUNT(DISTINCT customer_id) 
     FROM loyaltyredemptions) * 100.0 / COUNT(DISTINCT c.customer_id) AS percentage_loyalty_redeemers
FROM customers c;


select * from loyaltyredemptions;

SELECT 
    c.customer_id, 
    COUNT(DISTINCT o.order_id) AS total_orders,
    CASE 
        WHEN COUNT(l.redemption_id) > 0 THEN 'Loyalty Redeemed'
        ELSE 'No Loyalty Redeemed'
    END AS loyalty_status
FROM customers c
LEFT JOIN customerorders o ON c.customer_id = o.customer_id
LEFT JOIN loyaltyredemptions l ON c.customer_id = l.customer_id
GROUP BY c.customer_id;






-- question 3
-- Analyze the impact of promotions on customer retention.
select * from promotionusage;

SELECT 
    c.customer_id,
    COUNT(DISTINCT o1.order_id) AS total_orders_before_promo,
    COUNT(DISTINCT o2.order_id) AS total_orders_after_promo
FROM customers c
LEFT JOIN customerorders o1 
    ON c.customer_id = o1.customer_id 
    AND o1.order_date < (
        SELECT MIN(pu.used_at)
        FROM promotionusage pu
        WHERE pu.customer_id = c.customer_id
    )
LEFT JOIN customerorders o2 
    ON c.customer_id = o2.customer_id 
    AND o2.order_date >= (
        SELECT MIN(pu.used_at)
        FROM promotionusage pu
        WHERE pu.customer_id = c.customer_id
    )
GROUP BY c.customer_id;
