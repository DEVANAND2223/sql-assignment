use emp;
create table employe(
emp_id int primary key auto_increment,
emp_name varchar(20),
emp_salary bigint
);

insert into employe(emp_id,emp_name,emp_salary) values(1,"deva",20000),(2,"vicky",15000),(3,"kumar",30000),(4,"hari",10000);

select emp_id,emp_name,emp_salary,
rank() over (order by emp_salary desc)
as ranks from employe;

select emp_id,emp_name,emp_salary,
dense_rank() over(order by emp_salary desc)
as ranks from employe;

select  emp_id,emp_name,emp_salary,
min(emp_salary) over()
as min_salary from employe;    

select  emp_id,emp_name,emp_salary,
max(emp_salary) over( order by emp_salary desc)
as max_salary from employe; 