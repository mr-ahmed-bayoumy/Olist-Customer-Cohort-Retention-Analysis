# Olist Brazilian E-Commerce: Cohort Retention & Executive Intelligence

[![SQL Server](https://img.shields.io/badge/Database-SQL%20Server-CC292B?logo=microsoftsqlserver)](https://www.microsoft.com/sql-server)
[![Python](https://img.shields.io/badge/Analytics-Python%203.13-3776AB?logo=python)](https://www.python.org/)
[![Power BI](https://img.shields.io/badge/Dashboard-Power%20BI-F2C811?logo=powerbi)](https://powerbi.microsoft.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)

---

## Executive Summary & Business Challenge
> **"Revenue is vanity, retention is sanity."**

This project investigates the multi-year transactional performance of the **Olist Brazilian E-Commerce Marketplace** (99k+ orders across 96k+ customers). The primary objective was answering the executive question:  
*Are customers acquired in 2017 continuing to generate recurring revenue throughout 2018?*

Through an enterprise end-to-end data pipeline, this project proves that while top-line revenue expanded significantly, Olist operates as an **acquisition-driven marketplace with a critical retention decay** (repeat purchase rates fall below 0.7% post-acquisition month).

---

## Architectural Pipeline

[Raw Olist Data]
│
▼ (Phase 1: Python)
[Data Auditing, Cleansing & Cohort Pivoting] ──> Export Normalized CSVs & Retention Matrix
│
▼ (Phase 2: SQL Server)
[Star Schema Modeling, PK/FK Constraints, Multi-Table Joining View]
│
▼ (Phase 3: Power BI)
[DAX KPI Engine, Interactive Retention Heatmap & Executive Dashboard]

---

## Key Business Insights & Analytical Findings

1. **The Retention Cliff (Leaky Bucket Syndrome):**
   - Monthly cohort analysis reveals that retention drops from **100% in Month 0 to under 0.7% by Month 1**, averaging below **0.3%** across subsequent months.
   - Revenue growth in 2018 was driven exclusively by new customer acquisition rather than recurring customer lifetime value (LTV).

2. **Delivery Latency vs. Customer Satisfaction (Correlation: -0.47):**
   - High delivery duration correlates negatively with review scores.
   - Remote northern states (e.g., RR, AP, AM) experience severe delivery delays (26–29 days average), resulting in the platform's lowest review ratings (< 3.9 / 5.0).

3. **Revenue Concentration (The Top 1% Power Users):**
   - Validating the Pareto Principle, the **Top 1% of customers (934 users)** spend upwards of **R$ 1,097** each.
   - This elite segment contributes **10.35% (R$ 1.6M+)** of total platform monetization.

---

## Strategic Recommendations for Leadership

* **Automate Post-Purchase CRM Triggers:** Launch automated reactivation workflows on Day 14 and Day 30 post-delivery offering incentives for second orders.
* **Regional Logistics Decentralization:** Establish localized fulfillment hubs in northern/northeastern states to cut transit latency from ~28 days to under 12 days.
* **VIP Loyalty Program:** Create dedicated retention perks (free shipping tiers and priority fulfillment) tailored to the Top 1% high-spending power users.

---

## Repository Structure & Deliverables

* **`notebooks/E-Commerce Public Dataset by Olist.ipynb`**:
  - Raw dataset ingestion and schema audit.
  - Data hygiene: filtered strictly for completed (`delivered`) orders.
  - Pandas `pivot_table` cohort analysis and Seaborn heatmap generation.
* **`sql/Task9_SQL_Modeling.sql`**:
  - Relational schema creation with Foreign Key integrity centered on `fact_orders`.
  - Multi-table analytical view (`vw_cohort_master`) joining transactions, unique customer IDs, payments, and review scores.
* **`power_bi/Olist_Executive_Dashboard.pbix`**:
  - Data model with Star Schema relational enforcement.
  - DAX metrics: Delivery latency, Review averages, and revenue distributions.
  - Visuals: Dynamic Retention Heatmap, Regional Delivery vs. Rating Scatter, and Top 1% Segmentation.

---

## Dashboard & Architecture Visuals

### 1. Power BI Executive Dashboard
![Power BI Executive Dashboard](assets/04_powerbi_executive_dashboard.png)

### 2. Relational Star Schema (Database Diagram)
![SQL Server Diagram](assets/02_sql_star_schema_diagram.png)

### 3. Exploratory Cohort Heatmap (Python Seaborn)
![Python Cohort Heatmap](assets/01_python_cohort_heatmap.png)

---

## Author
* **Ahmed Bayoumy** — Data Analyst & Business Intelligence Specialist
* [LinkedIn Profile](https://www.linkedin.com/) | [GitHub Portfolio](https://github.com/)
