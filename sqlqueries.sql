--1.
select e.emp_no, e.first_name, e.last_name, e.sex, s.salaries
from employees e 
join salaries s on e.emp_no = s.emp_no


--2.
select e.emp_no, e.first_name, e.last_name, e.hire_date
from employees e 
where hire_date >= '1996-01-01' 
and hire_date <= '1996-12-31'

--3.
select m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
from dept_manager m
join departments d on m.dept_no = d.dept_no
join employees e on m.emp_no = e.emp_no

--4.
select  e.emp_no, d.dept_no, d.dept_name, e.last_name, e.first_name
from departments d 
join dept_emp de on d.dept_no = de.dept_no
join employees e on de.emp_no = e.emp_no

--5.
select e.last_name, e.first_name, e.sex
from employees e
where first_name = 'Hercules'
and last_name like 'B%'

--6.
select e.emp_no, e.last_name, e.first_name, dept_name
from employees e
join dept_emp de on de.emp_no = e.emp_no
join departments d on de.dept_no = d.dept_no
where dept_name = 'Sales'

--7.
select e.emp_no, e.last_name, e.first_name, dept_name
from employees e
join dept_emp de on de.emp_no = e.emp_no
join departments d on de.dept_no = d.dept_no
where dept_name in ( 'Sales','Development')
	   
--8.
select last_name, count(distinct(first_name)) as Last_name_count
from employees
group by last_name
order by Last_name_count