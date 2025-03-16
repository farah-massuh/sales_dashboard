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
-- no NULL values returned


-- check for any data duplicates
SELECT 
    transaction_id,
    COUNT(*)
FROM sales_data
GROUP BY transaction_id
HAVING COUNT(*) > 1;
-- no duplicates returned