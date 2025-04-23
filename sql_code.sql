-- Write a query to calculate the average age of employees in each department.
select D.name, avg(e.age) as avg_age
from employees e 
inner join departments d on e.department_id= d.id 
group by d.name;


-- Write a query to find the department with the highest number of employees whose age is above 40.
select dep.name,count(*) as employee_count
from employees emp
inner join departments dep on emp.department_id = dep.id
where emp.age > 40 
group by dep.name
order by employee_count desc
limit 1;

-- Write a query to retrieve the count of employees who have in joined in last 100 days.
select count(*) from employees where joining_date between current_date() - INTERVAL 100 DAY AND current_date()

-- Write a query to update the joining date of all employees in the HR department to the yesterday.
update employees set joining_date = current_date() - INTERVAL 1 DAY
WHERE department_id in 
(select id from departments where name = 'HR');


-- Write a query to retrieve the count of employees who have in joined in last 100 days.
select count(*) from employees where joining_date between current_date() - INTERVAL 100 DAY AND current_date();
