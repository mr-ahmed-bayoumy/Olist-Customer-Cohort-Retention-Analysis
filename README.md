# Olist Customer Cohort & Retention Analysis

## Project Overview

An end-to-end e-commerce analytics project developed as part of the Elevvo Pathways Data Analysis internship.

The project analyzes customer purchasing behavior, cohort retention,
revenue contribution, and delivery experience using Python, SQL,
and Power BI.

Rather than focusing solely on revenue, the analysis examines whether
customers acquired in 2017 continued purchasing in 2018 and explores
patterns in customer retention and purchasing behavior.

## Business Problem

Revenue alone does not provide a complete picture of business performance.

The key business question is:

Are customers acquired in 2017 returning to make purchases in 2018?

The project also investigates high-value customers and explores the
relationship between delivery time and customer review scores.

## Project Objectives

- Analyze customer purchasing behavior across acquisition cohorts.
- Calculate customer retention across subsequent months.
- Build a cohort retention heatmap.
- Apply relational data modeling using SQL.
- Identify the top 1% of customers by revenue.
- Compare average delivery time with review scores across states.
- Present actionable insights through an interactive Power BI dashboard.

## Dataset

The project uses the Olist Brazilian E-Commerce dataset.

The data includes customer, order, payment, review, and related
e-commerce information.

The dataset supports customer-level, order-level, and payment-level
analysis through relational data modeling.

## Tools & Technologies

- Python
- Pandas
- SQL
- Relational Data Modeling
- Star Schema
- Power BI
- DAX
- Data Visualization

## Project Workflow

### 1. Data Preparation — Python

- Inspected dataset structure and data quality.
- Examined missing values, duplicates, and data types.
- Cleaned and prepared datasets for downstream analysis.
- Prepared cohort retention data for heatmap visualization.

### 2. SQL Data Modeling

- Loaded the prepared datasets into SQL.
- Defined table keys and relationships.
- Used relational joins to combine relevant customer,
  order, and payment information.
- Prepared analytical datasets for customer and revenue analysis.

### 3. Cohort & Retention Analysis

- Grouped customers by acquisition month.
- Examined repeat purchasing behavior across subsequent months.
- Prepared a cohort retention matrix.
- Visualized retention patterns using a heatmap.

### 4. Power BI Dashboard

Developed a dashboard to communicate customer retention,
revenue contribution, and delivery experience.

The dashboard includes:

- Cohort Retention Heatmap
- Customer Retention Analysis
- Top 1% Power Users by Revenue
- Delivery Time vs. Review Score by State

## Bonus Analysis

### Power Users

Identified the top 1% of customers by revenue to highlight
high-value customer segments.

### Delivery Experience

Compared average delivery time and review scores across
customer states to explore potential relationships between
delivery performance and customer satisfaction.

## Key Business Questions

- How does customer retention change across acquisition cohorts?
- Do customers acquired in 2017 continue purchasing in 2018?
- Which customers contribute the most revenue?
- How does delivery time vary across customer states?
- Is delivery time associated with customer review scores?

## Repository Structure

- `python/` — Python analysis and preparation.
- `sql/` — SQL queries and relational data modeling.
- `powerbi/` — Power BI dashboard.
- `screenshots/` — Project visuals and documentation.

## Deliverables

- Python analysis notebook
- SQL analysis and data modeling
- Power BI dashboard
- Cohort retention heatmap
- Power user analysis
- Delivery and review analysis

## Author

Ahmed Bayoumy  
Data Analyst

## Program

Elevvo Pathways
