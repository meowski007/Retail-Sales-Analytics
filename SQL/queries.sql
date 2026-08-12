/*
===============================================================================
PROJECT : Executive360 - Retail Intelligence & Strategic Decision Platform
AUTHOR  : Mohak Seth
DESCRIPTION: SQL queries used for business analysis and dashboard development.
===============================================================================
*/

-- ============================================================================
-- QUERY 1 : EXECUTIVE KPI SUMMARY
-- ============================================================================
SELECT
    ROUND(SUM(Sales), 2) AS Total_Revenue,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    COUNT(DISTINCT "Order ID") AS Total_Orders,
    COUNT(DISTINCT "Customer ID") AS Total_Customers,
    ROUND(AVG(Discount) * 100, 2) AS Avg_Discount_Percent
FROM Orders;

-- ============================================================================
-- QUERY 2 : REGIONAL PERFORMANCE
-- ============================================================================
SELECT
    Region,
    ROUND(SUM(Sales),2) AS Revenue,
    ROUND(SUM(Profit),2) AS Profit,
    ROUND((SUM(Profit)/SUM(Sales))*100,2) AS Profit_Margin
FROM Orders
GROUP BY Region
ORDER BY Profit DESC;

-- ============================================================================
-- QUERY 3 : SUB-CATEGORY PROFITABILITY (FURNITURE GAPS)
-- ============================================================================
SELECT
    Category,
    "Sub-Category",
    ROUND(SUM(Sales), 2) AS Total_Revenue,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM Orders
GROUP BY Category, "Sub-Category"
ORDER BY Total_Profit ASC;

-- ============================================================================
-- QUERY 4 : THE 20% DISCOUNT CLIFF
-- ============================================================================
SELECT
    Discount,
    COUNT(DISTINCT "Order ID") AS Total_Orders,
    ROUND(SUM(Sales), 2) AS Total_Revenue,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM Orders
GROUP BY Discount
ORDER BY Discount ASC;

-- ============================================================================
-- QUERY 5 : REVENUE & PROFIT TREND OVER TIME
-- ============================================================================
SELECT
    EXTRACT(YEAR FROM "Order Date") AS Order_Year,
    EXTRACT(MONTH FROM "Order Date") AS Order_Month,
    ROUND(SUM(Sales), 2) AS Total_Revenue,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM Orders
GROUP BY EXTRACT(YEAR FROM "Order Date"), EXTRACT(MONTH FROM "Order Date")
ORDER BY Order_Year, Order_Month;

-- ============================================================================
-- QUERY 6 : CUSTOMER SEGMENT ANALYSIS
-- ============================================================================
SELECT
    Segment,
    COUNT(DISTINCT "Customer ID") AS Total_Customers,
    ROUND(SUM(Sales), 2) AS Total_Revenue,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM Orders
GROUP BY Segment
ORDER BY Total_Profit DESC;

-- ============================================================================
-- QUERY 7 : SHIPPING MODE EFFICIENCY
-- ============================================================================
SELECT
    "Ship Mode",
    COUNT(DISTINCT "Order ID") AS Total_Orders,
    ROUND(SUM(Sales), 2) AS Total_Revenue,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM Orders
GROUP BY "Ship Mode"
ORDER BY Total_Profit DESC;
