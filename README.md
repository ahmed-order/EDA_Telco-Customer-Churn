# Telco Customer Churn - Exploratory Data Analysis

## Data Cleaning Phase
In this phase, I identified columns that required standardization. Specifically, columns related to internet services contained redundant categories like "No internet service" which can be simplified.

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

**Query :** [Contact_script.sql](./eda_sql_querys/Contract_query.sql)

**Table :** [Contract_table](./data/eda_tables/Contract_table.csv).

#### Observations :
As we can see month-to-month customers left the company most.

### 05- Does the payment method affect churn?

**Query :** [Payment_method_query.sql](./eda_sql_querys/Payment_method_query.sql)

**Table :** [Payment_mathod_table](./data/eda_tables/Payment_method_table.csv).

#### Observations :
As we can see in the table customer with electronic check left the company the most.

### 06- Do customers with partners or dependents stay longer than those who are single?

**Query :** [Payment_method_query.sql](./eda_sql_querys/Partners_dependents_query.sql)

**Table :** [Payment_mathod_table](./data/eda_tables/Partners_dependents_table.csv).

#### Observations :
As we can see in the table that people with No Partner and No Dependents have the highest churn rate (34.23%) and People with Both a Partner and Dependents have the lowest churn rate (14.31%).

### 07- Are Senior Citizens more likely to churn than younger customers?

**Query :** [Senior_citizen_query.sql](./eda_sql_querys/Senior_citizen_query.sql)

**Table :** [Senior_citizen_table](./data/eda_tables/Senior_citizen_table.csv)

#### Observations : 
Senior Citizens have a much higher churn rate (41.68%) compared to Non-Senior (23.65%).
