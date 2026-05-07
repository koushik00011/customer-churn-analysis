use churn_db
select top 10 * from cleaned_data

alter table cleaned_data add id int identity(1,1);
alter table cleaned_data add constraint data primary key(id);
--checking total rows 
select count(*) as count_number from cleaned_data

--checking total chances of churn for both cases
select churn,count(*) as churn_num from cleaned_data
group by churn

--churn rate for multiplelines
SELECT 
    multiplelines,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(100.0 * SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_rate
FROM cleaned_data
GROUP BY multiplelines;

--churn rate for contract
SELECT 
contract,count(*) as total_customers,
sum(case when churn='Yes' then 1 else 0 end) as churned_customers,
round(100.0*sum(case when churn='Yes' then 1 else 0 end)/count(*),2) as churn_rate
from cleaned_data group by contract;
--(Customers on month-to-month contracts are the most likely to churn,so Offer discounts to convert month-to-month users into yearly plans)

--tenure with respect to churn
select 
case when tenure<=6 then 'New'
     when tenure>6 and tenure<=12 then 'Mid'
     when tenure>12 and tenure<=24 then 'Established'
     else 'Loyal' end as category,
     sum(monthlycharges) as monthly_charges,
sum(case when churn='Yes' then 1 else 0 end) as churn_customers,
round(100.0*sum(case when churn='Yes' then 1 else 0 end),2) as churn_percent

 from cleaned_data
group by 
case when tenure<=6 then 'New'
     when tenure>6 and tenure<=12 then 'Mid'
     when tenure>12 and tenure<=24 then 'Established'
     else 'Loyal' end 
order by churn_percent desc
--(New customers (0–6 months) have the highest churn, indicating early-stage disengagement.so Improve onboarding experience for new users)

--MONTHLY CHARGES WITH RESPECT TO CHURN
select 
case when monthlycharges<=30 then 'Low'
     when monthlycharges>30 and monthlycharges<=70 then 'Medium'
     else 'High' end as category,
sum(case when churn='Yes' then 1 else 0 end) as churn_customers,
round(100.0*sum(case when churn='Yes' then 1 else 0 end),2)as churn_percent
from cleaned_data
group by
case when monthlycharges<=30 then 'Low'
     when monthlycharges>30 and monthlycharges<=70 then 'Medium'
     else 'High' end
order by churn_percent desc
--(Customers with high monthly charges show the highest churn, indicating price sensitivity.so,ntroduce discounts or loyalty pricing for high-paying customers)

--Checking Which combination looks most risky?
--comparing new tenure with high charges and checking the churn percent or rate
SELECT 
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(100.0 * SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_rate
FROM cleaned_data
WHERE tenure <= 6 AND monthlycharges > 70;
--(New customers with high monthly charges have a very high churn rate (72.16%), indicating strong early dissatisfaction.so,Offer discounts or trial pricing for new high-paying customers)


---Month-to-month → highest churn
SELECT count(*) as no_of_customers,
sum(case when churn='Yes' then 1 else 0 end)as churned_customers,
ROUND(100.0 * SUM(CASE WHEN churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS churn_rate
FROM cleaned_data
WHERE contract='Month-to-month' and monthlycharges>70;

--New customers → highest churn
--High charges → higher churn
--New + High charges → ~72% churn