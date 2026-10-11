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

▼ (Phase 1: Python)
[Data Auditing, Cleansing & Cohort Pivoting] ──> Export Normalized CSVs & Retention Matrix

▼ (Phase 2: SQL Server)
[Star Schema Modeling, PK/FK Constraints, Multi-Table Joining View]

▼ (Phase 3: Power BI)
[DAX KPI Engine, Interactive Retention Heatmap & Executive Dashboard]

---

## Project Workflow

### 1. Data Preparation — Python

- Inspected dataset structure and data quality (examined missing values, duplicates, and data types)
<img width="1920" height="953" alt="0 Data_Prep_ _Audit" src="https://github.com/user-attachments/assets/ef3a85f8-93d1-4142-a770-72b41eceb8cc" />

- Pandas for pivoting requirments.
<img width="528" height="574" alt="1 data_clean" src="https://github.com/user-attachments/assets/9e2d5812-4b30-40fb-88fb-1684eec538b1" />

- Cleaned and prepared datasets for downstream analysis.
<img width="809" height="569" alt="2 cohort_analys" src="https://github.com/user-attachments/assets/3a0b30b6-90e2-4277-b380-295ea7172bd1" />

- Prepared cohort retention data for heatmap visualization.
<img width="783" height="568" alt="3 matrix" src="https://github.com/user-attachments/assets/f0939442-fc4a-47c3-896c-b7b42ea33db6" />

- Data export files for modeling.
<img width="760" height="566" alt="5 data_export" src="https://github.com/user-attachments/assets/f2808a2c-4b68-473c-85f9-448f29304ac3" />


### 2. Data Modeling — SQL

- Loaded the prepared datasets into SQL.
<img width="1920" height="722" alt="0 Importing_Data to SQL" src="https://github.com/user-attachments/assets/e75cda5b-e838-4948-9d6d-3258028a99bf" />

- Defined table keys and relationships.
<img width="724" height="382" alt="3 SQL_Step1" src="https://github.com/user-attachments/assets/fd6ab348-c6ec-4ff3-bbde-3bd9aa3953cb" />

- Used relational joins to combine relevant customer, order, and payment information.
<img width="770" height="597" alt="4 SQL_Step1" src="https://github.com/user-attachments/assets/1ba0e759-abc9-4552-941b-ff922a4a56e2" />

- Data model (Star Schema Diagram).
<img width="759" height="458" alt="1 Star_Schema Diagram SQL" src="https://github.com/user-attachments/assets/f1bd6fb9-6a9c-4b62-97f6-5f16e93364e9" />

- Prepared analytical datasets for customer and revenue analysis.
<img width="1074" height="606" alt="5 SQL_Step1" src="https://github.com/user-attachments/assets/b93e2519-5e96-43e9-8101-e1e90204aa45" />

### 3. Cohort & Retention Analysis — Power BI

- Live Relational Data Ingestion: Direct SQL Server connection importing normalized entities and master analytical view.
<img width="878" height="679" alt="Data_Load" src="https://github.com/user-attachments/assets/5adbfd17-6879-40e4-8d47-608e91bf153d" />


- Enterprise Star Schema Architecture: Centralized fact_orders model with strict 1-to-many relational integrity and DAX measure repository.
<img width="1365" height="598" alt="Data_Modeling" src="https://github.com/user-attachments/assets/9d094791-e4d8-4674-bdc4-62d31c28f2ea" />


- Executive Report Cover: Strategic overview outlining project architecture, business objectives, and technology stack.
<img width="991" height="552" alt="Slide1" src="https://github.com/user-attachments/assets/b673d510-eeda-4faa-85ea-f5e914b46fe4" />


- Executive Performance Dashboard: Integrated KPI tracking, delivery vs. review correlation, and Top 1% power user segmentation.
<img width="975" height="545" alt="Slide2-" src="https://github.com/user-attachments/assets/8c24931a-f08e-4a04-a7e4-67080134b6f5" />


- 2017–2018 Cohort Retention Heatmap: Empirical retention matrix revealing sharp post-acquisition drop-off below 0.7%.
<img width="970" height="544" alt="Slide3" src="https://github.com/user-attachments/assets/85bb890c-4919-410b-aeeb-9d0e1a50334a" />


- Executive Insights & Strategic Roadmap: C-level analytical findings, supply chain solutions, and customer retention strategies.
<img width="972" height="540" alt="Slide4" src="https://github.com/user-attachments/assets/bde09656-a3a4-4af3-9b58-1f3633c91eb2" />



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
