--Data Analysis 

--1
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees 
LEFT JOIN salaries  
ON employees.emp_no=salaries.emp_no

--2
SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date BETWEEN '$1986-01-01' AND '$1986-12-31'

--3
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager
LEFT JOIN departments
ON dept_manager.dept_no=departments.dept_no
LEFT JOIN employees
ON dept_manager.emp_no=employees.emp_no

--4
SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
LEFT JOIN employees
ON dept_emp.emp_no=employees.emp_no
LEFT JOIN departments
ON dept_emp.dept_no=departments.dept_no

--5
SELECT first_name, last_name, sex FROM employees
WHERE first_name = 'Hercules' AND last_name like 'B%'

--6
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
LEFT JOIN departments
ON dept_emp.dept_no=departments.dept_no

--7
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
LEFT JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
LEFT JOIN departments
ON dept_emp.dept_no=departments.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development'

--8
SELECT last_name, COUNT(*)
FROM employees
GROUP BY last_name
ORDER BY 2 DESC





