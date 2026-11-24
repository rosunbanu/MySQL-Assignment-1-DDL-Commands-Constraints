create database Employee;
use employee;
create table Employees(
Employee_id int, 
employee_name varchar(50),
gender enum('m','f'),
age int,
hire_date date,
designation varchar(100),
department_id int,
location_id int,
salary decimal(10,2));
create table Location(
location_id int,
location varchar(30));
create table Departments(
department_id int,
department_name varchar(100));
alter table Employees add Email varchar(100);
alter table employees Modify designation varchar(200);
alter table employees
drop column age;
alter table employees 
rename column hire_date to date_of_joining; 
rename table departments to department_info;
rename table location to Locations;
truncate table employees;
use employee;
drop table employees;
drop database employee;

create database Employee;
use employee;
create table Departments(
department_id int primary key,
department_name varchar(100)not null unique);
create table Location(
location_id int primary key auto_increment,
location varchar(30)not null unique);
create table Employees(
Employee_id int primary key, 
employee_name varchar(50)not null unique,
gender enum('m','f'),
age int check(age>=18),
hire_date date default(current_date),
designation varchar(100),
department_id int,
location_id int,
salary decimal(10,2),

foreign key (department_id)
references departments(department_id),

foreign key (location_id)
references Location(location_id));
