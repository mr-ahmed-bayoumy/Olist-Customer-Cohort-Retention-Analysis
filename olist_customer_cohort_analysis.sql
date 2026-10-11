CREATE DATABASE OlistEcommerce
Go

/*
================================================================================
ELEVVO PATHWAYS INTERNSHIP — DATA ANALYTICS TRACK
PROJECT: TASK 9 — BUSINESS INSIGHTS & EXECUTIVE REPORT (OLIST E-COMMERCE)
PHASE 2: RELATIONAL DATA MODELING & SQL JOINING ARCHITECTURE
--------------------------------------------------------------------------------
• PHASE 1 (COMPLETED): DATA AUDITING, CLEANSING & ENTITY EXTRACTION IN PYTHON
• PHASE 2 (CURRENT)  : STAR SCHEMA CONSTRAINTS, REFERENTIAL INTEGRITY & SQL JOINING
• PHASE 3 (UPCOMING) : POWER BI EXECUTIVE DASHBOARD, RETENTION HEATMAP & DAX KPIs
================================================================================
*/

USE OlistEcommerce
GO

-- =============================================================================
-- STEP 1: ENFORCE REFERENTIAL INTEGRITY (ORPHAN RECORD PURGE)
-- =============================================================================
DELETE FROM fact_payments 
WHERE order_id NOT IN (SELECT order_id FROM fact_orders)

DELETE FROM dim_reviews 
WHERE order_id NOT IN (SELECT order_id FROM fact_orders)
GO

-- =============================================================================
-- STEP 2: BUILD STAR SCHEMA CONSTRAINTS (PRIMARY & FOREIGN KEYS)
-- =============================================================================
-- Link Fact Orders to Customer Dimension (1-to-Many)
ALTER TABLE fact_orders
    ADD CONSTRAINT FK_orders_customers
    FOREIGN KEY (customer_id) REFERENCES dim_customers(customer_id)

-- Link Payments to Fact Orders (1-to-Many)
ALTER TABLE fact_payments
    ADD CONSTRAINT FK_payments_orders
    FOREIGN KEY (order_id) REFERENCES fact_orders(order_id)

-- Link Reviews to Fact Orders (1-to-Many)
ALTER TABLE dim_reviews
    ADD CONSTRAINT FK_reviews_orders
    FOREIGN KEY (order_id) REFERENCES fact_orders(order_id)
GO

-- =============================================================================
-- STEP 3: SQL FOR JOINING — ANALYTICAL MASTER VIEW
-- =============================================================================
CREATE OR ALTER VIEW vw_cohort_master AS
SELECT o.order_id, c.customer_unique_id, c.customer_state,
    CAST(o.order_purchase_timestamp AS DATETIME) AS order_purchase_timestamp,
    CAST(o.order_delivered_customer_date AS DATETIME) AS order_delivered_customer_date,
    ISNULL(p.total_payment, 0) AS total_payment,
    r.avg_review_score
FROM fact_orders o
INNER JOIN dim_customers c 
    ON o.customer_id = c.customer_id
LEFT JOIN (
    SELECT order_id, SUM(payment_value) AS total_payment
    FROM fact_payments
    GROUP BY order_id
) p ON o.order_id = p.order_id
LEFT JOIN (
    SELECT order_id, AVG(CAST(review_score AS FLOAT)) AS avg_review_score
    FROM dim_reviews
    GROUP BY order_id
) r ON o.order_id = r.order_id
GO

-- =============================================================================
-- STEP 4: VERIFY VIEW EXECUTION
-- =============================================================================
SELECT TOP 10 * FROM vw_cohort_master
GO

/*
================================================================================
EXECUTIVE SUMMARY OF PHASE 2 EXECUTION:
--------------------------------------------------------------------------------
1. Relational Integrity: Enforced 1-to-Many relationships centered on fact_orders.
2. Grain Consistency: Pre-aggregated payments and reviews to eliminate row fan-out.
3. Master Entity Mapping: Unified customer_id to customer_unique_id for cohort analysis.
4. Data Pipeline Ready: Live relational data layer ready for direct Power BI ingestion.
================================================================================
*/