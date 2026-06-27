-- Blinkit Retail Sales Analysis
-- Author : Akhilesh Pratap Singh
-- Tool : MySQL 8.0
-- Database : blinkit_db

USE blinkit_db;

-- DATA PREVIEW

SELECT *
FROM BlinkIT_Grocery_Data;

-- DATA CLEANING

UPDATE BlinkIT_Grocery_Data
SET `Item Fat Content` =
CASE
    WHEN `Item Fat Content` IN ('LF','low fat') THEN 'Low Fat'
    WHEN `Item Fat Content`='reg' THEN 'Regular'
    ELSE `Item Fat Content`
END;


-- KPI CALCULATIONS

SELECT
ROUND(AVG(Sales),2) AS Average_Sales
FROM BlinkIT_Grocery_Data;

SELECT
COUNT(*) AS Number_of_Items
FROM BlinkIT_Grocery_Data;

SELECT
ROUND(AVG(Rating),2) AS Average_Rating
FROM BlinkIT_Grocery_Data;

SELECT
`Item Fat Content`,
ROUND(SUM(Sales),2) AS Total_Sales
FROM BlinkIT_Grocery_Data
GROUP BY `Item Fat Content`
ORDER BY Total_Sales DESC;

SELECT
`Item Fat Content`,
ROUND(AVG(Sales),2) AS Average_Sales
FROM BlinkIT_Grocery_Data
GROUP BY `Item Fat Content`
ORDER BY Average_Sales DESC;

SELECT
`Item Fat Content`,
COUNT(*) AS Number_of_Items
FROM BlinkIT_Grocery_Data
GROUP BY `Item Fat Content`;

SELECT
`Item Fat Content`,
ROUND(AVG(Rating),2) AS Average_Rating
FROM BlinkIT_Grocery_Data
GROUP BY `Item Fat Content`;

SELECT
`Item Type`,
ROUND(SUM(Sales),2) AS Total_Sales
FROM BlinkIT_Grocery_Data
GROUP BY `Item Type`
ORDER BY Total_Sales DESC;

SELECT
`Item Type`,
ROUND(AVG(Sales),2) AS Average_Sales
FROM BlinkIT_Grocery_Data
GROUP BY `Item Type`
ORDER BY Average_Sales DESC;

SELECT
`Outlet Location Type`,
`Item Fat Content`,
ROUND(SUM(Sales),2) AS Total_Sales
FROM BlinkIT_Grocery_Data
GROUP BY
`Outlet Location Type`,
`Item Fat Content`
ORDER BY
`Outlet Location Type`;



SELECT
`Outlet Location Type`,
ROUND(SUM(Sales),2) AS Total_Sales
FROM BlinkIT_Grocery_Data
GROUP BY `Outlet Location Type`
ORDER BY Total_Sales DESC;

SELECT
`Outlet Type`,
ROUND(SUM(Sales),2) AS Total_Sales,
ROUND(AVG(Sales),2) AS Average_Sales,
COUNT(*) AS Number_of_Items,
ROUND(AVG(Rating),2) AS Average_Rating
FROM BlinkIT_Grocery_Data
GROUP BY `Outlet Type`
ORDER BY Total_Sales DESC;









