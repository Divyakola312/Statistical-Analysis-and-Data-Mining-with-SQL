-- =====================================================
-- Project: Statistical Analysis and Data Mining with SQL
-- File: analysis_queries.sql
-- Database: PostgreSQL
-- =====================================================


-- 1. BASIC DATA OVERVIEW
-- -----------------------------------------------------

-- Total number of customers
SELECT COUNT(*) AS total_customers FROM customers;

-- Total number of transactions
SELECT COUNT(*) AS total_transactions FROM baskets;

-- Preview customers
SELECT * FROM customers LIMIT 10;

-- Preview baskets
SELECT * FROM baskets LIMIT 10;


-- 2. CUSTOMER DEMOGRAPHIC ANALYSIS
-- -----------------------------------------------------

-- Gender-wise customer distribution
SELECT
    sex,
    COUNT(*) AS customer_count
FROM customers
GROUP BY sex;

-- Average customer age
SELECT
    ROUND(AVG(customer_age), 2) AS avg_customer_age
FROM customers;


-- 3. PURCHASE BEHAVIOR ANALYSIS
-- -----------------------------------------------------

-- Total items purchased by each customer
SELECT
    customer_id,
    SUM(basket_count) AS total_items_purchased
FROM baskets
GROUP BY customer_id
ORDER BY total_items_purchased DESC;


-- Average items per transaction
SELECT
    ROUND(AVG(basket_count), 2) AS avg_items_per_transaction
FROM baskets;


-- 4. TOP CUSTOMERS (DATA MINING)
-- -----------------------------------------------------

-- Top 10 customers by purchase volume
SELECT
    customer_id,
    SUM(basket_count) AS total_items
FROM baskets
GROUP BY customer_id
ORDER BY total_items DESC
LIMIT 10;


-- 5. TIME-BASED ANALYSIS
-- -----------------------------------------------------

-- Monthly purchase trend
SELECT
    DATE_TRUNC('month', basket_date) AS month,
    SUM(basket_count) AS total_items_sold
FROM baskets
GROUP BY month
ORDER BY month;


-- 6. JOIN-BASED INSIGHTS
-- -----------------------------------------------------

-- Customer purchase summary (using join)
SELECT
    c.customer_id,
    c.sex,
    c.customer_age,
    COUNT(b.basket_date) AS total_transactions,
    SUM(b.basket_count) AS total_items
FROM customers c
JOIN baskets b
ON c.customer_id = b.customer_id
GROUP BY c.customer_id, c.sex, c.customer_age
ORDER BY total_items DESC;


-- 7. USING VIEWS
-- -----------------------------------------------------

-- Fetch data from customer purchase summary view
SELECT * FROM customer_purchase_summary LIMIT 10;
