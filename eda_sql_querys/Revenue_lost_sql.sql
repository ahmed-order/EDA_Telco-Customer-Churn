#eda

select churn , round(sum(TotalCharges)) as revenue
from customer_staging
group by Churn
order by revenue
