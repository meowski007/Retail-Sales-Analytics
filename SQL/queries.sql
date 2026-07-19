/*
===============================================================================
PROJECT : Executive360 - Retail Intelligence & Strategic Decision Platform

AUTHOR  : Mohak Seth

DESCRIPTION:
This file contains all SQL queries used for business analysis and dashboard
development.

===============================================================================
*/

-- ============================================================================
-- QUERY 1 : EXECUTIVE KPI SUMMARY
-- ============================================================================
-- Business Question:
-- What is the overall health of the business?

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
-- Business Question:
-- Which regions generate the highest overall profit?

SELECT
    Region,
    ROUND(SUM(Sales),2) AS Revenue,
    ROUND(SUM(Profit),2) AS Profit,
    ROUND((SUM(Profit)/SUM(Sales))*100,2) AS Profit_Margin
FROM Orders
GROUP BY Region
ORDER BY Profit DESC;