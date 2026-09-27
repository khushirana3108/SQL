CREATE DATABASE sales_transaction

USE SalesAnalyticsDB

CREATE TABLE sales_transactions(
Transaction_id INT PRIMARY KEY,
Customer_Name VARCHAR(50),
Product_Name VARCHAR(50),
Category VARCHAR(50),
Quantity INT,
Unit_Price INT,
Discount	INT,
City VARCHAR(50),
Payment_Method VARCHAR(50),
Salesperson VARCHAR(50),
Customer_type VARCHAR(50)
);

INSERT INTO sales_transactions
VALUES 
(1001,'Aarav Mehta','Laptop Pro 15','Electronics',2,75000,10,'Ahmedabad','Online','Rahul','Premium'),
(1002,'Priya Shah','Office Chair','Furniture',5,12000,8,'Mumbai','Card','Neha','Regular'),
(1003,'Rohan Patel','Smartphone X','Electronics',3,45000,12,'Ahmedabad','UPI','Amit','Premium'),
(1004,'Sneha Verma','Refrigerator','Appliances',1,68000,15,'Delhi','Card','Priya','VIP'),
(1005,'Karan Joshi','Dining Table',	'Furniture',4,18000,5,'Pune','Cash','Rahul','Regular'),
(1006,'Ananya Rao','Laptop Air','Electronics',1,62000,7,'Bangalore','Online','Neha','Premium'),
(1007,'Vikram Singh','Washing Machine','Appliances',2,42000,18,'Jaipur','UPI','Amit','Regular'),
(1008,'Meera Kapoor','Smartphone Pro','Electronics',4,55000,20,'Mumbai'	,'Card','Priya','VIP'),
(1009,'Aditya Shah','Sofa Set','Furniture',3,35000,10,'Ahmedabad','Online','Rahul','Premium'),
(1010,'Ishita Patel','Air Conditioner','Appliances',2,58000,12,'Surat','UPI','Neha','Premium'),
(1011,'Raj Malhotra','Gaming Laptop','Electronics',2,95000,15,'Delhi','Card','Amit','VIP'),
(1012,'Kavya Desai','Bookshelf','Furniture',6,9000,5,'Pune','Cash','Priya','Regular'),
(1013,'Arjun Mehta','Smart TV55','Electronics',2,72000,18,'Bangalore','Online','Rahul','Premium'),
(1014,'Nisha Sharma','Microwave Oven','Appliances',3,22000,8,'Ahmedabad','UPI','Neha','Regular'),
(1015,'Yash Patel','Refrigerator Pro','Appliances',1,82000,20,'Mumbai','Card','Amit','VIP'),
(1016,'Simran Kaur','Office Desk','Furniture',5,16000,12,'Delhi','Online','Priya','Regular'),
(1017,'Dev Kumar','Smartphone Ultra','Electronics',3,68000,10,'Jaipur','UPI','Rahul','Premium'),
(1018,'Riya Shah','Washing MachinePro','Appliances',4,48000,22,'Surat','Card','Neha','Premium'),
(1019,'Manav Joshi','Premium Sofa','Furniture',2,65000,15,'Ahmedabad','Online','Amit','VIP'),
(1020,'Pooja Mehta','Tablet Pro','Electronics',5,32000,8,'Pune','UPI','Priya','Regular'),
(1021,'Harsh Verma','Laptop Ultra','Electronics',3,88000,25,'Mumbai','Card','Rahul','VIP'),
(1022,'Neel Shah','Air Conditioner Pro','Appliances',2,76000,10,'Delhi','Online','Neha','Premium'),
(1023,'Tanvi Rao','Dining Set','Furniture',4,28000,18,'Bangalore','Cash','Amit','Regular'),
(1024,'Siddharth Patel','Smart TV Pro','Electronics',6,60000,12,'Surat','UPI','Priya','Premium'),
(1025,'Aisha Khan','Double Door Refrigerator','Appliances',2,92000,20,'Ahmedabad','Card','Rahul','VIP'),
(1026,'Mohit Singh','Executive Chair','Furniture',7,14000,10,'Jaipur','Online','Neha','Regular'),
(1027,'Mehta','Gaming Monitor','Electronics	',3,52000,15,'Delhi','UPI','Amit','Premium'),
(1028,'Varun Shah','Washing Machine','Appliances',5,38000,28,'Mumbai','Cash','Priya','Regular'),
(1029,'Isha Patel',	'Luxury Sofa','Furniture',3,78000,12,'Pune','Card','Rahul',	'VIP'),
(1030,'Dhruv Sharma','Business Laptop','Electronics',2,110000,18,'Bangalore','Online','Neha','VIP');

SELECT * FROM sales_transactions;

