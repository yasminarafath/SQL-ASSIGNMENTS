USE country_details;

SELECT country_name, COUNT(*) AS person_count FROM persons GROUP BY country_name;

SELECT country_name, COUNT(*) AS person_count
FROM persons
GROUP BY country_name
ORDER BY person_count DESC;

SELECT country_name, AVG(rating) AS avg_rating
FROM persons
GROUP BY country_name
HAVING AVG(rating) > 3.0;

SELECT country_name  
FROM persons  
GROUP BY country_name  
HAVING AVG(rating) = (  
    SELECT AVG(rating)  
    FROM persons  
    WHERE country_name = 'USA'  
);
select * from persons;

SELECT country_name 
FROM country
WHERE population > (  
    SELECT AVG(population)  
    FROM country  
);

create  database  product;

create table customer(
customer_id int primary key,
first_name varchar(20),
last_name varchar(20),
email varchar(30),
phone_no bigint,
address varchar(50),
city varchar(25),
state varchar(20),
zip_code int,
country varchar(20)
);

insert into customer values(4,'arun','kumar','arun@gmail.com',9090876754,'pilukkal','kaladi','ernamkulam',567321,'india'),(2,'anil','mathew','mathew90@gmail.com',8765341290,'thalikkal','edappal','malappuram',568098,'india'),(3,'bran','thomas','bran123@gmail.com',7654328934,'jhonsonstreet','ACVR','new_york',432789,'uk'); 
insert into customer values(5,'jhon','kin','jhon456@gmail.com',8765431290,'snstreet','washington','washington',876123,'usa'),(1,'jhon','kin','jhon456@gmail.com',8765431290,'snstreet','washington','washington',876123,'us');
insert into customer values(7,'martin','luter','martin567@gmail.com',8086289010,'kghstreet','abc_city','california',889076,'california'),(8,'martin','luter','martin567@gmail.com',8086289010,'kghstreet','abc_city','xyz',889076,'california');
insert into customer values(9,'arun','kumar','arun@gmail.com',9090876754,'pilukkal','kaladi','california',567321,' cliforniaa'),(10,'anil','mathew','mathew90@gmail.com',8765341290,'thalikkal','edappal','california',568098,'california');
insert into customer values(11,'jhon','kin','jhon456@gmail.com',8765431290,'snstreet','washington','california',876123,'california');
insert into customer values(15,'martin','luter','martin567@gmail.com',8086289010,'kghstreet','abc_city','california',889076,'california'),(14,'martin','luter','martin567@gmail.com',8086289010,'kghstreet','abc_city','california',889076,'california');

CREATE VIEW customer_info AS  
SELECT CONCAT(first_name, ' ', last_name) AS full_name, email  
FROM Customer;
select * from customer_info;

create view us_customers as
select *  FROM Customer  
WHERE country = 'USA';
select * from us_customers;

CREATE VIEW Customer_details AS  
SELECT  
    CONCAT(first_name, ' ', last_name) AS full_name,  
    email,  
    phone_no,  
    state  
FROM Customer;
select * from customer_details;

set sql_safe_updates=0;

UPDATE Customer  
SET phone_no = 7790864325 
WHERE state = 'California';

SELECT * FROM Customer_details WHERE state = 'California';

SELECT state, COUNT(*) AS customer_count  
FROM Customer  
GROUP BY state  
HAVING COUNT(*)>5;

SELECT state, COUNT(*) AS customer_count  
FROM customer_details  
GROUP BY state;

SELECT *  
FROM customer_details  
ORDER BY state ASC;
