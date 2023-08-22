---
<My project portfolio README.md file for github>
 
# _My Portfolio of Projects_

#### _Hello! Please use this README as a one stop shop to view all of my data analytics related projects._

## Contact Details
* _LinkedIn: https://www.linkedin.com/in/danieldrangstveit/_
* _Email: daniel.drangstveit@gmail.com_

## Languages & Skills
* Python
* SQL
* Tableau
* Alteryx
* Entity-Relationship Diagram (ERD) and Relational Model for Database Design
* Data Profiling
* Data Integration and Preparation

## Description
This README is intended to direct prospective viewers of my Github profile to the projects that I feel 
display my skills for data analyst or business analyst roles. Please read on and take a look!

## Relevant Projects

### Tableau - Analyzing Netflix's Pre-COVID Growth from 2015 to 2019
* **Description:**
     * Created an insightful data story analyzing Netflix titles (movies and tv shows) related to trends, demographics, and seasonality patterns from 2015 to 2019.
* **Core Skills:**
     * Basic and advanced visualizations
     * Calculated fields
     * Analytics and aggregate measures
     * Parameters
     * Dashboards
     * Story
* **Findings:**
     * Netflix has become a giant in the Streaming Industry because of its substantial growth from 2015 to 2019
     * Although Netflix adds more movies than tv shows to its platform, Netflix has released more tv shows than movies over the years
          * A portion derives from Netflix original content highlighting their vertical integration strategy
     * To keep consumers/audience engaged, Netflix creates a unique sense of personalization catering to several genres and audiences of all ages
     * The scope of Netflix shows is primarily influenced by content produced in the United States though India is attempting to catch up
     * Netflix has transformed into a globally popular streaming service and pop culture maker
