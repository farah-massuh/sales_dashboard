-- analyze sales revenue
SELECT
    country,
    SUM(total_amount) AS total_revenue,
    SUM(profit) AS total_profit
FROM sales_data
WHERE transaction_date BETWEEN '2025-03-01' AND '2025-03-07' -- weekly report
GROUP BY country
ORDER BY total_revenue desc;


-- top 5 best-selling products
SELECT
    product_name,
    country,
    SUM(quantity_purchased) AS total_units_sold
FROM sales_data
WHERE transaction_date BETWEEN '2025-03-01' AND '2025-03-07' -- weekly report
GROUP BY product_name, country
ORDER BY total_units_sold desc
LIMIT 5;


-- top 5 sales representatives
SELECT
    sales_representative,
    SUM(total_amount) AS total_revenue
FROM sales_data
WHERE transaction_date BETWEEN '2025-03-01' AND '2025-03-07'
GROUP BY sales_representative
ORDER BY total_revenue DESC
LIMIT 5;