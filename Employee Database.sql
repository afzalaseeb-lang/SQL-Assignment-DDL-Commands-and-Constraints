create database employee;
use employee;
create table departments (
department_id int primary key,
department_name varchar (100) );
create table location (
    location_id int primary key,
    location varchar(30)
);
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    gender ENUM('M', 'F'),
    age INT,
    hire_date DATE,
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),

    FOREIGN KEY (department_id)
        REFERENCES departments(department_id),

    FOREIGN KEY (location_id)
        REFERENCES location(location_id)
);
alter table employees
add column email varchar(100);
alter table employees
modify column designation varchar(200);
alter table employees drop column age;
alter table employees
rename column hire_date to date_of_joining;
rename table departments
to departments_info;
rename table location
to locations;
truncate table employees;
drop table employees;
drop database employee;
alter table departments
modify department_name varchar(100) not null;

alter table departments
add constraint uq_department_name
unique (department_name);
alter table departments
drop constraint department_name;
alter table location
modify location_id int auto_increment;
ALTER TABLE employees
DROP FOREIGN KEY employees_ibfk_2;
ALTER TABLE employees
ADD CONSTRAINT employees_ibfk_2
FOREIGN KEY (location_id)
REFERENCES location(location_id);
ALTER TABLE location
MODIFY location VARCHAR(30) NOT NULL;
ALTER TABLE location
ADD CONSTRAINT uq_location UNIQUE (location);
desc employees;
ALTER TABLE employees
MODIFY employee_name VARCHAR(50) NOT NULL;
ALTER TABLE employees
MODIFY gender ENUM('M', 'F');
ALTER TABLE employees
ADD CONSTRAINT chk_employee_age
CHECK (age >= 18);
ALTER TABLE employees
ALTER COLUMN hire_date 
SET DEFAULT (CURRENT_DATE);
ALTER TABLE employees
ADD CONSTRAINT fk_employee_department
FOREIGN KEY (department_id)
REFERENCES departments(department_id);
ALTER TABLE employees
ADD CONSTRAINT fk_employee_location
FOREIGN KEY (location_id)
REFERENCES location(location_id);