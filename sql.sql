create table nikith(
id int,
empname varchar(20)
);
select *from nikith; 
insert into nikith values(1,"nikith");
insert into nikith values(2,"niki");
insert into nikith values(3,"mint");
insert into nikith values(4,"mahesh");
insert into nikith values(5,"hello");
rename table nikith to mint;
select *from mint;
select id from mint;
insert into mint values(6,"nikith");
insert into mint values(7,"mint");
select distinct empname from mint;
select count(distinct empname) from mint;
select id,empname from mint where id=1;
select id,empname from mint where empname="mint";
/*
= , > , < , >= , <= ,<> (not equal to) =!, BETWEEN, LIKE, insert
*/
select *from mint where empname like 'n%';
select *from mint where marks like '2%';
select id,empname from mint order by id desc;
update mint set empname="ravi" where id =5;
delete from mint where empname="nikith";
/* selecting a particular elements */
select *from mint limit 3;
select min(id) from mint;
select min(empname) from mint;
select max(id) from mint;
alter table mint add marks int;
update mint set marks=10 where id=1;
update mint set marks=20 where id=2;
update mint set marks=30 where id=3;
update mint set marks=40 where id=4;
update mint set marks=50 where id=5;
update mint set marks=60 where id=6;
update mint set marks=70 where id=7;
select sum(marks) from mint;
select min(marks) from mint;
select avg(marks) from mint;
/*
WHERE CustomerName LIKE 'a%'	Finds any values that start with "a".
WHERE CustomerName LIKE '%a'	Finds any values that end with "a".
WHERE CustomerName LIKE '%or%'	Finds any values that have "or" in any position.
WHERE CustomerName LIKE '_r%'	Finds any values that have "r" in the second position.
WHERE CustomerName LIKE 'a_%'	Finds any values that start with "a" and are at least 2 characters in length.
WHERE CustomerName LIKE 'a__%'	Finds any values that start with "a" and are at least 3 characters in length.
WHERE ContactName LIKE 'a%o'	Finds any values that start with "a" and ends with "o".
'[bsp]%' statement selects all customers with a City starting with "b", "s", or "p":
'[a-c]%' statement selects all customers with a City starting with "a", "b", or "c":
'[!bsp]%' statements select all customers with a City NOT starting with "b", "s", or "p":
*/
select *from mint where empname like "r%";
alter table mint add country varchar(100);
update mint set country="germany" where id=1;
update mint set country="france" where id=2;
update mint set country="england" where id=3;
update mint set country="uk" where id=4;
update mint set country="us" where id=5;
update mint set country="india" where id=6;
update mint set country="china" where id=7;
select *from mint where country="germany" or country="india" or country="france"; 
select *from mint where country in ("germany","france","india");
select *from mint where country not in("germany","france","india");
select *from mint where marks between 10 and 40;
select *from mint where marks not between 10 and 40;
/* turncate is used to delete the data in the table but not the table itself
drop is used to delete the table and data also.
Constraints
1.not null
2.unique
3.primary key
4.foreign key
5.check
6.default
7.create index
*/
create table employee(id int not null primary key,name varchar(20),address varchar(40));
desc employee;
desc mint;
create table department(id int not null primary key,name varchar(40),empid int not null,foreign key(empid) references employee(id));
desc department;
drop table employee;
drop table department;
CREATE TABLE Persons(
    Personid int auto_increment,
    LastName varchar(255) not null,
    FirstName varchar(255),
    primary key (Personid)
);
select *from Persons;
drop table Persons;
insert into Persons values(1,"nikith","mint");
insert into Persons values(2,"anuradha","mint");
drop table Employeeinfo;
create table Employeeinfo(empid int,empFname varchar(200),EmpLname varchar(200),Department varchar(30),project varchar(20),Address varchar(20),DOB varchar(20),Gender varchar(5));
insert into Employeeinfo values(1,"sanjay","mehra","hr","p one","hyd",1976-12-01,"M");
insert into Employeeinfo values(2,"Ananya","mishra","admin","p tw0","del",1968-05-02,"F");
insert into Employeeinfo values(3,"Rohan","diwan","account","p three","bom",1980-101-01,"M");
insert into Employeeinfo values(4,"Sonia","kulkarni","hr","p one","hyd",1992-05-02,"F");
insert into Employeeinfo values(5,"Ankit","kapoor","admin","p two","del",1994-07-03,"M");
select count(Department) from Employeeinfo where Department="hr";
select SYSTDATE();
SELECT SUBSTRING(EmpLname, 1, 4) FROM EmployeeInfo; 
create table EmployeePosition(empid int,empposition varchar(200),Dateofjoining varchar(20),salary int);
insert into EmployeePosition values(1,"Manager","01/05/2022",500000);
insert into EmployeePosition values(2,"Executive","01/05/2022",75000);
insert into EmployeePosition values(3,"Manager","01/05/2022",90000);
insert into EmployeePosition values(2,"Lead","01/05/2022",85000);
insert into EmployeePosition values(1,"Executive","01/05/2022",300000);
select Employeeinfo.empFname, Employeeinfo.EmpLname, EmployeePosition.empposition from Employeeinfo 
inner join EmployeePosition on  Employeeinfo.empid=EmployeePosition.empid where empposition="Manager";
select *from Employeeinfo where EmpFname not in ("sanjay","Sonia");
select *from Employeeinfo order by EmpLname desc, Department asc;
select * from EmployeePosition order by salary desc LIMIT 3;
select min(empid) from EmployeePosition;
select *from EmployeePosition where empid<= (select count(empid)/2 from EmployeePosition);
/*creating a sql database
CREATE DATABASE databasename;
DROP DATABASE databasename;
BACKUP DATABASE databasename
TO DISK = 'filepath'
;
ALTER TABLE table_name RENAME COLUMN old_name to new_name;
 */
select *from Employeeposition;
select *from Employeeinfo;
select MAX(salary) AS "SecondHighestSalary"
From EmployeePosition
where salary<(select max(salary) from EmployeePosition)

/*Sub query example
Select max(marks) from (select * from Student where City ="Delray") as temp; 
"here temp acts a like temporary table"
*/

/*
Views Concept (Important)
-----------------
CREATE VIEW view1 as
SELECT rollno,name from Student;

SELECT *FROM view1
we can drop views
drop view view1

*/

/*
Joins
Inner Join
Returns records that having matching values in both tables
syntax
----------
select column(s) 
from tableA
inner join tableB
on tableA.col_name = tableB.col_name;
----------

Left join and Right join same syntax
Returns all records from the left table, and the matched records in right table
syntax
----------
select column(s) 
from tableA
left join tableB
on tableA.col_name = tableB.col_name;

--------
*/
/* SQL Table Copy
    
SELECT * INTO New_table_name FROM old_table_name;

*/




