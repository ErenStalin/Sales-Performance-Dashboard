-- Revenue per product
SELECT p.name, SUM(p.price * oi.quantity) AS total_revenue
FROM products p
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY p.name
ORDER BY total_revenue DESC;

-- Revenue by month
SELECT DATE_TRUNC('month', o.order_date) AS month,
       SUM(p.price * oi.quantity) AS monthly_revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY month
ORDER BY month;

-- Top customers by spend
SELECT c.name, SUM(p.price * oi.quantity) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 5;
