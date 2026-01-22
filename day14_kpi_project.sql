-- view dataset
SELECT * from sales;

-- total revenue, cost, profit
SELECT sum(REVENUE), sum(COST), sum(PROFIT) FROM sales;

-- profit margin calculation
SELECT (sum(PROFIT)/sum(REVENUE))*100 AS PROFIT_MARGIN FROM sales;

-- total revenue as per region
SELECT REGION, sum(REVENUE) FROM sales GROUP by REGION ORDER BY REVENUE DESC;

--total revenue as per product
SELECT PRODUCT, sum(REVENUE) from sales GROUP BY REGION ORDER BY REVENUE DESC;

--monthly revenue as per month
SELECT month(order_date) as month, sum(REVENUE) as monthly_revenue FROM sales GROUP by month(order_date) ORDER BY month;