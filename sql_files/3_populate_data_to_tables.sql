-- run all this in psql
-- populate each of the tables with their respective data and make sure data is displayed

-- canada
\copy sales_canada FROM '/Users/farahmassuh/Desktop/sales_dashboard/csv_files/sales_canada.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
SELECT * FROM sales_canada LIMIT 5;

-- china
\copy sales_china FROM '/Users/farahmassuh/Desktop/sales_dashboard/csv_files/sales_china.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
SELECT * FROM sales_china LIMIT 5;

-- ecuador
\copy sales_ecuador FROM '/Users/farahmassuh/Desktop/sales_dashboard/csv_files/sales_ecuador.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
SELECT * FROM sales_ecuador LIMIT 5;

-- india
\copy sales_india FROM '/Users/farahmassuh/Desktop/sales_dashboard/csv_files/sales_india.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
SELECT * FROM sales_india LIMIT 5;

-- nigeria
\copy sales_nigeria FROM '/Users/farahmassuh/Desktop/sales_dashboard/csv_files/sales_nigeria.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
SELECT * FROM sales_nigeria LIMIT 5;

-- uk
\copy sales_uk FROM '/Users/farahmassuh/Desktop/sales_dashboard/csv_files/sales_uk.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
SELECT * FROM sales_uk LIMIT 5;

-- us
\copy sales_us FROM '/Users/farahmassuh/Desktop/sales_dashboard/csv_files/sales_us.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');
SELECT * FROM sales_us LIMIT 5;