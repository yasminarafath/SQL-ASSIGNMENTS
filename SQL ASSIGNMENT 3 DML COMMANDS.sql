CREATE TABLE managers(
manager_id int,
first_name varchar(20),
last_name varchar(20),
DOB date,
age int check(age>18),
last_update timestamp,
gender char,
department varchar(20),
salary int not null,
annual_income int);

insert into managers(manager_id,first_name,last_name,DOB,age,last_update,gender,department,salary,annual_income) values(100,'veena','mathew','1885-03-12',40,'2024-09-22 02:10:12','f','commerce',50000,600000);
insert into managers(manager_id,first_name,last_name,DOB,age,last_update,gender,department,salary,annual_income) values(101,'mariya','jose','1993-10-10',32,'2025-01-10 01:00;00','f','commerce',25000,300000);
insert into managers(manager_id,first_name,last_name,DOB,age,last_update,gender,department,salary,annual_income) values(102,'jain','zerin','2014-12-05',10,'2024-12-01 10:13:01','m','it',25000,300000);
insert into managers(manager_id,first_name,last_name,DOB,age,last_update,gender,department,salary,annual_income) values(103,'ahmad','muneer','2002-09-07',22,'2014-10-11 4:30:06','m','literature',40000,480000);
insert into managers(manager_id,first_name,last_name,DOB,age,last_update,gender,department,salary,annual_income) values(104,'akil','thampi','2012-06-04',12,'2023-12-04 06:15:09','m','it',35000,420000);
insert into managers(manager_id,first_name,last_name,DOB,age,last_update,gender,department,salary,annual_income) values(105,'aaliya','merin','1997-05-09',28,'2025-01-02 09:16:00','f','physics',20000,240000);
insert into managers(manager_id,first_name,last_name,DOB,age,last_update,gender,department,salary,annual_income) values(106,'jeeja','nair','2001-09-16',23,'2022-07-16 07:45:40','f','maths',15000,180000);
insert into managers(manager_id,first_name,last_name,DOB,age,last_update,gender,department,salary,annual_income) values(107,'arun','kumar','1999-03-19',26,'2024-01-18 09:18:20','m','commerce',45000,540000);
insert into managers(manager_id,first_name,last_name,DOB,age,last_update,gender,department,salary,annual_income) values(108,'nila','james','2000-09-12',24,'2024-03-25 05:52:19','f','it',50000,600000);
insert into managers(manager_id,first_name,last_name,DOB,age,last_update,gender,department,salary,annual_income) values(109,'merin','chacko','1998-04-02',27,'2023-07-12 12:10:00','m','maths',35000,420000);

select * from managers;

select first_name,last_name,DOB from managers where manager_id='101';

select annual_income from managers;

select * from managers where first_name<>'aaliya';

select * from managers where department='it' and salary > 25000;

select * from managers where salary between 10000 and 35000;

