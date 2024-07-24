-- MYSQL WALMART SALES ANALYSIS PROJECT -1: 23JULY2024 to 
CREATE DATABASE IF NOT EXISTS WALMART;
USE WALMART;
-- Create a table :sales 
create table sales(
invoice_id VARCHAR(30) NOT NULL PRIMARY KEY,
    branch VARCHAR(5) NOT NULL,
    city VARCHAR(30) NOT NULL,
    customer_type VARCHAR(30) NOT NULL,
    gender VARCHAR(30) NOT NULL,
    product_line VARCHAR(100) NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    quantity INT NOT NULL,
    tax_pct FLOAT(6,4) NOT NULL,
    total DECIMAL(12, 4) NOT NULL,
    date DATETIME NOT NULL,
    time TIME NOT NULL,
    payment VARCHAR(15) NOT NULL,
    cogs DECIMAL(10,2) NOT NULL,
    gross_margin_pct FLOAT(11,9),
    gross_income DECIMAL(12, 4),
    rating FLOAT(2, 1)
);

SELECT * FROM walmart.sales;
-- -------------------#Data cleaning :---------------------------------------------


-- -----------------------------# Feature engineering :---------------------------------------
-- time_of day:
SELECT
	time,
	(CASE
		WHEN `time` BETWEEN "00:00:00" AND "12:00:00" THEN "Morning"
        WHEN `time` BETWEEN "12:01:00" AND "16:00:00" THEN "Afternoon"
        ELSE "Evening"
    END) AS time_of_day
FROM sales;
-- ALTER TABLE ADD THIS TIME_OF _DAY COLUMN 
ALTER TABLE sales ADD COLUMN time_of_day VARCHAR(20);
-- -- For this to work turn off safe mode for update--
-- Edit > Preferences > SQL EditoR > scroll down and toggle safe mode(unclick)
-- Reconnect to MySQL: Query > Reconnect to server THEN run this update query 
UPDATE sales
SET time_of_day = (
	CASE
		WHEN `time` BETWEEN "00:00:00" AND "12:00:00" THEN "Morning"
        WHEN `time` BETWEEN "12:01:00" AND "16:00:00" THEN "Afternoon"
        ELSE "Evening"
    END
); # time_of_daycolumnadded with values 
-- ------Add day_name column:
SELECT
	date,
	DAYNAME(date)  # dayname():It returns the name of the day for a given date value.
FROM sales;
-- alter +add columnname day_name:
ALTER TABLE sales ADD COLUMN day_name VARCHAR(10);
-- Update set with day_name=dayname(date):
UPDATE sales
SET day_name = DAYNAME(date);

-- Add month_name column:
SELECT
	date,
	MONTHNAME(date) # This function that returns the name of the month for a given date value
FROM sales;
-- alter with add column month_name:
ALTER TABLE sales ADD COLUMN month_name VARCHAR(10);
-- Update set month_name valueof monthname(date)
UPDATE sales
SET month_name = MONTHNAME(date);
-- ADDED  new columns:time_of_day,day_name and month_name.
-- -------- Feature engineering done-------

