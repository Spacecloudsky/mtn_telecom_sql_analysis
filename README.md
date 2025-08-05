# MTN Telecom Customer Analysis with Power BI Visualizations
This project is a telecom data analysis performed using Jupyter Notebook, Pandas, and Plotly, based on a simulated MTN Nigeria customer dataset. The analysis answers 10 core business questions on customer behavior, churn risk, network experience, and product performance. A Power BI dashboard is also included to enhance visual storytelling and allow for deeper stakeholder exploration.

## Project Objective
To provide MTN Nigeria or similar telecom providers with data-driven insights by:

1. Analyzing customer demographics and usage behavior

2. Identifying patterns in churn, payment behavior, and loyalty

3. Evaluating product and network performance

4. Supporting strategic decisions with both code-based analysis and business-friendly visuals

## Dataset Overview
The dataset (telecom_customers.csv) contains 10,000 records with customer-level information including:

1. Demographics: Age, Gender, Location

2. Subscription Details: Plan type, Validity, Monthly bill

3. Usage Metrics: Voice, Data, SMS

4. Network Experience: Call drops, Internet speed, Satisfaction

5. Behavioral Indicators: KYC status, Payment history, Referrals

## Questions Addressed in the Analysis
### Customer Segmentation
→ Grouping customers by demographics and subscription type.

### Churn Risk
→ Highlighting customers with expired plans, missed payments, or zero usage.

### Top Users & High-Value Customers
→ Identifying the most active and profitable users.

### KYC Compliance Impact
→ Investigating how KYC status relates to defaults.

### Plan Performance
→ Comparing plans based on popularity and revenue generation.

### Network Performance by State
→ Assessing call drop and speed satisfaction across regions.

### Payment Behavior Trends
→ Evaluating modes of payment and payment success rates.

### Customer Support Needs
→ Flagging customers who frequently seek support.

### Loyalty & Referrals
→ Understanding how loyalty tiers relate to referrals and retention.

### Device Usage Patterns
→ Analyzing device type and OS among different customer segments.

## Methodology
1. Data Cleaning & Transformation in Jupyter using pandas

2. Exploratory Data Analysis (EDA) using plotly.express

3. Feature Engineering (e.g., churn flags, payment compliance ratios)

4. Groupby and Aggregations to summarize patterns

5. Visual Insights included within the notebook as interactive plots

## Additional Power BI Dashboard
To make the findings more accessible to non-technical stakeholders, a Power BI dashboard was created. It visualizes key metrics and enables:

1. Interactive filtering by region, plan type, and device

2. Dynamic KPIs (Total Billed Amount and Average Plan cost

3. Charts including bar plots and pie charts

However, note that there is a complete dashboard using Streamlit in the mtn_telecom_dashboard repository. The Power BI dashboard displays just some basic insights for this analysis. More detailed charts answering the questions are displayed on the mtn_telecom_dashboard repository in the form of a Streamlit app. This app can only be run on Streamlit.


The Power BI file is included in the repository as Mtn_telecom_powerbi_report.pbix.

🛠 Tools & Technologies Used
Tool/Library	Purpose
Jupyter Notebook	Main environment for analysis
Pandas	Data preprocessing and transformation
Plotly Express	Visualizing results within notebook
Power BI	Enhanced visualization and dashboarding
CSV/Excel	Source data format

Key Insights (Summary)
Customers above 50 years of age consume more data and generated more income.

Android device users consumed more data and generated more support tickets(Chart displayed on Streamlit and plotly express)
