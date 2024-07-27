-- 4 TH :WALMART SALES PRDUCT RELATED QUSTIONS AND ANSWERS :
SELECT * FROM walmart.sales;
-- --------------------------------------------------------------------------------
-- ----------------------------II. Product:Related questions -------------------------------
-- ------------------------------------------------------------------------------------
-- 1. How many unique product lines does the data have?
SELECT DISTINCT product_line 
from sales;
# 6 unique product_line
SELECT count(DISTINCT product_line) from sales;  #6

-- 2. What is the most selling product line?
SELECT
	SUM(quantity) as qty,
    product_line
FROM sales
GROUP BY product_line
ORDER BY qty DESC;       # most selling product is Health & beauty =92

-- 3. What is the most common payment methods?
SELECT payment, count(payment) as cnt 
 FROM sales
 group by payment # Ewallet payment 
 order by cnt desc;  
 
select count(invoice_id) from sales; #74 data rows 
-- 4.What is the total revenue by month
SELECT
	month_name AS month,
	SUM(total) AS total_revenue
FROM sales
GROUP BY month_name 
ORDER BY total_revenue; -- March	8711.5455 
-- January	9277.9575
-- February	9543.2085
SELECT *FROM SALES;

-- 5.What month had the largest COGS?-- COGS to determine how much it costs Walmart to sell its products.
-- Direct cost to make or buy the product.:(units_price * quantity_sold)
SELECT
	month_name AS month,
	SUM(cogs) AS cogs
FROM sales
GROUP BY month_name 
ORDER BY cogs desc;

-- 6.What product line had the largest revenue?
select *from sales ;     
SELECT
	product_line,
	sum(total) as total_revenue
FROM sales
GROUP BY product_line
ORDER BY total_revenue DESC;        
-- 7.Which city has the largest revenue?
SELECT
	branch,
	city,
	SUM(total) AS total_revenue
FROM sales
GROUP BY city, branch 
ORDER BY total_revenue desc;  #Yangon

-- 8. What product line had the largest VAT?- VALUE ADDED TAX
SELECT
	product_line,
	AVG(tax_pct) as avg_tax
FROM sales
GROUP BY product_line
ORDER BY avg_tax DESC
LIMIT 1;  #SPORTS :22.648 has paid largest vat

/* SELECT
	product_line,
	AVG(VAT) as avg_tax
FROM sales
GROUP BY product_line
ORDER BY avg_tax DESC; */ #VAT column NOT PRESENT HERE .
select *FROM SALES;


-- 9.-- Which branch sold more products than average product sold?--
select branch ,
sum(quantity) as qty 
from sales 
GROUP BY branch
HAVING SUM(quantity) > (SELECT AVG(quantity) FROM sales); #A BRANCH 

-- 10. What is the most common product line by gender?--
select product_line,gender,
count(gender) as total_cnt 
from sales 
GROUP BY product_line,gender
ORDER BY total_cnt desc
#limit 1;  # health and beauty ,gender male =9

/*-- use window function to get accurate results:
SWITH RankedProductLines AS (
    SELECT product_line, gender, COUNT(*) as total_cnt,
           ROW_NUMBER() OVER (PARTITION BY gender ORDER BY COUNT(*) DESC) as rank
    FROM sales
    GROUP BY product_line, gender
)
SELECT product_line, gender, total_cnt
FROM RankedProductLines
WHERE rank = 1;*/

-- 11.-- What is the average rating of each product line
SELECT
product_line,
	ROUND(AVG(rating), 2) as avg_rating
FROM sales
GROUP BY product_line
ORDER BY avg_rating DESC;

-- 12.-- Fetch each product line and add a column to those product --
-- line showing "Good", "Bad". Good if its greater than average sales


