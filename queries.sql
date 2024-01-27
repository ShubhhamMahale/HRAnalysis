select * from hrdata

select sum(employee_count) from hrdata

select count(attrition) from hrdata where attrition = 'Yes'

select round(((select count(attrition) from hrdata where attrition = 'Yes')/
			   sum(employee_count))*100,2) from hrdata;
			  
select sum(employee_count)-(select count(attrition) from hrdata where attrition='Yes') from hrdata;

select round((sum(age)/sum(employee_count)),0) from hrdata

select gender,count(attrition) from hrdata where attrition = 'Yes' group by gender order by count(attrition) desc;

select age,sum(employee_count) from hrdata where attrition = 'Yes' group by age order by age;

select education_field,count(attrition) from hrdata where attrition = 'Yes' group by education_field order by count(attrition);

CREATE EXTENSION IF NOT EXISTS tablefunc;

