# eda

select InternetService , count(*) as total_customers , sum(binary_churn) as sum_churned
	   , avg(binary_churn * 100) as percentage_chruned , round(avg(MonthlyCharges), 2) as monthly_charges
from customer_staging
group by InternetService;

select *
from customer_staging