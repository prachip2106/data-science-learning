--create database 
CREATE Database analytics_lab;

--create table name sales
CREATE TABLE sales (
    order_id INT,
    order_date DATE,
    region VARCHAR(50),
    product VARCHAR(50),
    revenue INT,
    cost INT,
    profit INT
);

--inserting values into the table
INSERT INTO sales VALUES
(1001,'2024-01-05','Asia','Laptop',50000,40000,10000),
(1002,'2024-01-06','Europe','Mobile',30000,25000,5000),
(1003,'2024-01-07','Asia','Tablet',20000,15000,5000),
(1004,'2024-01-08','America','Laptop',60000,48000,12000),
(1005,'2024-01-09','Europe','Laptop',55000,45000,10000),
(1006,'2024-01-10','Asia','Mobile',35000,30000,5000),
(1007,'2024-01-11','America','Tablet',25000,20000,5000),
(1008,'2024-01-12','Europe','Mobile',32000,28000,4000);

--selecting inserted values
SELECT * FROM sales;

--selecting particular columns
SELECT order_id,revenue,region FROM sales;

--selecting particular rows using where clause
SELECT * FROM sales WHERE ORDER_id=1003;

--arranging records into descending
SELECT * FROM sales order by revenue desc;

--arraning records into descending order upto 3 records
SELECT * FROM sales order by revenue desc LIMIT 3;

--select unique region from sales using distinct clause
SELECT DISTINCT region FROM sales;

--selecting records from sales whose revenue is greater than 40000
SELECT * from sales WHERE revenue > 40000;