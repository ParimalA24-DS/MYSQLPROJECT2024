# MYSQLPROJECT2024
# 📊2.MYSQLPROJECT: Walmart Sales Analysis

![Walmart Sales](https://github.com/ParimalA24-DS/MYSQLPROJECT2024/blob/main/2.MySQL-Walmart-Sales-Analysis/WALMART2.gif)

## 🛒 Project Overview

This project aims to explore the Walmart Sales data to understand top-performing branches and products, sales trends of different products, and customer behavior. The goal is to study how sales strategies can be improved and optimized. The dataset was obtained from the Kaggle Walmart Sales Forecasting Competition.

> "In this recruiting competition, job-seekers are provided with historical sales data for 45 Walmart stores located in different regions. Each store contains many departments, and participants must project the sales for each department in each store. To add to the challenge, selected holiday markdown events are included in the dataset. These markdowns are known to affect sales, but it is challenging to predict which departments are affected and the extent of the impact." - Kaggle

## 🎯 Purposes Of The Project

The primary aim of this project is to gain insight into Walmart's sales data to understand the different factors affecting sales across various branches.

## 📊 About The Data

The dataset was obtained from the Kaggle Walmart Sales Forecasting Competition. This dataset contains sales transactions from three different branches of Walmart, respectively located in Mandalay, Yangon, and Naypyitaw. The data contains 17 columns and 1000 rows:

| Column                   | Description                         | Data Type       |
|--------------------------|-------------------------------------|-----------------|
| invoice_id               | Invoice of the sales made           | VARCHAR(30)     |
| branch                   | Branch at which sales were made     | VARCHAR(5)      |
| city                     | The location of the branch          | VARCHAR(30)     |
| customer_type            | The type of the customer            | VARCHAR(30)     |
| gender                   | Gender of the customer              | VARCHAR(10)     |
| product_line             | Product line of the product sold    | VARCHAR(100)    |
| unit_price               | The price of each product           | DECIMAL(10, 2)  |
| quantity                 | The amount of the product sold      | INT             |
| VAT                      | The amount of tax on the purchase   | FLOAT(6, 4)     |
| total                    | The total cost of the purchase      | DECIMAL(10, 2)  |
| date                     | The date on which the purchase was made | DATE       |
| time                     | The time at which the purchase was made | TIMESTAMP |
| payment_method           | The payment method used             | VARCHAR(20)     |
| cogs                     | Cost Of Goods Sold                  | DECIMAL(10, 2)  |
| gross_margin_percentage  | Gross margin percentage             | FLOAT(11, 9)    |
| gross_income             | Gross Income                        | DECIMAL(10, 2)  |
| rating                   | Rating                              | FLOAT(2, 1)     |

## 📈 Analysis List

### Product Analysis
- Conduct analysis on the data to understand the different product lines, the products lines performing best, and the product lines that need improvement.

### Sales Analysis
- Analyze sales trends of products to measure the effectiveness of each sales strategy and determine necessary modifications to increase sales.

### Customer Analysis
- Uncover different customer segments, purchase trends, and the profitability of each customer segment.

## 🛠️ Approach Used

### Data Wrangling
- Inspect the data to detect NULL values and use data replacement methods to handle missing or NULL values.
- Build a database and create tables to insert the data.

### Feature Engineering
- Add new columns like `time_of_day`, `day_name`, and `month_name` to gain insights into sales patterns.

### Exploratory Data Analysis (EDA)
- Perform EDA to answer the project's questions and objectives.

## 📊 Conclusion

### Business Questions To Answer

**Generic Questions**
- How many unique cities are in the data?
- In which city is each branch?

**Product**
- How many unique product lines are in the data?
- What is the most common payment method?
- What is the most selling product line?
- What is the total revenue by month?
- What month had the largest COGS?
- What product line had the largest revenue?
- Which city has the largest revenue?
- Which product line had the largest VAT?
- Which branch sold more products than average?
- What is the most common product line by gender?
- What is the average rating of each product line?

**Sales**
- Number of sales made in each time of the day per weekday.
- Which customer types bring the most revenue?
- Which city has the largest tax percentage/VAT?
- Which customer type pays the most in VAT?

**Customer**
- How many unique customer types are in the data?
- How many unique payment methods are in the data?
- What is the most common customer type?
- Which customer type buys the most?
- What is the gender distribution per branch?
- Which time of the day do customers give most ratings?
- Which day of the week has the best average ratings per branch?

**Revenue And Profit Calculations**
- COGS = unit_price * quantity
- VAT = 5% * COGS
- Total = VAT + COGS
- Gross Profit = Total - COGS
- Gross Margin = Gross Income / Total Revenue

### Example Calculation:
- Unit Price = 45.79
- Quantity = 7
- COGS = 45.79 * 7 = 320.53
- VAT = 5% * 320.53 = 16.0265
- Total = 320.53 + 16.0265 = 336.5565
- Gross Margin = 16.0265 / 336.5565 ≈ 4.76%

### Explanation of Terms and Data Types

1. **cogs (Cost of Goods Sold)**:
   - **Description**: The total cost to produce or buy the goods sold. Includes materials, labor, and overhead costs.
   - **Data Type**: `DECIMAL(10,2)`
     - **DECIMAL**: Used for exact numbers, good for financial data.
     - **10,2**: Up to 10 digits with 2 decimal places (e.g., `12345678.90`).

2. **gross_margin_pct (Gross Margin Percentage)**:
   - **Description**: The percentage of sales revenue left after covering the cost of goods sold. It shows profitability.
   - **Data Type**: `FLOAT(11,9)`
     - **FLOAT**: Used for approximate numbers, good for measurements.
     - **11,9**: Up to 11 digits with 9 decimal places (e.g., `12.345678901`).

3. **gross_income (Gross Income)**:
   - **Description**: Total income from sales before expenses. Calculated as sales revenue minus the cost of goods sold.
   - **Data Type**: `DECIMAL(12,4)`
     - **DECIMAL**: Used for exact numbers.
     - **12,4**: Up to 12 digits with 4 decimal places (e.g., `12345678.1234`).

4. **rating**:
   - **Description**: Customer rating of the product or service, usually from feedback or surveys.
   - **Data Type**: `FLOAT(2,1)`
     - **FLOAT**: Used for approximate numbers.
     - **2,1**: Up to 2 digits with 1 decimal place (e.g., `4.5`).

### Data Type Differences

- **DECIMAL vs. FLOAT**:
  - **DECIMAL**: For precise values, good for financial data to avoid rounding errors.
  - **FLOAT**: For approximate values, suitable for scientific and statistical data where exactness is less crucial.

## 📫 How to Reach Me

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/parimalautade)
[![Email](https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:parimalautade24@gmail.com)


## 🏆 Achievements

[![GitHub Followers](https://img.shields.io/github/followers/ParimalA24-DS?label=Followers&style=social)](https://github.com/ParimalA24-DS?tab=followers)
[![GitHub Stars](https://img.shields.io/github/stars/ParimalA24-DS?label=Stars&style=social)](https://github.com/ParimalA24-DS?tab=repositories)
[![Top LinkedIn Voice](https://img.shields.io/badge/Top_LinkedIn_Voice_2x-blue?style=flat&logo=linkedin)](https://www.linkedin.com/in/parimalautade)
![Naukri SQL Badge](https://img.shields.io/badge/Naukri_SQL_Badge-blue?style=flat&logo=naukri)
[![5th Finalist International Paper Publications](https://img.shields.io/badge/5th_Finalist_International_Paper_Publications-green?style=flat)](https://github.com/ParimalA24-DS/ParimalA24-DS/blob/main/DSPROFILEIMAGES/my%20achievememnt%20in%202012%20final%20paper.PNG)

