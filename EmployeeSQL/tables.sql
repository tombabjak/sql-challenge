CREATE TABLE departments (
	dept_no varchar NOT NULL,
	dept_name varchar NOT NULL,
 	PRIMARY KEY (dept_no)
	);
	
CREATE TABLE titles (
	title_id varchar NOT NULL,
	title varchar NOT NULL,
 	PRIMARY KEY (title_id)
	);
	
CREATE TABLE employees (
	emp_no int NOT NULL,
	emp_title_id varchar NOT NULL,
	birth_date date,
	first_name varchar NOT NULL,
	last_name varchar NOT NULL,
	sex	varchar,
	hire_date date,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
 	PRIMARY KEY (emp_no)
	);

CREATE TABLE salaries (
	emp_no int NOT NULL,
	salary int NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
 	PRIMARY KEY (emp_no)
	);

CREATE TABLE dept_emp (
	emp_no integer NOT NULL,
	dept_no varchar NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
 	PRIMARY KEY (emp_no, dept_no)	
	);

CREATE TABLE dept_manager (
	dept_no varchar NOT NULL,
	emp_no integer NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
 	PRIMARY KEY (dept_no, emp_no)
	);