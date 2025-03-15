-- search for any NULL values in all the columns
SELECT *
FROM sales_data
WHERE
    transaction_id IS NULL OR
    date is NULL OR
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

-- 2 rows returned with NULL values: `price_per_unit` and `quantity_purchased`

-- update the NULL value for the `quanitity_purchased` column
UPDATE sales_data
SET quantity_purchased = 3
WHERE transaction_id = '00a30472-89a0-4688-9d33-67ea8ccf7aea';

-- update the NULL value for the `price_per_unit` column with its average
UPDATE sales_data
SET price_per_unit = (
    SELECT AVG(price_per_unit)
    FROM sales_data
    WHERE price_per_unit IS NOT NULL
)
WHERE transaction_id = '001898f7-b696-4356-91dc-8f2b73d09c63';


-- check for any data duplications
SELECT 
    transaction_id,
    COUNT(*)
FROM sales_data
GROUP BY transaction_id
HAVING COUNT(*) > 1;

-- no data returned (no duplicates)