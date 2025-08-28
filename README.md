# LiteBridge Sales Data Engineering Project

## 🚀 Project Overview
This project demonstrates a **full end-to-end sales data engineering pipeline** using **Databricks SQL**. It simulates a real-world workflow with **Bronze → Silver → Gold** layers and generates **interactive dashboards** for business insights.  

**Project Goals:**  
- Build a scalable **data pipeline** from raw sales data to clean, enriched datasets.  
- Demonstrate **data transformation and aggregation** using SQL.  
- Create **analytics tables** to enable insights on revenue, product performance, and customer behavior.  
- Produce **dashboards** for visual storytelling of business metrics.  

---

## 🏗️ Project Workflow

### 1️⃣ Bronze Layer (Raw Data)
- Contains raw sales and product tables (`sales_raw`, `products_raw`)  
- Data includes:
  - `sale_id`, `product_id`, `customer_id`, `quantity`, `price`, `sale_date`
  - Product details: `product_name`, `category`  
- Goal: simulate ingestion of raw data into the system.

### 2️⃣ Silver Layer (Cleaned & Enriched)
- Cleaned tables (`sales_clean`, `products_clean`) with validation: no nulls, no negative values.  
- Enriched table (`sales_enriched`) combining sales + product info, adding `total_amount`.  
- Goal: prepare high-quality curated data ready for analytics.

### 3️⃣ Gold Layer (Analytics)
- Aggregated tables for business insights:
  - `gold_revenue_by_product` → total revenue & units by product.
  - `gold_monthly_revenue` → monthly revenue trends.
  - `gold_category_performance` → revenue by category.
  - `gold_top_customers` → top 10 customers by spending.  
- Goal: provide **decision-ready datasets** for visualization & reporting.

---

## 📊 Dashboards
- **Revenue by Product:** Bar chart of total revenue per product.  (https://github.com/AndilePingo/litebridge_sales_project/blob/main/Monthly_Revenue%20.png)
- **Monthly Revenue Trend:** Line chart showing revenue trend over months.  (https://github.com/AndilePingo/litebridge_sales_project/blob/main/Total%20Units%20sold%20by%20product.png)
- **Category Performance:** Bar or pie chart showing category contributions.  (https://github.com/AndilePingo/litebridge_sales_project/blob/main/Product%20Category%20perfomance.png)


## Technologies Used

Databricks SQL / Delta Tables

Data modeling: Bronze → Silver → Gold

SQL for cleaning, transformation, and aggregation

Databricks dashboards for visualization

