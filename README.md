MTN Telecom Customer Analysis with Power BI Visualizations
This project is a telecom data analysis performed using Jupyter Notebook, Pandas, and Plotly, based on a simulated MTN Nigeria customer dataset. The analysis answers 10 core business questions on customer behavior, churn risk, network experience, and product performance. A Power BI dashboard is also included to enhance visual storytelling and allow for deeper stakeholder exploration.

Project Objective
To provide MTN Nigeria or similar telecom providers with data-driven insights by:

Analyzing customer demographics and usage behavior

Identifying patterns in churn, payment behavior, and loyalty

Evaluating product and network performance

Supporting strategic decisions with both code-based analysis and business-friendly visuals

Dataset Overview
The dataset (telecom_customers.csv) contains 10,000 records with customer-level information including:

Demographics: Age, Gender, Location

Subscription Details: Plan type, Validity, Monthly bill

Usage Metrics: Voice, Data, SMS

Network Experience: Call drops, Internet speed, Satisfaction

Behavioral Indicators: KYC status, Payment history, Referrals

Questions Addressed in the Analysis
Customer Segmentation
→ Grouping customers by demographics and subscription type.

Churn Risk
→ Highlighting customers with expired plans, missed payments, or zero usage.

Top Users & High-Value Customers
→ Identifying the most active and profitable users.

KYC Compliance Impact
→ Investigating how KYC status relates to defaults.

Plan Performance
→ Comparing plans based on popularity and revenue generation.

Network Performance by State
→ Assessing call drop and speed satisfaction across regions.

Payment Behavior Trends
→ Evaluating modes of payment and payment success rates.

Customer Support Needs
→ Flagging customers who frequently seek support.

Loyalty & Referrals
→ Understanding how loyalty tiers relate to referrals and retention.

Device Usage Patterns
→ Analyzing device type and OS among different customer segments.

Methodology
Data Cleaning & Transformation in Jupyter using pandas

Exploratory Data Analysis (EDA) using plotly.express

Feature Engineering (e.g., churn flags, payment compliance ratios)

Groupby and Aggregations to summarize patterns

Visual Insights included within the notebook as interactive plots

Additional Power BI Dashboard
To make the findings more accessible to non-technical stakeholders, a Power BI dashboard was created. It visualizes key metrics and enables:

Interactive filtering by region, plan type, and device

Dynamic KPIs (Churn Rate, ARPU, Complaint Rate)

Charts including bar plots, pie charts, treemaps, and heatmaps

Drill-downs to explore user segments and complaint sources

The Power BI file is included in the repository as MTN_Telecom_Insights.pbix.

🛠 Tools & Technologies Used
Tool/Library	Purpose
Jupyter Notebook	Main environment for analysis
Pandas	Data preprocessing and transformation
Plotly Express	Visualizing results within notebook
Power BI	Enhanced visualization and dashboarding
CSV/Excel	Source data format

Key Insights (Summary)
Customers with expired plans and unpaid bills had the highest churn risk

Android device users consumed more data and generated more support tickets
