# Olist E-Commerce | Customer Cohort & Retention Analysis

[![SQL Server](https://img.shields.io/badge/Database-SQL%20Server-CC292B?logo=microsoftsqlserver)](https://www.microsoft.com/sql-server)
[![Python](https://img.shields.io/badge/Analytics-Python%203.13-3776AB?logo=python)](https://www.python.org/)
[![Power BI](https://img.shields.io/badge/Dashboard-Power%20BI-F2C811?logo=powerbi)](https://powerbi.microsoft.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)

---

## Project Overview

An end-to-end e-commerce analytics project developed as part of the Elevvo Pathways Data Analysis internship.

The project analyzes customer purchasing behavior, cohort retention, revenue contribution, and delivery experience using Python, SQL,
and Power BI.

Rather than focusing solely on revenue, the analysis examines whether customers acquired in 2017 continued purchasing in 2018 and explores
patterns in customer retention and purchasing behavior across **Olist Brazilian E-Commerce Marketplace** (99k+ orders across 96k+ customers)

Through an enterprise end-to-end data pipeline, this project proves that while top-line revenue expanded significantly, Olist operates as an **acquisition-driven marketplace with a critical retention decay** (repeat purchase rates fall below 0.7% post-acquisition month).

---

## Business Problem

Revenue alone does not provide a complete picture of business performance, The key business question is:
Are customers acquired in 2017 returning to make purchases in 2018?
The project also investigates high-value customers and explores the relationship between delivery time and customer review scores.

## Project Objectives

- Analyze customer purchasing behavior across acquisition cohorts.
- Calculate customer retention across subsequent months.
- Build a cohort retention heatmap.
- Apply relational data modeling using SQL.
- Identify the top 1% of customers by revenue.
- Compare average delivery time with review scores across states.
- Present actionable insights through an interactive Power BI dashboard.

---

## Tools & Technologies

- Python
- Pandas
- SQL
- Relational Data Modeling
- Star Schema
- Power BI
- DAX
- Data Visualization

---

## Architectural Pipeline

[Raw Olist Data]

▼ (Phase 1: Python)
[Data Auditing, Cleansing & Cohort Pivoting] ──> Export Normalized CSVs & Retention Matrix

▼ (Phase 2: SQL Server)
[Star Schema Modeling, PK/FK Constraints, Multi-Table Joining View]

▼ (Phase 3: Power BI)
[DAX KPI Engine, Interactive Retention Heatmap & Executive Dashboard]

---

## Project Workflow

### 1. Data Preparation — Python

- Inspected dataset structure and data quality.
- Examined missing values, duplicates, and data types.
- Cleaned and prepared datasets for downstream analysis.
- Prepared cohort retention data for heatmap visualization.

### 2. Data Modeling — SQL

- Loaded the prepared datasets into SQL.
- Defined table keys and relationships.
- Used relational joins to combine relevant customer,
  order, and payment information.
- Prepared analytical datasets for customer and revenue analysis.

### 3. Cohort & Retention Analysis — Power BI

- Grouped customers by acquisition month.
- Examined repeat purchasing behavior across subsequent months.
- Prepared a cohort retention matrix.
- Visualized retention patterns using a heatmap.
- Identified the top 1% of customers by revenue to highlight high-value customer segments.
Developed a dashboard to communicate customer retention,
revenue contribution, and delivery experience.

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

* **Automate Post-Purchase CRM Triggers:**
* Launch automated reactivation workflows on Day 14 and Day 30 post-delivery offering incentives for second orders.
* **Regional Logistics Decentralization:**
* stablish localized fulfillment hubs in northern/northeastern states to cut transit latency from ~28 days to under 12 days.
* **VIP Loyalty Program:**
* Create dedicated retention perks (free shipping tiers and priority fulfillment) tailored to the Top 1% high-spending power users.
  
---

## Deliverables

- Python analysis notebook
- SQL analysis and data modeling
- Power BI dashboard
- Cohort retention heatmap
- Power user analysis
- Delivery and review analysis
---

## Author
* **Ahmed Bayoumy** — Data Analyst & Business Intelligence Specialist
* [LinkedIn Profile](https://www.linkedin.com/) | [GitHub Portfolio](https://github.com/)
