-- mentorship_eligibility
-- Mentorship Eligibility table that holds the current employees 
-- who were born between January 1, 1965 and December 31, 1965
-- and are eligible to participate in a mentorship program
SELECT DISTINCT ON (emp_no)
	e.emp_no,
	e.first_name,
	e.last_name,
    e.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibilty
FROM employees AS e
LEFT JOIN dept_emp AS de
ON (e.emp_no = de.emp_no)
RIGHT JOIN titles AS ti
ON (de.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01')
	AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;
