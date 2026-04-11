# Telco Customer Churn - Exploratory Data Analysis

## Data Cleaning Phase
In this phase, I will clean the table so it should be easy to do data analysis.

### Identifying Unique Values
I used the following script to check the unique values in several service-related columns.

**Query :** [Distinct_script.sql](./data_cleaning/Distinct_sql_script.sql)

**Table :** [Distinct_table](./data/data_cleaning_table/Distinct_values.csv)

### Observations
The columns OnlineSecurity, OnlineBackup, DeviceProtection, TechSupport, StreamingTV, and StreamingMovies all contain "No internet service". For the next step of the analysis, I will standardize these to "No".

### Standardizing to 'No'
I used the following query to standardize 'No internet service' to 'No'.

**Query :** [Converting_script.sql](./data_cleaning/Converting_sql_query.sql)

**Table :** after Standardizing [Converting_table](./data/data_cleaning_table/Standardizing.csv)

### Creating a Binary Churn Column
The Churn is currently Yes/No if we convert it binary 1 for Yes and 0 for No . It would be easy for analysis.
I used the following query to make a new column of binary churn.

**Query :** [Binary_Churn_script.sql](./data_cleaning/Binary_Churn_Script.sql)

**Table :**  [Binary_Churn_table](./data/data_cleaning_table/Binary_Churn_Table.csv)

#### Data cleaning is done

## EDA

### 01-What is the overall churn rate of the entire company?
I used the following query to calculate the total number of customers , sum of people that left the company and percentage of people that left the company.

**Query :** [Overall_Churn_script.sql](./eda_sql_querys/Overall_Churn.sql)

**Table :**   [Overall_Churn_table](./data/eda_tables/Overall_Churn_table.csv)

### 02- How much total revenue have we lost to churned customers?
I used the following query to find the sum of revenue we lost from customers that we lost to the company

**Query :** [Revenue_lost_script.sql](./eda_sql_querys/Revenue_lost_sql.sql)

**Table :**   [Revenue_lost_table](./data/eda_tables/Revenue_lost_table.csv)
Yes means the people that have left the company.As we can see the company lost 2862927.

### 03 - What is the average tenure and average Monthly Charges for all customers?
I used the following query to find the average tenure and average monthly charges for all customers.

**Query :** [avg_tenure_charges_script.sql](.eda_sql_querys/acg_tenure_charges_sql.sql)

**Table :** [avg_tenure_charges_table](./data/eda_tables/avg_tenure_charges_table.csv)

### 04- Which contract type has the highest churn rate? (Month-to-month, 1-year, or 2-year?)
I used the following query to see if contract type affect churn rate .

**Query :** [Contact_script.sql](./eda_sql_querys/Contract_query.sql)

**Table :** [Contract_table](./data/eda_tables/Contract_table.csv).

#### Observations :
As we can see month-to-month customers left the company most.

### 05- Does the payment method affect churn?
I used the following query to see if payment method affect people leaving company.

**Query :** [Payment_method_query.sql](./eda_sql_querys/Payment_method_query.sql)

**Table :** [Payment_mathod_table](./data/eda_tables/Payment_method_table.csv).

#### Observations :
As we can see in the table customer with electronic check left the company the most.

### 06- Do customers with partners or dependents stay longer than those who are single?
I used the following query to see if customers with partners or dependents stay longer than those who are single.

**Query :** [Payment_method_query.sql](./eda_sql_querys/Partners_dependents_query.sql)

**Table :** [Payment_mathod_table](./data/eda_tables/Partners_dependents_table.csv).

#### Observations :
As we can see in the table that people with No Partner and No Dependents have the highest churn rate (34.23%) and People with Both a Partner and Dependents have the lowest churn rate (14.31%).

### 07- Are Senior Citizens more likely to churn than younger customers?
I used the following query to see if senior citizens are more likely to churn than non senion citizen.

**Query :** [Senior_citizen_query.sql](./eda_sql_querys/Senior_citizen_query.sql)

**Table :** [Senior_citizen_table](./data/eda_tables/Senior_citizen_table.csv)

#### Observations : 
Senior Citizens have a much higher churn rate (41.68%) compared to Non-Senior (23.65%).

### 08- Compare churn rates between DSL, Fiber Optic, and No Internet.
I used the following query to see the churn rate between internet services and why there is differnce between internet services.

**Query :** [Internet_services_query.sql](./eda_sql_querys/Internet_service_query.sql)

**Table :** [Internet_services_table](./data/eda_tables/Internet_service_table.csv)

#### Observations : 
As we can see Fiber optic has the highest churn rate in the company because if you see table in the column montly charges fiber is expensive as Customers are paying nearly $33 more per month for Fiber, and it seems many of them decide it's not worth the high cost and leaving the company.

### 09- Do customers without Tech Support or Online Security churn more than those who have them?
I used the following query to see if customers without Tech Support or Online Security churn more than those who have them.

**Query :** [Online_security_tech_support_query.sql](./eda_sql_querys/Online_security_tech_support_query.sql)

**Table :** [Online_security_tech_support_table](./data/eda_tables/Online_security_tech_support_table.csv)

#### Observations :
Providing Tech Support and Online Security acts like glue. When customers have these services, they are nearly 4 times less likely to leave than those who don't.Increasing Tech Support adoption could drastically reduce churn.

### 010- What is the average tenure of a churned customer?
I used to the following query to see the average tenure customer spent before leaving the company.I binned the tenure column so churn rate should be find easily.

**Query :** [tenure_churn_query.sql](./eda_sql_querys/tenure_churn_query.sql)

**Table :** [tenure_churn_table](./data/eda_tables/tenure_churn_table.csv)


#### Observations :
A massive 53.33% churn rate. Literally half of new customers leave within the first six months and only 14% over 2 years.


## CONCLUSION

**Insight :** New customers have a 53% churn rate within the first 6 months.

**Insight :** Fiber Optic users churn at 41%, largely due to a significantly higher monthly cost ($91 vs $58 for DSL).

**Insight :** Month-to-month contracts are high-risk. Two-year contracts have the lowest churn.

**Insight :** Customers with Tech Support and Online Security are 4x less likely to leave.

**Insight :** Senior Citizens and customers without partners/dependents have higher churn rates.

## THANKS FOR VISITING
