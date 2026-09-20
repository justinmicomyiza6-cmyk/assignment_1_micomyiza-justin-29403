-- Sunrise Supermarket
-- Assignment 1
-- Insert Sample Data

-- Customers
INSERT INTO customers VALUES (1, 'John Mugisha', 'john@gmail.com', 'Kigali');
INSERT INTO customers VALUES (2, 'Alice Uwase', 'alice@gmail.com', 'Huye');
INSERT INTO customers VALUES (3, 'Eric Niyonzima', 'eric@gmail.com', 'Musanze');
INSERT INTO customers VALUES (4, 'Diane Mukamana', 'diane@gmail.com', 'Kigali');
INSERT INTO customers VALUES (5, 'Patrick Habimana', 'patrick@gmail.com', 'Rubavu');

-- Products
INSERT INTO products VALUES (1, 'Rice 5kg', 'Food', 7500);
INSERT INTO products VALUES (2, 'Sugar 1kg', 'Food', 1500);
INSERT INTO products VALUES (3, 'Cooking Oil 1L', 'Food', 3000);
INSERT INTO products VALUES (4, 'Milk 1L', 'Dairy', 1200);
INSERT INTO products VALUES (5, 'Bread', 'Bakery', 1000);
INSERT INTO products VALUES (6, 'Cheese', 'Dairy', 4500);
INSERT INTO products VALUES (7, 'Soap', 'Household', 2000);
INSERT INTO products VALUES (8, 'Toothpaste', 'Personal Care', 2500);

-- Orders
INSERT INTO orders VALUES (1, 1, DATE '2026-09-01');
INSERT INTO orders VALUES (2, 2, DATE '2026-09-02');
INSERT INTO orders VALUES (3, 3, DATE '2026-09-03');
INSERT INTO orders VALUES (4, 1, DATE '2026-09-05');
INSERT INTO orders VALUES (5, 4, DATE '2026-09-06');
INSERT INTO orders VALUES (6, 5, DATE '2026-09-07');
INSERT INTO orders VALUES (7, 2, DATE '2026-09-08');
INSERT INTO orders VALUES (8, 3, DATE '2026-09-10');
INSERT INTO orders VALUES (9, 1, DATE '2026-09-11');
INSERT INTO orders VALUES (10, 4, DATE '2026-09-12');
INSERT INTO orders VALUES (11, 5, DATE '2026-09-14');
INSERT INTO orders VALUES (12, 2, DATE '2026-09-15');
INSERT INTO orders VALUES (13, 3, DATE '2026-09-16');
INSERT INTO orders VALUES (14, 4, DATE '2026-09-18');
INSERT INTO orders VALUES (15, 5, DATE '2026-09-19');

-- Order Items
INSERT INTO order_items VALUES (1, 1, 1, 2);
INSERT INTO order_items VALUES (2, 1, 2, 3);
INSERT INTO order_items VALUES (3, 2, 3, 2);
INSERT INTO order_items VALUES (4, 2, 4, 4);
INSERT INTO order_items VALUES (5, 3, 5, 3);
INSERT INTO order_items VALUES (6, 3, 6, 1);
INSERT INTO order_items VALUES (7, 4, 1, 1);
INSERT INTO order_items VALUES (8, 4, 7, 2);
INSERT INTO order_items VALUES (9, 5, 8, 2);
INSERT INTO order_items VALUES (10, 5, 4, 3);
INSERT INTO order_items VALUES (11, 6, 2, 5);
INSERT INTO order_items VALUES (12, 6, 5, 2);
INSERT INTO order_items VALUES (13, 7, 3, 3);
INSERT INTO order_items VALUES (14, 7, 8, 1);
INSERT INTO order_items VALUES (15, 8, 1, 2);
INSERT INTO order_items VALUES (16, 8, 6, 2);
INSERT INTO order_items VALUES (17, 9, 7, 4);
INSERT INTO order_items VALUES (18, 9, 2, 2);
INSERT INTO order_items VALUES (19, 10, 4, 5);
INSERT INTO order_items VALUES (20, 10, 5, 3);
INSERT INTO order_items VALUES (21, 11, 8, 2);
INSERT INTO order_items VALUES (22, 11, 3, 2);
INSERT INTO order_items VALUES (23, 12, 1, 1);
INSERT INTO order_items VALUES (24, 12, 7, 3);
INSERT INTO order_items VALUES (25, 13, 6, 1);
INSERT INTO order_items VALUES (26, 13, 5, 4);
INSERT INTO order_items VALUES (27, 14, 2, 2);
INSERT INTO order_items VALUES (28, 14, 4, 2);
INSERT INTO order_items VALUES (29, 15, 3, 1);
INSERT INTO order_items VALUES (30, 15, 8, 2);

COMMIT;
