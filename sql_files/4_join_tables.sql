-- combine all tables into one

CREATE TABLE public.sales_data AS
SELECT * FROM sales_canada
UNION ALL
SELECT * FROM sales_china
UNION ALL
SELECT * FROM sales_ecuador
UNION ALL
SELECT * FROM sales_india
UNION ALL
SELECT * FROM sales_nigeria
UNION ALL
SELECT * FROM sales_uk
UNION ALL
SELECT * FROM sales_us;

-- set ownership to new table
ALTER TABLE public.sales_data OWNER to postgres;