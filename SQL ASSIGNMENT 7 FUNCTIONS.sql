use country_details;

ALTER TABLE Persons
ADD DOB DATE;
insert into persons (id,fname,lname,population,rating,country_id,country_name,DOB) values(20,'john','ebraham',1000000,5.0,0001,'canada','1885-03-12'),(21,'elizabeth','kurian',2500000,4.0,0002,'australia','1993-10-10'),(22,'sam','saimon',3000000,4.5,0003,'usa','2000-10-11'),(23,'robert','brown',500000,4.5,0004,'uk','2014-12-05'),(24,'ajai','steve',1500000,5.0,0005,'canada','2002-09-07'),(25,'alaxander','simon',1000000,4.0,0006,'india','2012-06-04'),(26,'ajmal','nazar',2000000,3.9,0007,'usa','1997-05-09'),(27,'cannie','ban',1500000,4.0,0008,'germany','2001-09-16'),(28,'catherine','bran',3000000,4.5,0009,'uk','1999-03-19'),(29,'vinay','fort',2000000,5.0,0010,'india','1998-04-02');


DELIMITER $$
CREATE FUNCTION CalculateAge (DOB DATE)
RETURNS INT
DETERMINISTIC
BEGIN
declare age int;
    
    set age=timestampdiff(year,dob,current_date());
    RETURN Age;
	
END $$
DELIMITER ;


 SELECT fname, DOB, CalculateAge(DOB) AS Age FROM Persons;

SELECT Country_name, length(Country_name) AS NameLength FROM Country;

SELECT Country_name, LEFT(Country_name, 3) AS FirstThreeChars FROM Country;

SELECT Country_name, UPPER(Country_name) AS UpperCaseName, LOWER(Country_name) AS LowerCaseName FROM Country;
  
     
    