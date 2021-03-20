


CREATE TABLE employees (
	emp_no INT,  
	title_id VARCHAR(5) NOT NULL,
	birth_date TIMESTAMP, 
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE
);


CREATE TABLE titles (
	title_id VARCHAR(5) NOT NULL,
	title VARCHAR(20) NOT NULL
);

CREATE TABLE salaries (
	emp_no INT,  
	salary INT
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(5),  
	emp_no INT
);

CREATE TABLE dept_emp(
	emp_no INT,
	dept_no VARCHAR(5) 
	);


CREATE TABLE departments(
	dept_no VARCHAR(5),  
	dept_name VARCHAR(20)
);

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


