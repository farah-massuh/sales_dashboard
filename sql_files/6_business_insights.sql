-- analysing sales revenues
SELECT
    country,
    SUM(total_amount) AS total_revenue,
    SUM(profit) AS total_profit
FROM sales_data
WHERE date BETWEEN '2025-01-10' AND '2025-01-14' -- weekly report
GROUP BY country
ORDER BY total_revenue desc;


-- top 5 best-selling products
SELECT
    product_name,
    SUM(quantity_purchased) AS total_units_sold
FROM sales_data
WHERE date BETWEEN '2025-02-10' AND '2025-02-14' -- weekly report
GROUP BY product_name
ORDER BY total_units_sold desc
LIMIT 5;
