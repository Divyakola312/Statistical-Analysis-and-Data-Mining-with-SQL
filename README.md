# Statistical Analysis and Data Mining with SQL

## 📌 Project Overview
This project focuses on performing statistical analysis and data mining on an e-commerce dataset using SQL.  
The objective is to extract meaningful business insights related to customer demographics, purchase behavior, and transaction trends using PostgreSQL.

---

## 🎯 Objectives
- Analyze customer demographic data
- Understand purchasing patterns
- Identify top customers based on transactions
- Perform time-based sales analysis
- Use SQL views for summarized insights

---

## 🗂 Dataset Description

### 1. Customer Details (`customer_details.csv`)
| Column Name     | Description                  |
|-----------------|------------------------------|
| customer_id     | Unique customer identifier   |
| sex             | Gender of customer           |
| customer_age    | Age of customer              |
| tenure          | Customer association period  |

### 2. Basket Details (`basket_details.csv`)
| Column Name     | Description                  |
|-----------------|------------------------------|
| customer_id     | Customer identifier          |
| product_id      | Product identifier           |
| basket_date     | Date of purchase             |
| basket_count    | Number of items purchased    |

---

## 🛠 Technologies Used
- **Database**: PostgreSQL
- **Language**: SQL
- **IDE**: Visual Studio Code
- **Database Tool**: pgAdmin 4
- **VS Code Extension**: SQLTools + PostgreSQL Driver

---

## 📁 Project Structure
Statistical-Analysis-and-Data-Mining-with-SQL/
│
├── datasets/
│ ├── customer_details.csv
│ └── basket_details.csv
│
├── sql/
│ ├── create_tables.sql
│ ├── insert_data.sql
│ ├── analysis_queries.sql
│ └── views.sql
│
├── output/
│
└── README.md


---

## ⚙️ Setup & Execution Steps

### Step 1: Install Requirements
- Install PostgreSQL
- Install pgAdmin 4
- Install VS Code
- Install SQLTools extension and PostgreSQL driver

### Step 2: Create Database
```sql
CREATE DATABASE ecommerce_sql_analysis;

Step 3: Create Tables

Run create_tables.sql in pgAdmin.

Step 4: Insert Data

Load CSV files using \copy commands in insert_data.sql.

Step 5: Run Analysis Queries

Execute queries from analysis_queries.sql.

Step 6: Create Views

Run views.sql to generate summarized views.

📊 Key Insights

Customer purchase behavior varies significantly across age groups

A small group of customers contributes to a large number of transactions

Monthly trends reveal seasonal purchase patterns

📌 Conclusion

This project demonstrates how SQL can be effectively used for statistical analysis and data mining on structured datasets.
The use of joins, aggregations, and views helps transform raw data into meaningful insights for decision-making.

👩‍💻 Author

Divya Kola
B.Tech CSE (AI & ML)
