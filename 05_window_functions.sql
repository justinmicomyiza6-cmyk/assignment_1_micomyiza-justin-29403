-- Sunrise Supermarket
-- Assignment 1
-- Window Function Queries


-- WINDOW 1
-- Rank customers by total amount spent, highest first.

SELECT
    c.customer_id,
    c.customer_name,
    SUM(oi.quantity * p.price) AS total_spent,
    RANK() OVER (
        ORDER BY SUM(oi.quantity * p.price) DESC) AS spending_rank
FROM customers c
INNER JOIN orders o
    ON c.customer_id = o.customer_id
INNER JOIN order_items oi
    ON o.order_id = oi.order_id
INNER JOIN products p
    ON oi.product_id = p.product_id
GROUP BY c.customer_id, c.customer_name
ORDER BY spending_rank;


-- WINDOW 2
-- Number each customer's orders in the order placed.

SELECT
    customer_id,
    order_id,
    order_date,
    ROW_NUMBER() OVER (
        PARTITION BY customer_id
        ORDER BY order_date) AS order_number
FROM orders
ORDER BY customer_id, order_date;


-- WINDOW 3
-- Show a running total of revenue over time,
-- ordered by order date.

SELECT
    o.order_date,
    SUM(oi.quantity * p.price) AS daily_revenue,
    SUM(SUM(oi.quantity * p.price)) OVER (
        ORDER BY o.order_date) AS running_total_revenue
FROM orders o
INNER JOIN order_items oi
    ON o.order_id = oi.order_id
INNER JOIN products p
    ON oi.product_id = p.product_id
GROUP BY o.order_date
ORDER BY o.order_date;


-- WINDOW 4
-- For each customer with more than one order,
-- show the days between the current and previous order.

SELECT
    customer_id,
    order_id,
    order_date,
    LAG(order_date) OVER (
        PARTITION BY customer_id
        ORDER BY order_date) AS previous_order_date,
    order_date - LAG(order_date) OVER (
        PARTITION BY customer_id
        ORDER BY order_date) AS days_between_orders
FROM orders
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
    GROUP BY customer_id
    HAVING COUNT(*) > 1)
ORDER BY customer_id, order_date;
