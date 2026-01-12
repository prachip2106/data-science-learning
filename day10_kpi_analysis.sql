--Total company sales
SELECT sum(REVENUE) as total_revenue FROM sales;

--average company profit
SELECT avg(PROFIT) as avg_profit FROM sales;

--total number of orders
SELECT COUNT(*) as total_orders FROM sales;

--total revenue as per regions
SELECT REGION, sum(REVENUE) as total_revenue FROM sales GROUP BY REGION;

--total revenue as per regions arrange in descending order to know highest selling in which region 
SELECT REGION, sum(REVENUE) as total_revenue FROM sales GROUP BY REGION order by total_revenue DESC;

--total profit as per region arranged in descending order to know highest profit from which region
SELECT REGION, sum(PROFIT) as total_PROFIT FROM sales GROUP BY REGION ORDER BY TOTAL_PROFIT DESC;

--higest revenue from which product
SELECT PRODUCT, sum(REVENUE) as total_revenue from sales GROUP by PRODUCT order by total_revenue desc;

--highest margin from product
SELECT PRODUCT, avg(PROFIT/REVENUE) as avg_margin from sales GROUP by PRODUCT HAVING avg_margin < 0.25;

--using month clause to know monthly sales and revenue
SELECT month(ORDER_DATE) as month, sum(REVENUE) as monthly_revenue from sales GROUP by month(order_date);

--monthly sales and revenue order by month
SELECT month(ORDER_DATE) as month, sum(REVENUE) as monthly_revenue from sales GROUP by month(order_date) ORDER by month;

--to know operational efficiency proxy
SELECT (cost/revenue) as cost_ratio from sales;

--operational efficiency proxy using group by clause
SELECT (cost/revenue) as cost_ratio from sales GROUP by PRODUCT;

--operational efficiency proxy as per product
SELECT product,(cost/revenue) as cost_ratio from sales GROUP by PRODUCT;