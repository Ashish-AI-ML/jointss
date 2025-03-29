use HR

select * from employees
select * from departments
select * from dependents
select * from locations

--retreive the employee who have the same name as that of the dependents
select e.employee_id,e.first_name from employees e
inner join dependents d on e.employee_id=d.employee_id
where e.first_name = d.first_name

--retrive the emplyeewho have no dependents

select e.employee_id,e.first_name from employees e where NOT Exists
(select * from dependents d where e.employee_id = d.employee_id)


--find firstname of employe ehose salary is greater than all employe in department 5

select salary,first_name from employees e where salary > ALL
(select salary from employees e where department_id = 5)

--retrive the employees who have same name as that of the dependent

--retrive the list of  managerid who have atleast one dependent
select distinct manager_id from employees e
where e.employee_id in (select d.employee_id from dependents d
where e.employee_id=d.employee_id)

--display the no. of emplyee working in each department
--find the average salary in each department
--list the department where salary is greater than 20k
--select all employ who do not have a manager

