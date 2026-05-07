# Customer Churn Analysis Dashboard

## Project Overview

This project focuses on analyzing telecom customer churn behavior using Python, SQL, and Power BI. The objective was to identify key churn drivers, detect high-risk customer segments, and provide business-focused retention recommendations through data analysis and dashboard storytelling.

The project follows a complete analytics workflow:

* Data Cleaning using Python
* Exploratory and Business Analysis using SQL
* Interactive Dashboard Development using Power BI
* Business Insights and Retention Recommendations

---

# Problem Statement

Customer churn is one of the biggest challenges in subscription-based businesses. High churn directly impacts revenue, customer acquisition costs, and long-term growth.

The goal of this project was to:

* Identify factors contributing to customer churn
* Analyze customer behavior patterns
* Detect high-risk customer segments
* Recommend business actions to improve retention

---

# Tools & Technologies Used

* Python (Pandas)
* SQL
* Power BI
* Jupyter Notebook

---

# Dataset Information

Dataset Source:
Telco Customer Churn Dataset

Dataset contains customer-level information including:

* Customer tenure
* Contract type
* Monthly charges
* Internet services
* Payment methods
* Customer churn status

Total Records: 7043

---

# Project Workflow

## 1. Data Cleaning (Python)

Performed data preprocessing and cleaning using Pandas:

* Converted column names to lowercase
* Removed unnecessary columns
* Handled missing values
* Converted data types
* Standardized categorical values

---

## 2. SQL Analysis

Performed churn analysis using SQL queries to identify:

* Contract-based churn patterns
* Tenure-based churn behavior
* Monthly charge impact on churn
* High-risk customer segments
* Customer retention trends

---

## 3. Power BI Dashboard

Built an interactive Power BI dashboard containing:

### KPI Cards

* Total Customers
* Total Churned Customers
* Churn Rate
* Average Monthly Charges

### Interactive Visuals

* Contract Type vs Churn Rate
* Tenure Group vs Churn Rate
* Monthly Charges Group vs Churn Rate
* Risk Segment Analysis

### Slicers

* Contract Type
* Tenure Group
* Monthly Charges Group
* Internet Service

---

# Key Insights

## 1. Month-to-Month Contracts Have Highest Churn

Customers on month-to-month contracts exhibited the highest churn rates, indicating lower customer commitment and higher switching behavior.

### Business Recommendation

Encourage customers to move toward long-term subscription plans using discounts and loyalty benefits.

---

## 2. New Customers Are Most Likely to Churn

Customers within the first 6 months showed significantly higher churn behavior, suggesting early-stage dissatisfaction.

### Business Recommendation

Improve onboarding experience and customer engagement during the initial subscription period.

---

## 3. High Monthly Charges Increase Churn Risk

Customers with high monthly charges demonstrated significantly higher churn rates, indicating strong pricing sensitivity.

### Business Recommendation

Improve value-added services and optimize pricing strategies for premium customers.

---

## 4. New Customers with High Charges Represent the Highest-Risk Segment

New customers with high monthly charges recorded a churn rate of 72.16%, making them the most vulnerable customer segment.

### Business Recommendation

Introduce discounted onboarding plans and personalized support for new premium customers.

---

## 5. Month-to-Month Customers with High Charges Also Showed High Churn

Customers with flexible contracts and high monthly charges showed elevated churn behavior.

### Business Recommendation

Offer bundled services and contract upgrade incentives to improve retention.

---

# Dashboard Preview

(Add dashboard screenshot here)

---

# Business Impact

This project demonstrates how data analytics can help businesses:

* Understand customer behavior
* Detect churn patterns
* Improve retention strategies
* Reduce customer loss
* Support data-driven decision making

---

# Skills Demonstrated

* Data Cleaning
* Exploratory Data Analysis
* SQL Querying
* Customer Segmentation
* KPI Development
* Data Visualization
* Business Analysis
* Dashboard Design
* Insight Generation

---

# Repository Contents

```text
customer-churn-analysis/
│
├── customer-churn-analysis.pbix
├── churn_analysis.sql
├── dashboard.png
├── README.md
└── dataset_link.txt
```

---

# Future Improvements

Possible future enhancements:

* Predictive churn modeling using Machine Learning
* Customer lifetime value analysis
* Advanced retention segmentation
* Time-series churn trend analysis

---

# Conclusion

This project successfully identified key factors contributing to telecom customer churn through Python, SQL, and Power BI analysis.

The analysis revealed that:

* Contract type
* Customer tenure
* Monthly charges
* High-risk customer segments

play a major role in customer retention behavior.

The final dashboard provides a business-focused analytical solution that supports customer retention strategies and decision-making.
