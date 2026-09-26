TASK3----
CREATE TABLE Newsales_transactions (
    transaction_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    salesperson VARCHAR(50),
    product_name VARCHAR(50),
    city VARCHAR(50),
    quantity INT,
    unit_price DECIMAL(10,2)
);

INSERT INTO Newsales_transactions
(transaction_id, customer_name, salesperson, product_name,city, quantity, unit_price)
VALUES
(1, 'Rahul',  'Amit',   'Laptop','Ahmedabad',2, 55000.00),
(2, 'Priya',  'Neha',   'Mobile','Mumbai', 3, 25000.00),
(3, 'Amit',   'Raj',    'Headphones','Surat',5, 2000.00),
(4, 'Neha',   'Amit',   'Tablet','Delhi',4, 18000.00),
(5, 'Vikas',  'Neha',   'Keyboard','Pune',4, 1500.00),
(6, 'Sneha',  'Raj',    'Mouse','Surat ',6, 800.00),
(7, 'Arjun',  'Amit',   'Monitor','Pune', 2, 12000.00),
(8, 'Pooja',  'Raj',    'Printer','Delhi', 1, 15000.00),
(9, 'Rohan',  'Neha',   'Smartwatch','Pune',3, 5000.00),
(10, 'Anjali','Amit',   'Speaker', 'Mumbai' , 4, 3500.00);

SELECT
    salesperson,
    COUNT(*) AS number_of_transactions,
    SUM(quantity) AS total_quantity_sold,
    SUM(quantity * unit_price) AS total_sales_value,
    AVG(unit_price) AS average_unit_price
FROM Newsales_transactions
GROUP BY salesperson
ORDER BY total_sales_value DESC;

