# Car Sales Analysis
### 1.	Project Title / Headline
Car Sales Analysis<br>
An interactive dashboard designed to analyze Year-To-Date (YTD) car sales across company, model, engine type, transmission, color, and body style—empowering business users with actionable insights into sales performance, revenue, and customer preferences.

### 2.	Short Description / Purpose
The Car Sales Analysis Dashboard is an interactive Power BI report that helps users explore and compare car sales based on company, model, engine type, transmission, color, and body style. The data was collected and prepared using SQL before being visualized in Power BI. The dashboard tracks Year-to-Date (YTD) and Month-to-Date (MTD) sales, revenue, and total cars sold, allowing users to compare current performance with last year. This tool helps sales teams, analysts, and car companies understand sales trends, revenue growth, and customer preferences for better business decisions.

### 3.	Tech Stack
The dashboard was built using the following tools and technologies:<br>
• Power BI Desktop – Main data visualization platform used for report creation.<br>
•Ms Excel – Data transformation and cleaning layer for reshaping and preparing the data.<br>
•DAX (Data Analysis Expressions) – Used for calculated measures, dynamic visuals, and conditional logic.<br>
•SQL (Structured Query Language) – Used to retrieve, filter, and aggregate car sales data from the database before importing it into Power BI.
   •Implemented aggregate functions (SUM, AVG, COUNT) to summarize sales and revenue.
   •Used window functions (like RANK(), ROW_NUMBER()) for ranking and trend analysis.
   •Applied constraints and clauses (WHERE, GROUP BY, HAVING, ORDER BY) for accurate and optimized data extraction.
• File Format – The report was created in .pbix and exported as .png for dashboard previews.

### 4.	Data Source
The dataset used in this project was taken from Kaggle.
It contains 23,916 rows and 16 columns, providing detailed information about car sales, including company, model, engine type, transmission, color, body style, sale price, and total revenue.


### 5.	Features / Highlights
•	Business Problem<br>
The company lacks a centralized system to monitor Year-to-Date (YTD) and Month-to-Date (MTD) sales performance. As a result, management cannot easily evaluate revenue trends, identify best-selling models, or compare performance with last year to plan effective marketing and production strategies.

•	Goal of the Dashboard<br>
The goal of this dashboard is to monitor Year-to-Date (YTD) and Month-to-Date (MTD) performance of sales, revenue, and total cars sold across different dimensions such as company, model, transmission type, and body style. This helps users analyze trends, compare performance, and make informed business decisions.

•	Walkthrough of Key Visuals
-	Key KPIs<br>
YTD Total Car Revenue: $371M<br>
YTD Avg Car Revenue: $28.0K<br>
YTD Total Car Sold: 13.3 <br>
-	 Filter Panel<br>
An interactive slicer allows users to filter all visuals by selected attributes such as company, model, transmission type, body style, and color—enabling focused analysis based on user preference.<br>
-	CY Weekly Sales Anaylsis (Line Chart)
A line chart displays weekly car sales, showing which week recorded the highest number of cars sold along with their total revenue. This helps identify peak sales periods, understand seasonal demand trends, and measure performance over time.From the analysis, it can be observed that sales were lower in the initial weeks, followed by a steady increase in the middle and later weeks of the year. The highest number of cars were sold during the mid and end weeks, while the early weeks showed a dip—indicating an area that needs further focus and improvement.
-	YTD Body Style By Revenue and Car sold(Donut Chart)<br>
A donut chart displays which body style (such as SUV, Sedan, Hatchback, etc.) contributes the most to overall revenue. This helps identify which car body type generates higher sales value and is more preferred by customers.From the analysis, it is evident that SUVs recorded the highest sales both this year and last year, showing their consistent popularity among customers. However, there was a noticeable dip in Hatchback sales, with less than 15% revenue contribution, while all other body styles maintained above 15% revenue share.
-	YTD Color By Revnue and Car Sold(Donut Chart)<br>
A donut chart displays which color (such as Red,Pale White and Black) contributes the most to overall revenue. This helps identify which car color generates higher sales value and is more preferred by customers.From the analysis, it is observed that customers are strongly attracted to car colors, which impacts overall sales performance. Pale White and Black generated the highest revenue this year, while Red also performed well. However, further analysis is needed to understand why Red cars sold more units compared to the top revenue-generating colors.
-	 Company Performance Analysis (Matrix)<br>
A matrix visual compares each company’s car sales for the current year versus the previous year. It also displays key metrics such as YTD average car price, YTD average cars sold, and the percentage change in average cars sold. This helps identify which companies improved their sales performance, maintained stable growth, or experienced a decline compared to last year.
-Cy Revenue and Car Sold By Month (Stacked Column Chart)
A Stacked Column chart displays weekly car sales, showing which Month recorded the highest number of cars sold along with their total revenue. This helps identify peak sales periods, understand seasonal demand trends, and measure performance over time. As we can see, revenue was low in the initial months, but after April, there was a significant hike, even crossing the average revenue line. The chart also shows a dip at the beginning of the year and another rise toward the end, indicating seasonal variation or potential sales strategy changes. This trend suggests that further analysis is needed to understand why sales dropped early in the year. 


Business Impact & Insights

• Performance Tracking:
The dashboard helps management monitor YTD and MTD sales, revenue, and car units sold in real time, enabling faster and data-driven decision-making.

• Market Strategy Optimization:
By comparing sales across companies, models, and body types, businesses can identify high-performing segments and underperforming areas to adjust marketing and pricing strategies.

• Customer Preference Analysis:
Insights from filters like color, transmission, and body style reveal customer preferences, helping dealerships optimize inventory and promotions based on demand.

• Revenue Growth Opportunities:
The matrix visual highlights top-performing companies and revenue trends, allowing management to focus on profitable brands and models.

• Forecasting & Planning:
Weekly and monthly sales patterns help in predicting future demand, planning stock levels, and preparing for seasonal variations in car sales.•ompetitiveness by region.

### 6.	Screenshots / Demos
https://github.com/Danishsheik329/Mobile-Sales/blob/main/Screenshot%202025-11-06%20191142.png
