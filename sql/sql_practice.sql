create database sql_practice;

use sql_practice;

create table department(
	id varchar(50),
    name varchar(100),
    primary key (id)
);

create table employee (
	id int auto_increment,
    name varchar(100),
    email varchar(100) unique,
    department_id varchar(50),
    salary int,
    primary key (id),
    foreign key (department_id) references department(id)
);

drop table department;
show tables;
describe department;
describe employee;


-- insert

insert into department values
('1', 'sales');

insert into department values
('2', 'marketing'), ('3', 'development');

insert into employee (id, name) values ('1', 'john');
insert into employee (id, name) values ('2', 'ram'), ('3', 'shyam');
insert into employee values ('4', 'mark', 'mark@email.com', '1', 10000);
insert into employee values ('5', 'henry', 'henry@email.com', '2', 20000);

-- select
select * from department;
select * from employee;


-- alter
alter table employee 
add constraint unique (name);

alter table employee 
modify name varchar(100) not null;

-- stored procedure

delimiter //
create procedure get_salary (in sal int)
begin
	select * from employee where salary > sal;
end//

delimiter //
create procedure increase_salary (in emp_id int)
begin
	declare increase int;
    update employee set salary = salary * 1.5 
    where id = emp_id;
    
    select name, salary from employee where id = emp_id;
end//

call increase_salary(4);


-- view 

create view employee_names as
select name from employee where salary = 10000;

select * from employee_names;

drop view employee_names;

-- index

create index email_index 
on employee(email);

select * from employee where email IS NOT NULL;

-- inner join
select employee.name, employee.email, department.name as department 
from employee inner join department on employee.department_id = department.id;

