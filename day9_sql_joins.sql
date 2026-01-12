-- create database company
CREATE DATABASE company;

--creating customer table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);

--inserting values into customer table
INSERT INTO customers VALUES
(1,'Rahul','Mumbai'),
(2,'Amit','Delhi'),
(3,'Neha','Pune'),
(4,'Priya','Bangalore');

--creates table orders
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount INT
);

--inserting values into orders
INSERT INTO orders VALUES
(101,1,5000),
(102,1,3000),
(103,2,7000),
(104,1,2000);

-- inner join on customer and order table
SELECT customer.cust_id, customer.name, orders.order_id FROM customer INNER JOIN orders ON customer.cust_id = orders.customer_id;

--left join on customer and order table
SELECT customer.cust_id, customer.name, orders.order_id FROM customer LEFT JOIN orders ON customer.cust_id = orders.customer_id;

--right join on customer and order table
SELECT customer.cust_id, customer.name, orders.order_id FROM customer RIGHT JOIN orders ON customer.cust_id = orders.customer_id;

--sum total of total amount spent by customer
SELECT customer.cust_id, customer.name, SUM(orders.amount) as tot_amount FROM customer INNER JOIN orders ON 
customer.cust_id = orders.customer_id;

--sum total of the total spent by customer using group by clause to group total spent amount
SELECT customer.cust_id, customer.name, sum(orders.amount) as total_amount FROM customer INNER JOIN orders ON 
customer.cust_id = orders.customer_id GROUP BY customer.name;

--inserting another values
INSERT INTO orders VALUES(105,3,9000);

--left join after inserting another record
SELECT customer.cust_id, customer.name, orders.order_id FROM customer LEFT JOIN orders ON customer.cust_id = orders.customer_id;

--total amount spent by customer using group by clause to group names after inserting another record
SELECT customer.cust_id, customer.name, sum(orders.amount) as total_amount FROM customer INNER JOIN orders ON 
customer.cust_id = orders.customer_id GROUP BY customer.name;
​