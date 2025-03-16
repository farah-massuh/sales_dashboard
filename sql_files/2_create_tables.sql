-- create the tables to be added to the `sales` database

CREATE TABLE public.sales_canada
(
    transaction_id VARCHAR(50) PRIMARY KEY,
    transaction_date DATE,
    country VARCHAR(25),
    product_id VARCHAR(50),
    product_name VARCHAR(25),
    category VARCHAR(25),
    price_per_unit FLOAT,
    quantity_purchased INT,
    cost_price FLOAT,
    discount_applied FLOAT,
    payment_method VARCHAR(25),
    customer_age_group VARCHAR(25),
    customer_gender VARCHAR(25),
    store_location VARCHAR(25),
    sales_representative VARCHAR(50)
);

CREATE TABLE public.sales_china
(
    transaction_id VARCHAR(50) PRIMARY KEY,
    transaction_date DATE,
    country VARCHAR(25),
    product_id VARCHAR(50),
    product_name VARCHAR(25),
    category VARCHAR(25),
    price_per_unit FLOAT,
    quantity_purchased INT,
    cost_price FLOAT,
    discount_applied FLOAT,
    payment_method VARCHAR(25),
    customer_age_group VARCHAR(25),
    customer_gender VARCHAR(25),
    store_location VARCHAR(25),
    sales_representative VARCHAR(50)
);

CREATE TABLE public.sales_ecuador
(
    transaction_id VARCHAR(50) PRIMARY KEY,
    transaction_date DATE,
    country VARCHAR(25),
    product_id VARCHAR(50),
    product_name VARCHAR(25),
    category VARCHAR(25),
    price_per_unit FLOAT,
    quantity_purchased INT,
    cost_price FLOAT,
    discount_applied FLOAT,
    payment_method VARCHAR(25),
    customer_age_group VARCHAR(25),
    customer_gender VARCHAR(25),
    store_location VARCHAR(25),
    sales_representative VARCHAR(50)
);

CREATE TABLE public.sales_india
(
    transaction_id VARCHAR(50) PRIMARY KEY,
    transaction_date DATE,
    country VARCHAR(25),
    product_id VARCHAR(50),
    product_name VARCHAR(25),
    category VARCHAR(25),
    price_per_unit FLOAT,
    quantity_purchased INT,
    cost_price FLOAT,
    discount_applied FLOAT,
    payment_method VARCHAR(25),
    customer_age_group VARCHAR(25),
    customer_gender VARCHAR(25),
    store_location VARCHAR(25),
    sales_representative VARCHAR(50)
);

CREATE TABLE public.sales_nigeria
(
    transaction_id VARCHAR(50) PRIMARY KEY,
    transaction_date DATE,
    country VARCHAR(25),
    product_id VARCHAR(50),
    product_name VARCHAR(25),
    category VARCHAR(25),
    price_per_unit FLOAT,
    quantity_purchased INT,
    cost_price FLOAT,
    discount_applied FLOAT,
    payment_method VARCHAR(25),
    customer_age_group VARCHAR(25),
    customer_gender VARCHAR(25),
    store_location VARCHAR(25),
    sales_representative VARCHAR(50)
);

CREATE TABLE public.sales_uk
(
    transaction_id VARCHAR(50) PRIMARY KEY,
    transaction_date DATE,
    country VARCHAR(25),
    product_id VARCHAR(50),
    product_name VARCHAR(25),
    category VARCHAR(25),
    price_per_unit FLOAT,
    quantity_purchased INT,
    cost_price FLOAT,
    discount_applied FLOAT,
    payment_method VARCHAR(25),
    customer_age_group VARCHAR(25),
    customer_gender VARCHAR(25),
    store_location VARCHAR(25),
    sales_representative VARCHAR(50)
);

CREATE TABLE public.sales_us
(
    transaction_id VARCHAR(50) PRIMARY KEY,
    transaction_date DATE,
    country VARCHAR(25),
    product_id VARCHAR(50),
    product_name VARCHAR(25),
    category VARCHAR(25),
    price_per_unit FLOAT,
    quantity_purchased INT,
    cost_price FLOAT,
    discount_applied FLOAT,
    payment_method VARCHAR(25),
    customer_age_group VARCHAR(25),
    customer_gender VARCHAR(25),
    store_location VARCHAR(25),
    sales_representative VARCHAR(50)
);

-- set ownership to the tables to `postgres` user
ALTER TABLE public.sales_canada OWNER to postgres;
ALTER TABLE public.sales_china OWNER to postgres;
ALTER TABLE public.sales_ecuador OWNER to postgres;
ALTER TABLE public.sales_india OWNER to postgres;
ALTER TABLE public.sales_nigeria OWNER to postgres;
ALTER TABLE public.sales_uk OWNER to postgres;
ALTER TABLE public.sales_us OWNER to postgres;


-- combine all previous table into one
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

