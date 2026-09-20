# PLSQL Assignment One - Sunrise Supermarket

## Student Information

- **Name:** Justin MICOMYIZA
- **Student ID:** 29403
- **Group:** B
- **DBMS Used:** PSQL

## Project Summary

This assignment analyzes the customers, products, orders, and sales activities of Sunrise Supermarket using SQL.

The project demonstrates:
- INNER JOIN
- LEFT JOIN
- Common Table Expression (CTE)
- Window functions
- Customer spending analysis
- Order sequence analysis
- Revenue trend analysis

## Business Scenario

Sunrise Supermarket sells products to customers who place orders containing one or more items.

Management wants to understand:
- Who their customers are
- What products customers buy
- How much customers spend
- How frequently customers place orders
- How sales revenue changes over time

The database contains four main tables:

- `customers` - stores customer information.
- `products` - stores product information and prices.
- `orders` - stores customer orders and order dates.
- `order_items` - stores the products and quantities included in each order.

## Database Structure

The database contains:

- 5 customers
- 8 products
- 5 product categories
- 15 orders
- 30 order items
- Orders distributed across multiple dates

## SQL Files

| File | Description |
|---|---|
| `01_create_tables.sql` | Creates the four database tables |
| `02_insert_data.sql` | Inserts customers, products, orders, and order items |
| `03_joins.sql` | Contains the three JOIN queries |
| `04_cte.sql` | Contains the customer spending CTE |
| `05_window_functions.sql` | Contains four window-function queries |
