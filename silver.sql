%sql
-- Silver: Cleaned Tables
CREATE SCHEMA IF NOT EXISTS datamodelling.silver;

CREATE OR REPLACE TABLE datamodelling.silver.sales_clean AS
SELECT *
FROM datamodelling.bronze.sales_raw
WHERE sale_id IS NOT NULL
  AND product_id IS NOT NULL
  AND customer_id IS NOT NULL
  AND quantity > 0
  AND price > 0;

CREATE OR REPLACE TABLE datamodelling.silver.products_clean AS
SELECT DISTINCT *
FROM datamodelling.bronze.products_raw
WHERE product_id IS NOT NULL;

CREATE OR REPLACE TABLE datamodelling.silver.sales_enriched AS
SELECT
    s.sale_id,
    s.product_id,
    p.product_name,
    p.category,
    s.customer_id,
    s.quantity,
    s.price,
    (s.quantity * s.price) AS total_amount,
    s.sale_date
FROM datamodelling.silver.sales_clean s
LEFT JOIN datamodelling.silver.products_clean p
  ON s.product_id = p.product_id;
