# eda
select case
when SeniorCitizen = 1 then 'Senior' else 'Non-Senior'
end as citizen_type,sum(binary_churn),avg(binary_churn * 100)
from customer_staging
group by SeniorCitizen;
