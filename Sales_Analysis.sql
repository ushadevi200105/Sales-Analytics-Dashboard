USE sales_analytics;

SHOW TABLES;
SELECT *
FROM superstore
LIMIT 5;
SELECT SUM(Sales) AS Total_Sales
FROM superstore;
SELECT SUM(Profit) AS Total_Profit
FROM superstore;
SELECT SUM(Quantity) AS Total_Quantity_Sold
FROM superstore;
SELECT COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM superstore;
SELECT 
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity_Sold,
    COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM superstore;
SELECT 
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM superstore 
GROUP BY Category
ORDER BY Total_Sales DESC;
SELECT 
    `Sub-Category`,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM superstore
GROUP BY `Sub-Category`
ORDER BY Total_Sales DESC;
SELECT 
    `Sub-Category`,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY `Sub-Category`
HAVING SUM(Profit) < 0
ORDER BY Total_Profit ASC;
SELECT 
    Region,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM superstore
GROUP BY Region
ORDER BY Total_Sales DESC;
SELECT 
    `Product Name`,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM superstore
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;
SELECT 
    `Product Name`,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY `Product Name`
HAVING SUM(Profit) < 0
ORDER BY Total_Profit ASC
LIMIT 10;
SELECT 
    `Customer Name`,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM superstore
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;
SELECT 
    YEAR(`Order Date`) AS Order_Year,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY YEAR(`Order Date`)
ORDER BY Order_Year;
DESCRIBE superstore;
SELECT 
    Discount,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Discount
ORDER BY Discount;
SELECT 
    `Ship Mode`,
    COUNT(*) AS Total_Transactions,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY `Ship Mode`
ORDER BY Total_Sales DESC;
SELECT 
    `Ship Mode`,
    ROUND(AVG(DATEDIFF(`Ship Date`, `Order Date`)), 2) AS Avg_Shipping_Days
FROM superstore
GROUP BY `Ship Mode`
ORDER BY Avg_Shipping_Days;