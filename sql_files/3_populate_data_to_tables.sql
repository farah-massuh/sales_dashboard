-- populate each of the tables with their respective data and make sure data is displayed

\copy sales_canada FROM '/Users/farahmassuh/Desktop/sales_dashboard/csv_files/sales_Canada.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
SELECT * FROM sales_canada LIMIT 5;

-- customers table
\copy sales_china FROM '/Users/farahmassuh/Desktop/sales_dashboard/csv_files/sales_China.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
SELECT * FROM sales_china LIMIT 5;

-- inventory table
\copy sales_india FROM '/Users/farahmassuh/Desktop/sales_dashboard/csv_files/sales_India.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
SELECT * FROM sales_india LIMIT 5;

-- order_items table
\copy sales_nigeria FROM '/Users/farahmassuh/Desktop/sales_dashboard/csv_files/sales_Nigeria.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
SELECT * FROM sales_nigeria LIMIT 5;

-- orders table
\copy sales_uk FROM '/Users/farahmassuh/Desktop/sales_dashboard/csv_files/sales_UK.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
SELECT * FROM sales_uk LIMIT 5;

-- payments table
\copy sales_us FROM '/Users/farahmassuh/Desktop/sales_dashboard/csv_files/sales_US.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
SELECT * FROM sales_us LIMIT 5;