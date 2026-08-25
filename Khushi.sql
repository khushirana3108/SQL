create database CompanyDb;

Use CompanyDb;


Create Table Customers(
id Int,
user_name varchar(50),
age int,
country varchar(50),
Amount_Spend Int
);

Insert Into Customers (id,user_name, age, country, Amount_Spend)
VALUES
(1,'RAHUL',25,'INDIA',15000),
(2,'PRIYA',28,'INDIA',25000),
(3,'AMIT',30,'INDIA',28000),
(4,'NEHA',40,'INDIA',28000),
(5,'JOHN',34,'USA',34000),
(6,'SARAH',43,'UK',35000),
(7,'DAVID',21,'CANADA',31000),
(8,'EMMA',45,'INDIA',36000),
(9,'ROHAN',23,'UK',34000),
(10,'RAY',23,'UK',34000);

SELECT *
FROM Customers