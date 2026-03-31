-- Total Sales
SELECT SUM(amount) AS total_sales FROM sales;

-- Category-wise Sales
SELECT category, SUM(amount) 
FROM sales 
GROUP BY category;

-- Top Products
SELECT sub_category, SUM(amount) 
FROM sales 
GROUP BY sub_category 
ORDER BY SUM(amount) DESC;

-- Profit Analysis
SELECT category, SUM(profit) 
FROM sales 
GROUP BY category;

-- Join Query (State-wise Sales)
SELECT o.state, SUM(s.amount) 
FROM orders o
JOIN sales s ON o.order_id = s.order_id
GROUP BY o.state;

-- Top Customers
SELECT o.customer_name, SUM(s.amount)
FROM orders o
JOIN sales s ON o.order_id = s.order_id
GROUP BY o.customer_name
ORDER BY SUM(s.amount) DESC;