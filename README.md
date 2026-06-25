📦 Amazon Sales Data Analysis Project
📌 Project Overview
This project focuses on analyzing an Amazon Sales dataset using Python (Pandas) and SQL (SSMS) to extract meaningful business insights related to sales performance, profitability, shipping efficiency, and regional trends.
The workflow includes data cleaning, feature engineering in Python, storing data in SQL Server, and performing analytical queries to derive insights.
________________________________________
🛠️ Tools & Technologies Used
•	Python (Pandas, NumPy) 
•	SQL Server Management Studio (SSMS) 
•	Jupyter Notebook 
•	Power BI (for future visualization) 
________________________________________
🧹 1. Data Cleaning & Preprocessing (Python)
Key steps performed:
•	Loaded raw dataset using Pandas 
•	Converted date columns (Order Date, Ship Date) into datetime format 
•	Handled inconsistent date formats 
•	Created new feature: 
o	Shipping_Days = Ship Date - Order Date 
•	Created categorical features: 
o	Shipping Category (Super Fast, Fast, Slow, Delayed) 
o	Profit Category (Low, Medium, High) 
•	Verified missing values and duplicates 
•	Checked data types and fixed inconsistencies 
________________________________________
📊 2. Feature Engineering (Python)
New columns created:
•	Shipping_Days 
•	Shipping Category 
•	Profit Margin % 
•	Profit Category 
These features helped in better business-level analysis.
________________________________________
🗄️ 3. Data Storage in SQL Server
•	Cleaned dataset was exported from Python to SQL Server (SSMS) 
•	Table created: amazon_sales 
•	Used SQLAlchemy + pyodbc for connection 
Workflow:
Python → Clean Data → SQL Server Table → Analysis using SQL
________________________________________
📈 4. SQL Analysis Performed
Business analysis covered:
🌍 Region Analysis
•	Region-wise revenue and profit comparison 
•	Identification of top-performing regions 
________________________________________
🏆 Country Performance
•	Top countries by profit 
•	Low-performing countries identified 
________________________________________
📦 Product Analysis
•	Item type-wise revenue and profit contribution 
•	Identification of high-revenue vs high-profit products 
•	Product concentration analysis 
________________________________________
🚚 Shipping Analysis
•	Average shipping time by region 
•	Shipping category distribution 
•	Identification of delayed orders 
________________________________________
⚡ Order Priority Analysis
•	Comparison of order priority vs actual shipping performance 
•	Evaluation of SLA adherence 
________________________________________
🛍 Sales Channel Analysis
•	Online vs Offline revenue and profit comparison 
________________________________________
📅 Time-Based Analysis
•	Year-wise revenue and profit trends 
•	Monthly performance variation 
________________________________________
🔍 Key Business Insights
•	Revenue and profit are concentrated in a few regions and item types 
•	Sub-Saharan Africa and Europe are top-performing regions 
•	Cosmetics, Household, and Office Supplies dominate profitability 
•	Majority of orders fall under delayed shipping category 
•	Shipping efficiency does not always match order priority levels 
•	Offline sales generate higher revenue than online sales 
•	Profitability varies significantly across time periods 
________________________________________
📌 Project Outcome
This project demonstrates:
•	Data cleaning & transformation using Python 
•	SQL-based business analytics 
•	KPI development (profit, shipping, margin analysis) 
•	End-to-end data pipeline: CSV → Python → SQL → Insights 
________________________________________
🚀 Next Step (Planned)
•	Power BI dashboard creation: 
o	Sales performance dashboard 
o	Shipping & logistics dashboard 
o	Profitability analysis dashboard 
o	Regional performance dashboard 
________________________________________
📎 Conclusion
This project helps in understanding real-world business data and building analytical thinking required for a Data Analyst role.

