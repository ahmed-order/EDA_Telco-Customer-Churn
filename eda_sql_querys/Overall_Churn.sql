#eda
select count(*) as Total_Customers,sum(binary_churn) as Total_Churn,avg(binary_churn * 100) as Percentage_Churn
from customer_staging