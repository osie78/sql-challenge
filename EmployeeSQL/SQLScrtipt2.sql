--Query #1. List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex,salaries.salary
FROM salaries
INNER JOIN employees ON
employees.emp_no=salaries.emp_no;

---Q2 List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name,last_name,hire_date
FROM employees
WHERE hire_date > '19851231' AND 
	  hire_date < '19870101';


--Q3 List the manager of each department with the following information: department number, 
--department name, the manager's employee number, last name, first name.

SELECT employees.first_name, employees.last_name, employees.emp_no, dept_manager.dept_no,departments.dept_name
FROM dept_manager
INNER JOIN employees ON
employees.emp_no=dept_manager.emp_no
INNER JOIN departments ON
departments.dept_no=dept_manager.dept_no;

--Q4 List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

SELECT employees.emp_no,employees.first_name, employees.last_name, departments.dept_name
FROM dept_emp
INNER JOIN employees ON
employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON
departments.dept_no=dept_emp.dept_no;

-- Q5 List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name,last_name,sex
FROM employees
WHERE first_name='Hercules' AND last_name LIKE 'B%';

-- Q6 List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT employees.emp_no,employees.first_name, employees.last_name, departments.dept_name
FROM dept_emp
INNER JOIN employees ON
employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON
departments.dept_no=dept_emp.dept_no
WHERE dept_name='Sales';

-- Q7 List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
SELECT employees.emp_no,employees.first_name, employees.last_name, departments.dept_name
FROM dept_emp
INNER JOIN employees ON
employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON
departments.dept_no=dept_emp.dept_no
WHERE dept_name='Sales' OR dept_name='Development';

-- Q8 In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS "freq_last_name"
FROM employees
GROUP BY last_name
ORDER BY "freq_last_name" DESC;