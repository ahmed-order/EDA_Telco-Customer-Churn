# eda
select OnlineSecurity , TechSupport , count(*) as total_customers , sum(Binary_Churn) as sum_churned
       , avg(Binary_Churn * 100) as percentage_churned
from customer_staging
group by OnlineSecurity , TechSupport
order by percentage_churned desc