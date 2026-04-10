/*
Standardizing "No Internet Service"
As you can see many columns like onlinebakup,onlinesecurity,techsupport have three distinct values
Columns that include : OnlineSecurity , OnlineBackup , DeviceProtection , TechSupport , StreamingTV , StreamingMovies
*/


select distinct OnlineBackup
from customer_staging
