use sales;

create table country(
id int primary key,
country_name varchar(20),
population int,
area varchar(20));

describe country;

create table persons(
id int primary key,
fname varchar(20),
lname varchar(20),
population int,
rating float,
country_id int,
country_name varchar(20),
foreign key (country_id) references country(id));

describe persons;

insert into country(id,country_name,population,area) values(0001,'canada',1000000,'west');
insert into country(id,country_name,population,area) values(0002,'australia',2500000,'north');
insert into country(id,country_name,population,area) values(0003,'usa',3000000,'north');
insert into country(id,country_name,population,area) values(0004,'uk',500000,'west');
insert into country(id,country_name,population,area) values(0005,'canada',1500000,'east');
insert into country(id,country_name,population,area) values(0006,'india',1000000,'north');
insert into country(id,country_name,population,area) values(0007,'usa',2000000,'west');
insert into country(id,country_name,population,area) values(0008,'germany',1500000,'west');
insert into country(id,country_name,population,area) values(0009,'uk',3000000,'north');
insert into country(id,country_name,population,area) values(0010,'india',2000000,'east'); 

select * from country;

insert into persons(id,fname,lname,population,rating,country_id,country_name) values(654,'john','ebraham',1000000,5.0,0001,'canada');
insert into persons(id,fname,lname,population,rating,country_id,country_name) values(916,'elizabeth','kurian',2500000,4.0,0002,'australia');
insert into persons(id,fname,lname,population,rating,country_id,country_name) values(567,'sam','saimon',3000000,4.5,0003,'usa');
insert into persons(id,fname,lname,population,rating,country_id,country_name) values(0004,'robert','brown',500000,4.5,0004,'uk');
insert into persons(id,fname,lname,population,rating,country_id,country_name) values(0005,'ajai','steve',1500000,5.0,0005,'canada');
insert into persons(id,fname,lname,population,rating,country_id,country_name) values(0006,'alaxander','simon',1000000,4.0,0006,'india');
insert into persons(id,fname,lname,population,rating,country_id,country_name) values(0007,'ajmal','nazar',2000000,3.9,0007,'usa');
insert into persons(id,fname,lname,population,rating,country_id,country_name) values(0008,'cannie','ban',1500000,4.0,0008,'germany');
insert into persons(id,fname,lname,population,rating,country_id,country_name) values(1009,'catherine','bran',3000000,4.5,0009,'uk');
insert into persons(id,fname,lname,population,rating,country_id,country_name) values(0010,'vinay','fort',2000000,5.0,0010,'india');

select * from persons;

select distinct country_name from persons;

select fname as first_name,lname as last_name from persons;

select * from persons where rating>4.0;

select country_name from persons where population>1000000;

select * from persons where country_name='usa' or rating>4.5;

select * from persons where country_name is null;

select * from persons where country_name in('usa','canada','uk');

select * from persons where country_name not in ('australia','india');

select * from country where population between 500000 and 2000000;

select * from country where country_name not like 'c_____';