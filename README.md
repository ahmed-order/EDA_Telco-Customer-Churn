# Telco Customer Churn - Exploratory Data Analysis

## Data Cleaning Phase
In this phase, I identified columns that required standardization. Specifically, columns related to internet services contained redundant categories like "No internet service" which can be simplified.

### Identifying Unique Values
I used the following script to check the unique values in several service-related columns.
**Script:** [Distinct_sql_script.sql](./data_cleaning/Distinct_sql_script.sql)

#### Observations
The columns OnlineSecurity, OnlineBackup, DeviceProtection, TechSupport, StreamingTV, and StreamingMovies all contain "No internet service". For the next step of the analysis, I will standardize these to "No" to simplify the model.
