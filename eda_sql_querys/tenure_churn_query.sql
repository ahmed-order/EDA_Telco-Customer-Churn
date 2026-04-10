# eda
select case
 when tenure <= 6 then '0-6_Months'
 when tenure <= 12 then '6-12_Months'
 when tenure <= 24 then '1-2_Years'
 else 'Over_Two_Years'
end as tenure_bracket
, count(*) as total_customers , avg(Binary_Churn * 100) as churn_rate
from customer_staging
group by tenure_bracket
order by churn_rate desc;
