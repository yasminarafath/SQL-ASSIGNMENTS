create database school;
use school;

create table student(
roll_no  int primary key auto_increment,
name varchar(20) not null,
marks int,
grade char);

insert into student(roll_no,name,marks,grade)
values(1,'jhon',52,'B');
select * from student;

alter table student add column contact int;
select * from student;

alter table student drop column grade;
select * from student;

alter table student rename classten;
select * from student;

truncate table student;
select * from student ;

drop table student;
select * from student;