* **File:**
     * [Click Here](https://github.com/danieldrangstveit/PORTFOLIO-OF-PROJECTS/blob/main/Tableau_Projects/Netflix_Pre-COVID_Growth.twbx) to download the Tableau Packaged Workbook

### Python - Analysis of S&P 500 and Equity Returns
* **Description:**
     * Used Python to read in financial data from relevant data sources such as Yahoo Finance to gain further insight into S&P 500 and equity returns over time. This involved plotting time series of adjusted closing prices, created a function to accept start and end date inputs to isolate periods of time, hypothesis testing on whether S&P 500 returns are normally distributed, and statistical analysis.
* **Core Skills:**
     * Numpy
     * Pandas
     * Data aggregation
     * Matplotlib.pyplot
     * Hypothesis testing
     * Statistics
     * Jupyter Notebook
* **Findings:**
     * S&P 500 returns are not normally distributed because of the extreme high and low returns (the fat tails). Kurtosis explains that S&P 500 returns have high Kurtosis relative to theoritical returns from a normal distribution
     * Jarque-Bera test, which combines both Kurtosis and skew further substantiates that S&P 500 returns are not normally distributed. Therefore, we can reject the null hypothesis that S&P 500 returns come from a normal distirbution
     * Autocorrelations of returns (both S&P 500 and individual stocks) yield a value close to 0 because of the efficient market hypothesis - market prices move in a "random walk"
* **File:**
     * [Click Here](https://github.com/danieldrangstveit/PORTFOLIO-OF-PROJECTS/blob/main/Python_Projects/S&P_500_and_Equity_Returns.html) to download the HTML file
     * [Click Here](https://github.com/danieldrangstveit/PORTFOLIO-OF-PROJECTS/blob/main/Python_Projects/S&P_500_and_Equity_Returns.ipynb) to download the Interactive Python Notebook file

### Python - Using Statistics to Determine the Best Contact and Power Hitters in Major League Baseball (MLB)
* **Description:**
     * Used Python to automate the ability to web scrape multiple webpages pulled from a data source (mlb.com/stats). Specifically, the created function extracted specified categorical and numerical data into a two-dimensional array. This was then ingested into a pandas DataFrame where I added specific columns calculating batting average and slugging percentage z-scores. The z-scores were plotted and the best power hitter and contact hitter were identified from the dataset.
* **Core Skills:**
     * Regular Expression
     * Numpy
     * Pandas
     * Matplotlib.pyplot
     * Jupyter Notebook
* **Findings:**
     * Slugging percentage is a good indicator of power hitters and batting average is a good indicator of contact hitters
     * Regex and the ability to automate web scrapping multiple webpages is a powerful way to ingest raw data from most online data sources
* **File:**
     * [Click Here](https://github.com/danieldrangstveit/PORTFOLIO-OF-PROJECTS/blob/main/Python_Projects/MLB_Hitters_Analysis.html) to download the HTML file
     * [Click Here](https://github.com/danieldrangstveit/PORTFOLIO-OF-PROJECTS/blob/main/Python_Projects/MLB_Hitters_Analysis.ipynb) to download the Interactive Python Notebook file

### Database - ERD and Relational Models for an Airline Company Example
* **Description:**
     * Used Lucid Charts to create an ERD and Relational Model for a fictitious Airline Company
* **Core Skills:**
     * Cardinalities
     * Primary and Foreign Keys
     * Logical structures
     * Relational databases
* **Findings:**
     * ERD and Relational models help provide clarity and visualization of the database structure
     * Relational models enforce tables with well-defined attributes, eliminating redundancy and ensuring data consistency
     * Relational databases use constraints such as primary and foreign keys to enforce data integrity rules
     * Optimizes for querying and retrieving data efficiently using SQL or similar.
* **File:**
     * [Click Here](https://github.com/danieldrangstveit/PORTFOLIO-OF-PROJECTS/blob/main/Database_Projects/Airline_Company_ERD_Relational_Models.pdf) to download the PDF file

### Database - SQL Hospital Example
* **Description:**
     * Used Microsoft SQL Server Management Studio to perform various queries on a hospital dataset
* **Core Skills:**
     * DDL and DML
     * Joins
     * Subqueries
     * Aggregate functions
     * Microsoft SQL Server Management Studio
* **Findings:**
     * Learned how to create database tables and insert relevant records
     * SQL is a fundamental tool in managing and working with relational databases
* **File:**
     * [Click Here](https://github.com/danieldrangstveit/PORTFOLIO-OF-PROJECTS/blob/main/Database_Projects/Hospital_Demo_Database_Diagram.PNG) to download the hospital demo database diagram PNG file
     * [Click Here](https://github.com/danieldrangstveit/PORTFOLIO-OF-PROJECTS/blob/main/Database_Projects/Hospital_Demo-DDL.sql) to download the Data Definition Language (DDL) SQL file
     * [Click Here](https://github.com/danieldrangstveit/PORTFOLIO-OF-PROJECTS/blob/main/Database_Projects/Hospital_Demo-DML.sql) to download the Data Manipulation Language (DML) SQL file
     * [Click Here](https://github.com/danieldrangstveit/PORTFOLIO-OF-PROJECTS/blob/main/Database_Projects/Hospital_Demo_Queries.sql) to download the SQL file, containing 10 queries performed on the database tables

### Alteryx - Customer Data Example
* **Description:**
     * Used Alteryx to leverage its powerful data integration capabilities in a simplistic way to combine and prepare data for analysis. The customer data was brought into Alteryx from Microsoft SQL server using the input tool. 
* **Core Skills:**
     * Data integration
     * Data preparation
     * Advanced analytics
     * Alteryx
     * ETL
     * Microsoft SQL Server Management Studio
* **Findings:**
     * Alteryx seamlessly integrates with other tools such as Microsoft SQL Server Management Studio and even visualizations tools like Tableau, enabling a user to streamline the ETL process in preparation of analysis
     * Alteryx allows one to clean, transform, and enrich data without writing complex code
* **File:**
     * [Click Here](https://github.com/danieldrangstveit/PORTFOLIO-OF-PROJECTS/blob/main/Alteryx_Projects/Customer_Data_Project_Details.pdf) to download the hospital demo assignment details PDF file
     * [Click Here](https://github.com/danieldrangstveit/PORTFOLIO-OF-PROJECTS/blob/main/Alteryx_Projects/Customer_Data_for_Integration.sql) to download the combined Data Definition Language (DDL) and Data Manipulation Language (DML) SQL file
     * [Click Here](https://github.com/danieldrangstveit/PORTFOLIO-OF-PROJECTS/blob/main/Alteryx_Projects/Customer_Data_Project.yxmd) to download the Alteryx workflow file
     * [Click Here](https://github.com/danieldrangstveit/PORTFOLIO-OF-PROJECTS/blob/main/Alteryx_Projects/Customer_Data_Cleaned.xlsx) to download the cleaned customer data Microsoft Excel spreadsheet file
