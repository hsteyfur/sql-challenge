-- Creating table schema

-- Create table departments

CREATE TABLE Departments (
    dept_no VARCHAR (10) NOT NULL PRIMARY KEY,
    dept_name VARCHAR(30)   NOT NULL);

select * from departments

-- Create table employees


CREATE TABLE employees (
    emp_no INT   NOT NULL PRIMARY KEY,
    emp_title_id VARCHAR (10)  NOT NULL,
    birth_date DATE   NOT NULL,
    first_name VARCHAR (20)   NOT NULL,
    last_name VARCHAR (20)   NOT NULL,
    sex VARCHAR (2)   NOT NULL,
    hire_date DATE   NOT NULL);

select * from employees


--Create table dept_emp

CREATE TABLE Dept_emp (
    emp_no INT  NOT NULL,
    dept_no VARCHAR (10)  NOT NULL);

select * from dept_emp

-- Create table dept_managers


CREATE TABLE Dept_manager (
    dept_no VARCHAR (10)  NOT NULL,
    emp_no INT   NOT NULL);

select * from dept_managers


--Creating salaries table

CREATE TABLE salaries (
    emp_no INT   NOT NULL PRIMARY KEY,
    salary BIGINT   NOT NULL);

select * from salaries

--Creating titles table

CREATE TABLE titles (
    title_id VARCHAR (10)  NOT NULL PRIMARY KEY,
    title VARCHAR (20)  NOT NULL);

select * from titles


--Foreign Key Alteration

ALTER TABLE Dept_emp ADD CONSTRAINT fk_Dept_emp_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE Dept_emp ADD CONSTRAINT fk_Dept_emp_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Dept_manager ADD CONSTRAINT fk_Dept_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES Departments (dept_no);

ALTER TABLE Dept_manager ADD CONSTRAINT fk_Dept_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE employees ADD CONSTRAINT fk_employees_emp_title_id FOREIGN KEY(emp_title_id)
REFERENCES titles (title_id);

ALTER TABLE salaries ADD CONSTRAINT fk_salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);