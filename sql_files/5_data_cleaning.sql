-- making sure no NULL values or duplicates exist in the dataset

-- search for any NULL values in all the columns
SELECT *
FROM sales_data
WHERE
    transaction_id IS NULL OR
    transaction_date is NULL OR
    country is NULL OR
    product_id is NULL OR
    product_name is NULL OR
    category is NULL OR
    price_per_unit IS NULL OR
    quantity_purchased IS NULL OR
    cost_price IS NULL OR
    discount_applied IS NULL OR
    payment_method IS NULL OR
    customer_age_group IS NULL OR
    customer_gender IS NULL OR
    store_location IS NULL OR
    sales_representative IS NULL;
/*
- transcation_date has nulls so the rows will be dropped
- country has nulls so the rows will be dropped
- category has nulls so the rows will be dropped
- price_per_unit, quantity_purchased, cost_price, and discount_applied will have their respective averages
- payment_method has null so the rows will be dropped
- customer_gender, store_location, and sales_representative have nulls and the rows will be dropped
*/

DELETE FROM sales_data
WHERE
    transaction_date IS NULL
    OR country IS NULL
    OR product_id IS NULL
    OR product_name IS NULL
    OR category IS NULL
    OR payment_method IS NULL
    OR customer_age_group IS NULL
    OR customer_gender IS NULL
    OR store_location IS NULL
    OR sales_representative IS NULL;

-- updating null value with the average in the price_per_unit column
UPDATE sales_data
SET price_per_unit = (
    SELECT AVG(price_per_unit)
    FROM sales_data
    WHERE price_per_unit IS NOT NULL
)
WHERE price_per_unit IS NULL;

-- updating null value with the average in the quantity_purchased column
UPDATE sales_data
SET quantity_purchased = (
    SELECT AVG(quantity_purchased)
    FROM sales_data
    WHERE quantity_purchased IS NOT NULL
)
WHERE quantity_purchased IS NULL;

-- updating null value with the average in the cost_price column
UPDATE sales_data
SET cost_price = (
    SELECT AVG(cost_price)
    FROM sales_data
    WHERE cost_price IS NOT NULL
)
WHERE cost_price IS NULL;

-- updating null value with the average in the discount_applied column
UPDATE sales_data
SET discount_applied = (
    SELECT AVG(discount_applied)
    FROM sales_data
    WHERE discount_applied IS NOT NULL
)
WHERE discount_applied IS NULL;

-- checking for any data duplicates
SELECT 
    transaction_id,
    COUNT(*)
FROM sales_data
GROUP BY transaction_id
HAVING COUNT(*) > 1;
-- there are 2 transaction_ids with 2 duplicate data

-- removing duplicate data
DELETE FROM sales_data
WHERE ctid NOT IN ( -- ctid is a unique identifier in postgresql
    SELECT MIN(ctid)
    FROM sales_data
    GROUP BY transaction_id
);
-- duplicate data removed
