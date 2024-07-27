SELECT * FROM walmart.sales;
-- -- --------------------------------------------------------------------
-- ---------------------------- General questions ------------------------------
-- 1.How many unique cities does the data have?
-- -----------------------------------------------------------------------
SELECT distinct City FROM SALES;     # Yangon ,Mandalay ,Naypyitaw:3 cities 
  
-- 2. In which city is each branch?-- 
SELECT 
	DISTINCT city,
    branch
FROM sales;
-- -------
SELECT 
	 city,
    branch
FROM sales;
