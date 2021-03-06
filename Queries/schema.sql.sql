-- GIVEN code
DROP TABLE departments CASCADE;

-- Creating tables for PH-EmployeeDB
CREATE TABLE departments (
     dept_no VARCHAR(4) NOT NULL,
     dept_name VARCHAR(40) NOT NULL,
     PRIMARY KEY (dept_no),
     UNIQUE (dept_name)
);
SELECT * FROM departments;

DROP TABLE employees

--GIVEN code
CREATE TABLE employees (
     emp_no INT NOT NULL,
     birth_date DATE NOT NULL,
     first_name VARCHAR NOT NULL,
     last_name VARCHAR NOT NULL,
     gender VARCHAR NOT NULL,
     hire_date DATE NOT NULL,
     PRIMARY KEY (emp_no)
);
SELECT * FROM employees;

--GIVEN code
--
DROP TABLE dept_manager;

CREATE TABLE dept_manager (
	dept_no VARCHAR(4) NOT NULL,
    emp_no INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
    UNIQUE (emp_no)
);
SELECT * FROM dept_manager;

DROP TABLE salaries;

--GIvEN code
CREATE TABLE salaries (
	emp_no INT NOT NULL,
  	salary INT NOT NULL,
  	from_date DATE NOT NULL,
  	to_date DATE NOT NULL,
  	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
  	PRIMARY KEY (emp_no)
);
SELECT * FROM salaries;

DROP TABLE titles;

CREATE TABLE titles (
     emp_no INT NOT NULL,
	 title VARCHAR NOT NULL,
     from_date DATE NOT NULL,
     to_date DATE NOT NULL,
     FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
     FOREIGN KEY (emp_no) REFERENCES salaries (emp_no)
);

SELECT * FROM titles;

DROP TABLE Dept_Emp

CREATE TABLE Dept_Emp (
     emp_no INT NOT NULL,
	 dept_no VARCHAR(4) NOT NULL,
     from_date DATE NOT NULL,
     to_date DATE NOT NULL,
	 FOREIGN KEY (dept_no) REFERENCES Departments (dept_no),
	 PRIMARY KEY (emp_no, dept_no)
);
SELECT * FROM Dept_Emp;
