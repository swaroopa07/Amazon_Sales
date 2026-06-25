use Amazon_Sales

select * from amazon_sales

-- Total revenue and profit
select sum(total_revenue) as Total_Revenue, sum(total_profit) as Total_Profit
from amazon_sales

-- Region-wise performance
select region, sum(total_revenue) as Region_Total, sum(total_profit) as Region_Profit from Amazon_Sales
Group by region
order by Region_Profit desc

-- Country-wise top performers
SELECT top 1 country,
       SUM(total_revenue) AS tot_revenue
FROM amazon_sales
GROUP BY country
ORDER BY tot_revenue DESC


-- Best Selling Products(Best selling products)
select TOP 3 item_type, sum(total_revenue) as tot_rev, sum(total_profit) as tot_profit
from amazon_sales
group by item_type
order by tot_profit desc

-- Low performing products
select TOP 3 item_type, sum(total_revenue) as tot_rev, sum(total_profit) as tot_profit
from amazon_sales
group by item_type
order by tot_profit 

-- Logistics (Shipping analysis)
------ Average shipping time by region
select region, avg(shipping_days) as avg_shipdays from amazon_sales
group by region

----- Delayed shipments
select item_type, shipping_category
from amazon_sales
where shipping_category = 'Delayed'

---- Shipping category distribution
SELECT 
    [shipping_category],
    COUNT(*) AS Total_Orders
FROM amazon_sales
GROUP BY shipping_category;

--Profitability analysis
----Profit margin by item type
select item_type, round(sum([profit_margin_%]),2) as profit_margin
from amazon_sales
group by item_type
order by profit_margin desc

---- High revenue but low profit products
select item_type, sum(total_revenue) as tot_rev, sum(total_profit) as tot_prof
from amazon_sales
group by item_type
having sum(total_revenue) > sum(total_profit)
order by tot_rev desc

---- Online vs Offline performance
select sales_channel, sum(total_revenue) as tot_rev
from amazon_sales
group by sales_channel
order by tot_rev

---- Time-based analysis
--------Yearly trend
SELECT 
    YEAR([order_date]) AS Order_Year,
    SUM([total_revenue]) AS Revenue,
    SUM([total_profit]) AS Profit
FROM amazon_sales
GROUP BY YEAR([order_date])
ORDER BY Order_Year;

--------- Monthly trend
SELECT 
    MONTH([order_date]) AS Order_Month,
    SUM([total_revenue]) AS Revenue,
    SUM([total_profit]) AS Profit
FROM amazon_sales
GROUP BY MONTH([order_date])
ORDER BY Order_Month;

----Order priority vs performance
-------Does priority match reality?
SELECT 
    [order_priority],
    AVG(Shipping_Days) AS Avg_Shipping,
    SUM([Total_Profit]) AS Profit
FROM amazon_sales
GROUP BY [Order_Priority]
ORDER BY Avg_Shipping;