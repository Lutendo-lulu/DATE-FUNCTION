-- Databricks notebook source
SELECT *
FROM retail.sales.dataset
LIMIT 100; 

SELECT Date AS purchase_date,
       YEAR(Date) AS year_of_purchase,-- EXTRACTS THE YEAR ON YOUR DATE COLUMN
       MONTH(Date) AS month_of_purchase, -- EXTRACT THE MONTH ON YOUR DATE COLUMN 
       MONTHNAME(Date) AS month_name_of_purchase,
       DAY(Date) AS day_of_purchase,
       DAYNAME(Date) AS day_name,

        CASE
           WHEN day_name IN ('Sun', 'Sat' ) THEN 'Weekend'
           ELSE 'Weekday'
        END AS day_classification,
        COUNT(DISTINCT `Customer ID`) AS number_of_customers,
        COUNT(DISTINCT `Transaction ID`) AS number_of_sales,
        SUM(Quantity) AS number_of_units_sold,
        SUM(`Total Amount`) AS total_revenue
FROM retail.sales.dataset
WHERE Date BETWEEN '2023-01-01' AND '2023-01-31' 
  AND Gender = 'Male'
  AND `Product Category` IN ('Electronics')
GROUP BY Date, YEAR(Date), MONTH(Date), MONTHNAME(Date), DAY(Date), DAYNAME(Date),
         CASE
           WHEN DAYNAME(Date) IN ('Sun', 'Sat' ) THEN 'Weekend'
           ELSE 'Weekday'
         END
LIMIT 10;
 
