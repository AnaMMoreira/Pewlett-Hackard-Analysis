-- Retirement eligibility
SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Number of employees retiring
SELECT COUNT(first_name)
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

SELECT * FROM departments 

DROP TABLE retirement_info;

-- Create new table for retiring employees
SELECT emp_no, first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
-- Check the table
SELECT * FROM retirement_info;

--7.3.3
-- Joining departments and dept_manager tables
DROP TABLE check_depname_joint


SELECT departments.dept_name,
     dept_manager.emp_no,
     dept_manager.from_date,
     dept_manager.to_date
INTO check_depname_joint
FROM departments
INNER JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no;
SELECT * FROM check_depname_joint 

--DROP TABLE check_departments
-- SELECT departments.dept_name,
--      departments.dept_no
-- INTO check_departments
-- FROM departments;
-- SELECT * FROM check_departments

DROP TABLE check_dept_manager
SELECT dept_manager.dept_no,
     dept_manager.emp_no,
     dept_manager.from_date,
     dept_manager.to_date
INTO check_dept_name
FROM dept_manager
;
SELECT * FROM check_dept_manager


--same as above - shorthand
SELECT d.dept_name,
     dm.emp_no,
     dm.from_date,
     dm.to_date
FROM departments as d
INNER JOIN dept_manager as dm
ON d.dept_no = dm.dept_no;

SELECT COUNT d.dept_no,
     dm.emp_no,
     dm.from_date,
     dm.to_date
FROM departments as d
INNER JOIN dept_manager as dm
ON d.dept_no = dm.dept_no;
GROUP BY d.dept_no;

-- Joining retirement_info and dept_emp tables
SELECT retirement_info.emp_no,
    retirement_info.first_name,
retirement_info.last_name,
    dept_emp.to_date
FROM retirement_info
LEFT JOIN dept_emp
ON retirement_info.emp_no = dept_emp.emp_no;

-- same but shorthand
SELECT ri.emp_no,
    ri.first_name,
ri.last_name,
    de.to_date
FROM retirement_info as ri
LEFT JOIN dept_emp as de
ON ri.emp_no = de.emp_no;

--DROP TABLE current_emp;

SELECT ri.emp_no,
    ri.first_name,
    ri.last_name,
de.to_date
INTO current_emp
FROM retirement_info as ri
LEFT JOIN dept_emp as de
ON ri.emp_no = de.emp_no
WHERE de.to_date = ('9999-01-01');

-- 7.3.4
-- Employee count by department number
SELECT COUNT(ce.emp_no), de.dept_no
--INTO count_emp_dept
FROM current_emp as ce
LEFT JOIN dept_emp as de
ON ce.emp_no = de.emp_no
GROUP BY de.dept_no
ORDER BY de.dept_no;

SELECT * FROM salaries
ORDER BY to_date DESC;

SELECT emp_no, first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

SELECT emp_no,
    first_name,
last_name,
    gender
INTO emp_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');	

SELECT e.emp_no,
    e.first_name,
e.last_name,
    e.gender,
    s.salary,
    de.to_date
	INTO emp_info
FROM employees as e
INNER JOIN salaries as s
ON (e.emp_no = s.emp_no)
INNER JOIN dept_emp as de
ON (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
     AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
     AND (de.to_date = '9999-01-01');	 
	 
-- List of managers per department
SELECT  dm.dept_no,
        d.dept_name,
        dm.emp_no,
        ce.last_name,
        ce.first_name,
        dm.from_date,
        dm.to_date
INTO manager_info
FROM dept_manager AS dm
    INNER JOIN departments AS d
        ON (dm.dept_no = d.dept_no)
    INNER JOIN current_emp AS ce
        ON (dm.emp_no = ce.emp_no);
		
SELECT ce.emp_no,
ce.first_name,
ce.last_name,
d.dept_name
INTO dept_info
FROM current_emp as ce
INNER JOIN dept_emp AS de
ON (ce.emp_no = de.emp_no)
INNER JOIN departments AS d
ON (de.dept_no = d.dept_no);

--drop table salesdept_info

SELECT di.emp_no,
di.first_name,
di.last_name,
di.dept_name
INTO salesdept_info
FROM dept_info as di
WHERE di.dept_name = 'Sales';
SELECT * FROM salesdept_info

--drop table sales_n_devlp_info
SELECT di.emp_no,
di.first_name,
di.last_name,
di.dept_name
INTO sales_n_devlp_info
FROM dept_info as di
WHERE di.dept_name IN ('Sales', 'Development'); 
			
SELECT * FROM sales_n_devlp_info

drop table count_emp_dept
-- Retireing Employee count by title
SELECT COUNT(ri.emp_no), ti.title
INTO count_emp_dept
FROM retirement_info as ri
LEFT JOIN titles as ti
ON ri.emp_no = ti.emp_no
GROUP BY ti.title
ORDER BY ti.title;
SELECT * FROM count_emp_dept

-------------------------------------------------------------
-----------Module 7 Challenge--------------------------------
--------------------------------------------------------------

----deliverable 1
----Create a Table of of all the Retirering Titles

SELECT DISTINCT ON (ti.emp_no) ti.emp_no, ti.title, ti.from_date
INTO Retire_byTitle
FROM retirement_info as ri
LEFT JOIN titles as ti
ON ri.emp_no = ti.emp_no
--GROUP BY ti.title
ORDER BY ti.emp_no, ti.from_date DESC;

----deliverable 2
----Create a Table of of all the employees eligible for mentorship program

