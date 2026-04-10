/*
Creating a Binary churn column
*/

# Creating a Column

alter table customer_staging
add column Binary_Churn int ;

# Updating the Column

update customer_staging
set Binary_Churn = Case
	when churn = 'Yes' then 1
	else 0
end;

