# SQL Challenge
Note: All the query results are uploaded in CSV files. Each query from 1 to 8 are indicated as Q# to indicate the query number (e.g. Q1.csv contains results for Query 1)

## Data Engineering
* EDR is created using http://www.quickdatabasediagrams.com and *.PNG file showing graphic relationship among tables is uploaded into the Repository. 
* Schema.sql has been automatically generated and uploaded. 

## Data Analysis
* Query #1:  List the following details of each employee: employee number, last name, first name, sex, and salary.
    Results obtained by joining the "employees" and "salaries" tables on "employees number". 

* Query #2:  List first name, last name, and hire date for employees who were hired in 1986.
    Results obtained from the "employees" table locating all values in "hire date" aftter Dec, 31, 1985 and before Jan, 1, 1987. 

* Query #3: List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
    Results obtained by joining three tables: "employees" and "department manager" tables to later join the result with the "departments" table.

* Query #4: List the department of each employee with the following information: employee number, last name, first name, and department name.  
    Results obtained by joining three tables: "employees" and "department employees" tables to later join the result with the "departments" table.

* Query #5: List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
    Values are obtained filtering the "employees" table by using the "WHERE" command to locate the required first name AND the command LIKE with the 'B%' condition to bring all last names starting with the letter "B". % character is used as wildcard. 

* Query #6: List all employees in the Sales department, including their employee number, last name, first name, and department name.
    List of employees in the Sales Department is obtained by joining the "employees" and "Department Employee" tables to leter merge it with the "Deparments" table. After this, the WHERE command is used to filter by "Sales". 

* Query #7: List all employees in the Sales department, including their employee number, last name, first name, and department name.
    Same as Q6 with the inclusion of the OR command to also obtain people working on the "Development" department. 

* Query #8: In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
    Results are obtained using GROUP BY the last names, counting them using COUNT and then ordering using ORDER BY. 

## Bonus 
General comments:
* Password for connection is kept in a config file
* Engine connection function found in the website: https://naysan.ca/2020/05/31/postgresql-to-pandas/

Steps:
* Created a dataframe from the salary table
* Grouped by salary to see the count of people with the same salary. Ends up that 95346 people makes 40000
* Checked min and max salaries: Min salary was 40000 and max= 129492
* Created a histogram chart

------------------------------------
* Created a dataframe from titles
* Renamed the title column in the employees table to be able to merge with the titles table
* Grouped by salary and obtained the mean values for salaries: Results are such that Assistant Engineers make a little bit more money than Engineers and Senior Engineers. Also, Staff personnel make more money than Engineers and Managers.
* Bar plot created
* Looked for my ID= 499942 and name is "April Foolsday".