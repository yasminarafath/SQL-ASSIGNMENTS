USE PRODUCT;

CREATE table teachers(
id int primary key auto_increment,
name varchar(20),
subject varchar(20),
experience int,
salary int);

insert into teachers (name,subject,experience,salary)values('jeeja','english',5,25000),('suma','maths',3,20000),('baiju','english',25,50000),('trisha','malayalam',6,25000),('varun','hindi',5,25000),('neena','english',8,450000),('naina','hindi',8,400000),('vasu','science',9,40000);
select * from teachers;

delimiter $$
CREATE TRIGGER before_insert_teacher
BEFORE INSERT ON Teachers
FOR EACH ROW
BEGIN
    IF NEW.salary < 0 THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Salary cannot be negative';
    END IF;
END $$
delimiter ;

INSERT INTO Teachers (name, subject,experience,salary)VALUES ('John Doe', 'ss',9,-500);

create table teacher_log(
log_id INT PRIMARY KEY AUTO_INCREMENT,
teacher_id int ,
action varchar(20),
timestamp datetime
);
desc teacher_log;

delimiter $$
CREATE TRIGGER after_insert_teacher
AFTER INSERT ON Teachers
FOR EACH ROW
BEGIN
    INSERT INTO teacher_log (teacher_id, action, timestamp)VALUES (NEW.id, 'INSERT', NOW());
END $$
delimiter ;

INSERT INTO Teachers(id,name, salary) VALUES (11, 'Alice', 50000);
INSERT INTO Teachers(id,name, salary) VALUES (12,'james',35000);
select * from teacher_log;

delimiter $$
CREATE TRIGGER before_delete_teacher
BEFORE DELETE ON Teachers
FOR EACH ROW
BEGIN
    IF OLD.experience > 10 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot delete teacher with more than 10 years of experience';
    END IF;
END $$
delimiter ;

delete from teachers where id=3;

delimiter $$
CREATE TRIGGER after_delete_teacher
AFTER DELETE ON Teachers
FOR EACH ROW
BEGIN
    INSERT INTO teacher_log (teacher_id, action, timestamp)VALUES (OLD.id, 'DELETE', NOW());
END $$
delimiter ;

DELETE FROM Teachers WHERE id = 11;

select * from teacher_log;

select * from teachers;