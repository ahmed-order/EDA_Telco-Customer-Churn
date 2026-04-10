# eda 
 
select Partner , Dependents , sum(binary_churn) as total_churned , round(avg(binary_churn * 100), 2) as percentage_churned
from customer_staging
group by Partner , Dependents
order by percentage_churned desc