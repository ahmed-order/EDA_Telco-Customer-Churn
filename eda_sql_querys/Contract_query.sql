# eda 
select Contract , sum(binary_churn) as sum_of_people_churn , avg(binary_churn * 100) as percentage_of_people_churn
from customer_staging
group by Contract;


