# Telco Customer Churn - Exploratory Data Analysis

## Data Cleaning Phase
In this phase, I identified columns that required standardization. Specifically, columns related to internet services contained redundant categories like "No internet service" which can be simplified.

### Identifying Unique Values
I used the following script to check the unique values in several service-related columns.

**Script:** [Distinct_script.sql](./data_cleaning/Distinct_sql_script.sql)

**Table** [Distinct_table](./data/data_cleaning_table/Distinct_values.csv)


### Observations
The columns OnlineSecurity, OnlineBackup, DeviceProtection, TechSupport, StreamingTV, and StreamingMovies all contain "No internet service". For the next step of the analysis, I will standardize these to "No".

### Standardizing to 'No'
I used the following query to standardize 'No internet service' to 'No'.

**Script:** [Converting_script.sql](./data_cleaning/Converting_sql_query.sql)

**Table** after Standardizing [Conveting_table](./data/data_cleaning_table/Standardizing.csv)

### Creating a Binary Churn Column
The Churn is currently Yes/No if we convert it binary 1 for Yes and 0 for No . It would be easy for analysis.
I used the following query to make a new column of binary churn.

**Script:** [Binary_Churn_script.sql](./data_cleaning/Binary_Churn_Script.sql)

**Table** : [Binary_Churn_table](./data/data_cleaning_table/Binary_Churn_Table.csv)

#### Data cleaning is done

## EDA

### 01-What is the overall churn rate of the entire company?
I used to following query to total number of customers , sum of people that left the company and percentage of people that left the company.

**Script:** [Overall_Churn_script.sql](./eda_sql_querys/Overall_Churn.sql)

**Table**   [Overall_Churn_table](./data/eda_tables/Overall_Churn_table.csv)
