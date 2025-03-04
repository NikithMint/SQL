CREATE TABLE customers(id int,name varchar(20),prod varchar(20));
insert into customers values(1,'nikith','chocolate');
insert into customers values(2,'Tankashala','Juice');
insert into customers values(3,'Siddharth','noodles');
insert into customers values(4,'Koushik','pizza');
insert into customers values(5,'Chaitanya','shakes');
select *from customers;
UPDATE customers SET name='Akanksh' where id=5;
insert into customers values(6,'Surya','Mango');
DELETE from customers where id=6;
alter table customers add rollno int;
update customers set rollno=1 where name='nikith';
update customers set rollno=1 where name='Tankashala';
update customers set rollno=2 where name='Siddharth';
update customers set rollno=3 where name='Koushik';
update customers set rollno=4 where name='Akanksh';

select *from customers order by name asc;
select *from customers order by name desc;



CREATE TABLE employees(employee_id int,name varchar(20),age int,department varchar(20));
insert into employees values(1,'Alice',30,'HR');
insert into employees values(2,'Bob',25,'IT');
insert into employees values(3,'Charlie',35,'Finance');
select *from employees;
update employees set age=26 where name='Bob';
delete from employees where name='Charlie';
insert into employees values(4,'David',36,'Marketting');
alter table employees add salary int;
update employees set salary=1000 where name='Alice';
update employees set salary=2000 where name='Bob';
update employees set salary=3000 where name='David';
update employees set salary=4000 where name='Charlie';

select count(employee_id) from employees; 

select avg(salary) from employees;

select *from employees order by salary desc offset 0 rows fetch next 3 rows only;

select top 3 *from employees order by salary desc;

select name,salary,age from employees where salary = (select min(salary) from employees);

select name,salary,age from employees where salary = (select max(salary) from employees)

















