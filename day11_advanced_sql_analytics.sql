--select profit margin more than average margin using sub queries
SELECT PRODUCT, avg(PROFIT/REVENUE) AS avg_margin from sales GROUP BY PRODUCT HAVING avg_margin > (SELECT avg(PROFIT/REVENUE) from sales);

--select records whose cost is more than 0.8 times than revenue
SELECT * FROM sales WHERE COST > REVENUE * 0.8;

--amount of profit condition using case clause
SELECT Order_ID, Revenue, Profit, CASE WHEN Profit > 1000 THEN 'High Profit' WHEN Profit BETWEEN 500 AND 1000 THEN 'Medium Profit' ELSE 'Low Profit' END AS Profit_Category FROM sales;

--selecting total profit using group clause on region and knowing how much the sales 
SELECT REGION, SUM(PROFIT) AS TOTAL_PROFIT, CASE WHEN SUM(PROFIT) > 5000 THEN 'STRONG' ELSE 'WEAK' END AS PERFORMANCE FROM SALES GROUP BY REGION;

--selecting top selling product of the business 
SELECT PRODUCT, sum(REVENUE) as total_revenue FROM sales GROUP by PRODUCT ORDER by total_REVENUE DESC LIMIT 1;