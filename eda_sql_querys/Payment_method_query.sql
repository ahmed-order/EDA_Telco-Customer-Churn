# eda
select PaymentMethod , sum(binary_churn) as sum_of_people_left , avg(binary_churn *  100) as percentage_of_people_left
from customer_staging
group by PaymentMethod