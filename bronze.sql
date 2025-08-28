%sql
-- Bronze: Raw Tables
CREATE SCHEMA IF NOT EXISTS datamodelling.bronze;

CREATE OR REPLACE TABLE datamodelling.bronze.sales_raw (
    sale_id INT,
    product_id INT,
    customer_id INT,
    quantity INT,
    price DECIMAL(10,2),
    sale_date DATE
);

INSERT INTO datamodelling.bronze.sales_raw VALUES
  (1, 101, 201, 2, 50.00, '2025-01-10'),
  (2, 102, 202, 1, 30.00, '2025-01-12'),
  (3, 103, 203, 4, 20.00, '2025-01-15'),
  (4, 101, 204, 3, 50.00, '2025-01-17'),
  (5, 102, 205, 2, 30.00, '2025-01-19'),
  (6, 104, 206, 1, 100.00, '2025-01-20'),
  (7, 105, 207, 5, 10.00, '2025-01-21'),
  (8, 103, 208, 2, 20.00, '2025-01-22'),
  (9, 104, 209, 3, 100.00, '2025-01-23'),
  (10, 105, 210, 6, 10.00, '2025-01-25');

CREATE OR REPLACE TABLE datamodelling.bronze.products_raw (
    product_id INT,
    product_name STRING,
    category STRING
);

INSERT INTO datamodelling.bronze.products_raw VALUES
  (101, 'Laptop', 'Electronics'),
  (102, 'Headphones', 'Electronics'),
  (103, 'Book', 'Stationery'),
  (104, 'Phone', 'Electronics'),
  (105, 'Pen', 'Stationery');
