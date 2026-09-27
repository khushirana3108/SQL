CREATE DATABASE khushirana_sales_transaction

CREATE TABLE Khushi_sales (
    transaction_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    product_name VARCHAR(100),
    category VARCHAR(50),
    quantity INT,
    unit_price DECIMAL(12,2),
    discount_percentage DECIMAL(5,2),
    city VARCHAR(50),
    payment_mode VARCHAR(30),
    salesperson VARCHAR(100),
    customer_type VARCHAR(30)
);

INSERT INTO Khushi_sales
(transaction_id, customer_name, product_name, category, quantity,
 unit_price, discount_percentage, city, payment_mode, salesperson, customer_type)
VALUES
(1001, 'Amit Shah', 'Laptop', 'Electronics', 3, 120000, 10, 'Mumbai', 'Online', 'Rahul', 'Premium'),
(1002, 'Priya Patel', 'iPhone', 'Electronics', 2, 90000, 5, 'Ahmedabad', 'Card', 'Neha', 'VIP'),
(1003, 'Rohan Mehta', 'Sofa', 'Furniture', 4, 55000, 15, 'Delhi', 'Cash', 'Amit', 'Regular'),
(1004, 'Sneha Joshi', 'Washing Machine', 'Appliances', 3, 45000, 12, 'Mumbai', 'Online', 'Rahul', 'Premium'),
(1005, 'Vikas Shah', 'Refrigerator', 'Appliances', 2, 70000, 8, 'Pune', 'Card', 'Neha', 'VIP'),
(1006, 'Karan Patel', 'Dining Table', 'Furniture', 3, 40000, 10, 'Ahmedabad', 'Online', 'Amit', 'Regular'),
(1007, 'Meera Shah', 'MacBook Air', 'Electronics', 2, 110000, 18, 'Bangalore', 'Card', 'Rahul', 'Premium'),
(1008, 'Arjun Mehta', 'Television', 'Electronics', 4, 75000, 20, 'Delhi', 'Online', 'Neha', 'VIP'),
(1009, 'Nisha Patel', 'Bed', 'Furniture', 5, 35000, 5, 'Mumbai', 'Cash', 'Amit', 'Premium'),
(1010, 'Suresh Kumar', 'Microwave', 'Appliances', 3, 30000, 15, 'Pune', 'Online', 'Rahul', 'Regular'),
(1011, 'Anjali Shah', 'iPad', 'Electronics', 3, 60000, 10, 'Ahmedabad', 'Card', 'Neha', 'Premium'),
(1012, 'Manish Patel', 'Office Chair', 'Furniture', 6, 15000, 8, 'Bangalore', 'Online', 'Amit', 'Regular'),
(1013, 'Pooja Mehta', 'Air Conditioner', 'Appliances', 2, 80000, 10, 'Delhi', 'Card', 'Rahul', 'VIP'),
(1014, 'Deepak Shah', 'Gaming Laptop', 'Electronics', 2, 150000, 12, 'Mumbai', 'Online', 'Neha', 'VIP'),
(1015, 'Riya Patel', 'Wardrobe', 'Furniture', 4, 45000, 18, 'Pune', 'Card', 'Amit', 'Premium'),
(1016, 'Nitin Kumar', 'Dishwasher', 'Appliances', 3, 60000, 7, 'Ahmedabad', 'Online', 'Rahul', 'Premium'),
(1017, 'Kavita Shah', 'Smartphone', 'Electronics', 5, 50000, 15, 'Bangalore', 'Card', 'Neha', 'Regular'),
(1018, 'Harsh Mehta', 'Bookshelf', 'Furniture', 3, 25000, 10, 'Delhi', 'Online', 'Amit', 'VIP'),
(1019, 'Simran Patel', 'Air Purifier', 'Appliances', 4, 35000, 16, 'Mumbai', 'Card', 'Rahul', 'Premium'),
(1020, 'Yash Shah', 'Tablet', 'Electronics', 3, 55000, 5, 'Pune', 'Online', 'Neha', 'VIP');

---Task 1 — Sales Transaction Summary
SELECT
    COUNT(*) AS total_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(unit_price) AS average_unit_price,
    MAX(unit_price) AS highest_unit_price,
    MIN(unit_price) AS lowest_unit_price
FROM Khushi_sales;

--Task 2 — Category Performance Analysis
SELECT
    category,
    COUNT(*) AS number_of_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(unit_price) AS average_unit_price
FROM Khushi_sales
GROUP BY category
ORDER BY total_sales_value DESC;

--Task 3 — Salesperson Performance Report
SELECT
    salesperson,
    COUNT(*) AS number_of_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(unit_price) AS average_unit_price
FROM Khushi_sales
GROUP BY salesperson
ORDER BY total_sales_value DESC;

--Task 4 — City-Wise Sales Analysis
SELECT
    city,
    COUNT(*) AS number_of_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(unit_price) AS average_unit_price
FROM Khushi_sales
GROUP BY city
ORDER BY total_sales_value DESC;

--Task 5 — Customer Type Analysis
SELECT
    customer_type,
    COUNT(*) AS number_of_transactions,
    SUM(quantity) AS total_quantity_purchased,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(unit_price) AS average_unit_price
