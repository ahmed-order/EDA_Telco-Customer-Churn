/*
Converting 'No internet services' to 'No'
*/

update customer_staging
set onlinesecurity = 'No',
	OnlineBackup = 'No',
    DeviceProtection = 'No',
    TechSupport = 'No',
    StreamingTV = 'No',
    StreamingMovies = 'No'
where OnlineSecurity = 'No internet service' or OnlineBackup = 'No internet service' or DeviceProtection = 'No internet service'
      or TechSupport = 'No internet service' or StreamingTV = 'No internet service' or StreamingMovies = 'No internet service';

