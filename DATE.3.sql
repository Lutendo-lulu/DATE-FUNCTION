-- Databricks notebook source
--1.CURRENT DATE()
SELECT current_date() AS today_date; -- THIS FUNCTION GIVES US TODAY'S DATE
SELECT current_date()-1 AS yesterday_date; --THIS FUNCTION GIVES ME YESTERDAYS DATE BECAUSE I PUT A MINUS 1

SELECT current_timestamp() AS datetime;-- THIS FUNCTION IS USED TO GET THE CURRENT DATE AND TIME

--TO_DATE(string, format) - Converts a string(text/words) to date
SELECT TO_DATE('2026-06-03') AS dt; 

--TO CHAR()/date_format(): Convert a date into a string(text)
SELECT current_date() AS today_dt,
       date_format(current_date(), 'yyyyMM') AS month_id;

--CONVERTING TO YOUR TIMEZONE
SELECT CONVERT_TIMEZONE('+02:00', CURRENT_TIMESTAMP()) AS datetime;
 

--DATEDIFF(end_date, start_date) - we use this function to calculate the difference between two dates
SELECT DATEDIFF(current_date (), current_date() -3); 

--DATE_SUB(date, number of days) - It subtracts the number of days from your date column
SELECT date_sub(current_date(), 2) AS trans_date;

--DATE_ADD(date, number of days) - It adds the number of days from the date column
SELECT date_add(to_date('2026-01-01'), 5) AS break_up_date;
