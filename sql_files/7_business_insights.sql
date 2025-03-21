-- analyze sales revenue for entirity of 2024
SELECT
    country,
    SUM(total_amount) AS total_revenue,
    SUM(profit) AS total_profit
FROM sales_data
GROUP BY country
ORDER BY total_revenue desc;


-- top 5 best-selling products for all of 2024
SELECT
    product_name,
    SUM(quantity_purchased) AS total_units_sold
FROM sales_data
GROUP BY product_name
ORDER BY total_units_sold desc
LIMIT 5;


-- top 5 sales representatives for all of 2024
SELECT
    sales_representative,
    SUM(total_amount) AS total_revenue
FROM sales_data
GROUP BY sales_representative
ORDER BY total_revenue DESC
LIMIT 5;


-- top 5 locations based on sales and profit for all of 2024
SELECT
    store_location,
    SUM(total_amount) AS total_sales,
    SUM(profit) AS total_profit
FROM sales_data
GROUP BY store_location
LIMIT 5;

-- descriptive analysis for total_amount and profit for all 2024
SELECT
    MIN(total_amount) AS min_sales_value,
    MAX(total_amount) AS max_sales_value,
    AVG(total_amount) AS avg_sales_value,
    SUM(total_amount) AS total_sales,
    MIN(profit) AS min_profit,
    MAX(profit) AS max_profit,
    AVG(profit) AS avg_profit,
    SUM(profit) AS total_profit
FROM sales_data