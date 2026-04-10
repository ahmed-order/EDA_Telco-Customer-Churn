# Telco Customer Churn - Exploratory Data Analysis

## Data Cleaning Phase
In this phase, I identified columns that required standardization. Specifically, columns related to internet services contained redundant categories like "No internet service" which can be simplified.

### Identifying Unique Values
I used the following script to check the unique values in several service-related columns.
**Script:** [Distinct_sql_script.sql](./data_cleaning/Distinct_sql_script.sql)
Its table [Distinct_table](./data/data_cleaning_table/Distinct_values.csv)


### Observations
The columns OnlineSecurity, OnlineBackup, DeviceProtection, TechSupport, StreamingTV, and StreamingMovies all contain "No internet service". For the next step of the analysis, I will standardize these to "No".

### Standardizing to 'No'
I used the following query to standardize 'No internet service' to 'No'.
**Script:** [Converting_sql_script.sql](./data_cleaning/Converting_sql_query.sql)
Table after Standardizing [Conveting_table](./data/data_cleaning_table/Standardizing.csv)

### Creating a Binary Churn Column
The Churn is currently Yes/No if we convert it binary 1 for Yes and 0 for No . It would be easy for analysis.
I used the following query to make a new column of binary churn.
**Script:** [Binary_Churn_sql_script.sql](./data_cleaning/Binary_Churn_Script.sql)
Table : [Binary_Churn_table.sql](./data/data_cleaning_table/Binary_Churn_Table.csv)

#### Data cleaning is done

## EDA
