-- Customers
INSERT INTO customers VALUES 
(1, 'Rahul Sharma', 'Mumbai'),
(2, 'Anita Rao', 'Bangalore'),
(3, 'Karan Mehta', 'Delhi');

-- Products
INSERT INTO products VALUES 
(101, 'Smartphone', 'Electronics', 15000.00),
(102, 'Laptop', 'Electronics', 45000.00),
(103, 'Desk Chair', 'Furniture', 3500.00);

-- Orders
INSERT INTO orders VALUES 
(1001, 1, '2025-05-01'),
(1002, 2, '2025-05-03'),
(1003, 3, '2025-05-05');

-- Order Items
INSERT INTO order_items (order_id, product_id, quantity) VALUES 
(1001, 101, 2),
(1001, 103, 1),
(1002, 102, 1),
(1003, 101, 1),
(1003, 103, 2);
