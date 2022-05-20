-- Employee_Database_challenge
-- Retirement Titles table for employees who are born between January 1, 1952 and December 31, 1955
SELECT e.emp_no,
    e.first_name,
	e.last_name,
    title.title,
    title.from_date,
    title.to_date
INTO retirement_titles
FROM employees AS e 
INNER JOIN titles AS title
ON (e.emp_no = title.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (rt.to_date = '9999-01-01')
ORDER BY emp_no;

-- Unique Titles table that contains the employee number, first and last name, and most recent title
SELECT DISTINCT ON (emp_no) 
	rt.emp_no,
    rt.first_name,
	rt.last_name,
    rt.title,
    rt.from_date,
    rt.to_date
INTO unique_titles
FROM retirement_titles AS rt 
WHERE (rt.to_date = '9999-01-01')
ORDER BY emp_no ASC, to_date DESC;

-- Retiring Titles table that contains the number of titles filled by employees who are retiring
SELECT COUNT (title), title
INTO retiring_titles
FROM unique_titles
GROUP BY (title)
ORDER BY COUNT (title) DESC;

