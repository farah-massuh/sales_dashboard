-- adding new columns needed for data analysis


-- add a new column `total_amount` in the `sales_data` table
ALTER TABLE sales_data
ADD COLUMN total_amount NUMERIC(10,2); -- 10 digits max and 2 decimals
UPDATE sales_data
SET total_amount = (
    price_per_unit * quantity_purchased
) - discount_applied;


-- add a new column `profit` in te `sales_data` table
ALTER TABLE sales_data
ADD COLUMN profit NUMERIC(10,2);
UPDATE sales_data
SET profit = total_amount - (cost_price + quantity_purchased);


-- update year to 2025
UPDATE sales_data
SET transaction_date = TO_DATE('2025-' || TO_CHAR(transaction_date, 'Mon-DD'), 'YYYY-Mon-DD')
WHERE transaction_date <> '2024-02-29'

-- deleting the only 2024 value to keep data consistency
DELETE FROM sales_data
WHERE transaction_date = '2024-02-29';