FROM Khushi_sales
GROUP BY customer_type
ORDER BY total_sales_value DESC;

--Task 6 — Payment Mode Analysis
SELECT
    payment_mode,
    COUNT(*) AS number_of_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(unit_price) AS average_unit_price
FROM Khushi_sales
GROUP BY payment_mode
ORDER BY total_sales_value DESC;

--Task 7 — High-Performing Categories
SELECT
    category,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(unit_price) AS average_unit_price
FROM Khushi_sales
GROUP BY category
HAVING SUM(quantity * unit_price) > 300000;

--Task 8 — High-Performing Salespersons
SELECT
    salesperson,
    COUNT(*) AS number_of_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value
FROM Khushi_sales
GROUP BY salesperson
HAVING SUM(quantity * unit_price) > 500000
ORDER BY total_sales_value DESC;

--Task 9 — High-Volume Products
SELECT
    product_name,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(unit_price) AS average_unit_price
FROM Khushi_sales
GROUP BY product_name
HAVING SUM(quantity) > 5
ORDER BY total_quantity_sold DESC;

--Task 10 — Premium Customer Analysis
SELECT
    category,
    COUNT(*) AS number_of_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(unit_price) AS average_unit_price
FROM Khushi_sales
WHERE customer_type = 'Premium'
GROUP BY category
HAVING SUM(quantity * unit_price) > 200000;

--Task 11 — VIP Customer Analysis
SELECT
    salesperson,
    COUNT(*) AS number_of_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value
FROM Khushi_sales
WHERE customer_type = 'VIP'
GROUP BY salesperson
HAVING SUM(quantity * unit_price) > 300000
ORDER BY total_sales_value DESC;

--Task 12 — City and Payment Analysis
SELECT
    city,
    COUNT(*) AS number_of_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value
FROM Khushi_sales
WHERE payment_mode IN ('Online', 'Card')
GROUP BY city
HAVING SUM(quantity * unit_price) > 300000
ORDER BY total_sales_value DESC;

--Task 13 — Discount Performance Analysis
SELECT
    discount_percentage,
    COUNT(*) AS number_of_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(unit_price) AS average_unit_price
FROM Khushi_sales
GROUP BY discount_percentage
HAVING COUNT(*) >= 2
ORDER BY discount_percentage;

--Task 14 — Electronics Business Analysis
SELECT
    salesperson,
    COUNT(*) AS number_of_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(unit_price) AS average_unit_price,
    MAX(unit_price) AS highest_unit_price
FROM Khushi_sales
WHERE category = 'Electronics'
GROUP BY salesperson
HAVING SUM(quantity * unit_price) > 250000
ORDER BY total_sales_value DESC;

--Task 15 — Furniture Business Analysis
SELECT
    city,
    COUNT(*) AS number_of_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(unit_price) AS average_unit_price
FROM Khushi_sales
WHERE category = 'Furniture'
  AND quantity > 2
GROUP BY city
HAVING SUM(quantity * unit_price) > 50000
ORDER BY total_sales_value DESC;

--Task 16 — Appliance Sales Analysis
SELECT
    salesperson,
    COUNT(*) AS number_of_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(unit_price) AS average_unit_price
FROM Khushi_sales
WHERE category = 'Appliances'
  AND payment_mode <> 'Cash'
  AND discount_percentage < 20
GROUP BY salesperson
HAVING SUM(quantity * unit_price) > 100000
ORDER BY total_sales_value DESC;

--Task 17 — Premium vs VIP Performance
SELECT
    customer_type,
    COUNT(*) AS number_of_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(unit_price) AS average_unit_price,
    MAX(unit_price) AS maximum_unit_price
FROM Khushi_sales
WHERE customer_type IN ('Premium', 'VIP')
GROUP BY customer_type
ORDER BY total_sales_value DESC;

--Task 18 — Salesperson Discount Analysis
SELECT
    salesperson,
    COUNT(*) AS number_of_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(discount_percentage) AS average_discount_percentage
FROM Khushi_sales
WHERE discount_percentage > 15
GROUP BY salesperson
HAVING COUNT(*) >= 2
ORDER BY total_sales_value DESC;

--Task 19 — Insert and Verify New Transaction

INSERT INTO Khushi_sales
(transaction_id, customer_name, product_name, category, quantity,
 unit_price, discount_percentage, city, payment_mode, salesperson, customer_type)
VALUES
(1031, 'Raj Mehta', 'MacBook Pro', 'Electronics', 2, 125000,
 10, 'Mumbai', 'Online', 'Rahul', 'Premium');

SELECT *
FROM Khushi_sales
WHERE transaction_id = 1031;

--Task 20 — Final Business Intelligence Challenge
SELECT
    salesperson,
    category,
    COUNT(*) AS number_of_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(unit_price) AS average_unit_price,
    MIN(unit_price) AS minimum_unit_price,
    MAX(unit_price) AS maximum_unit_price,
    AVG(discount_percentage) AS average_discount_percentage
FROM Khushi_sales
WHERE customer_type IN ('Premium', 'VIP')
  AND payment_mode <> 'Cash'
  AND quantity > 1
  AND discount_percentage < 20
GROUP BY salesperson, category
HAVING SUM(quantity * unit_price) > 200000
ORDER BY total_sales_value DESC;

