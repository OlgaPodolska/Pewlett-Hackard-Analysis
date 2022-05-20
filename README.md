# Pewlett-Hackard-Analysis
## Overview of the analysis:

Hewlett Hackard company experiencing a "silver tsunamy", when many experienced employees are ready to retire. Manager wants the number and characteristics of that employees. Purpose of this analyze is determine the number of retiring employees per title and identify employees who are eligible to participate in a mentorship program. 
Used tools:
Visual Studio Code 1.67.0, 
Python 3.9.7, 
PostgreSQL 11,
pgAdmin 4.06.

## Results:
### The Number of Retiring Employees by Title

The total number of people who have ever worked for the PH company is more then 300K persons, their data keeped in the six csv files, some of them have more than 300 000 rows. 

* My first step was to realize the structure of data and visualize it in the ER diagram: 

![EmployeeDB.png](/Resources/EmployeeDB.png) 


* Next I created a SQL query for current working in PH empoyees, who are old enough to be retired next year.
The final table includes information from different sources: emloyee number, name, title and how long they work with PH.

![retirement_titles.png](/Resources/retirement_titles.png) 

* Some employees have switched titles over the years, so some data in the table was duplicated, and I needed to remove these duplicates and keep only the most recent title of each employee with the function DISTINCT ON in the Unique Titles Table.

![distinct.png](/Resources/distinct.png) 

* I sorted the Unique Titles table in ascending order by the employee number and descending order by the last date of the most recent title.

![unique_titles.png](/Resources/unique_titles.png) 

* For the final report I retrieved the number of titles and created a Retiring Titles table to hold the required information  summarized in descending order:

![r_titles.png](/Resources/r_titles.png) 

### The Employees Eligible for the Mentorship Program 

* I created Mentorship Eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965 and are eligible to participate in a mentorship program:

![m_e.png](/Resources/m_e.png) 

## Summary: 

The following questions can shed additional light on the results of the analysis and be useful:

1. What is the total total number of all employees who are of retirement-age?

![total.png](/Resources/total.png) 

2. What departments are they from? 

![retirement_departments.png](/Resources/retirement_departments.png) 

3. What is the total number retirement-age employee in the each department?

![retiring_departments.png](/Resources/retiring_departments.png) 

As we can see from those images, the biggest impact "silver tsunamy" will have on the most important departments: Developments, Production and Sales. There is a lot of decision from shareholders urgently needed.


