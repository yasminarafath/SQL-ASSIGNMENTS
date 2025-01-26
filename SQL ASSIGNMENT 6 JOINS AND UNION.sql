USE COUNTRY_DETAILS;

#inner join
select country.id,country.area,country.population,persons.fname,persons.country_id from country inner join persons on country.country_name=persons.country_name;

#left join
select country.id,country.population,country.area,persons.fname,persons.country_id from country left join persons on country.country_name=persons.country_name;

#right join
select country.id,country.population,country.area,persons.fname,persons.country_id from country right join persons on country.country_name=persons.country_name;

select distinct country_name from country
 union 
 select distinct country_name from persons;

select country_name from country
 union all
 select country_name from persons;
 
 SELECT *, ROUND(rating) AS rounded_rating FROM Persons;