create database country_details; 
use country_details;

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

select left(country_name,3) from country;

select concat(fname,' ',lname)  AS full_name from persons;

select count(distinct country_name) as distinct_countries from persons;

select max(population) as maximum_population from country;

select min(population) as minimum_population from persons;

insert into persons(id,fname,lname,population,rating,country_id,country_name) values(1234,'arjun',null,3000000,5,0010,'india');
insert into persons(id,fname,lname,population,rating,country_id,country_name) values(5678,'anil',null,400000,4.5,0009,'uk');
select count(lname) as last_name from persons;

select count(*) as number_of_rows from persons;

select population from country limit 3;

select *  from country order by rand() limit 3;

select * from persons order by rating desc; 

SELECT sum(population) FROM persons group by country_name;

select country_name from persons where population>50000 ;

SELECT 
    country_name,
    COUNT(*) AS total_persons,
    AVG(rating) AS average_rating
FROM 
    persons
GROUP BY 
    country_name
HAVING 
    COUNT(*) > 2
ORDER BY 
    avg(rating) ASC;