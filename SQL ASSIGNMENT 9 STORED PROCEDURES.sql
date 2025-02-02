create TABLE worker(
 WorkerId int primary key auto_increment,
 FirstName CHAR(25),
 LastName CHAR(25),
 Salary INT(15),
 JoiningDate DATETIME, 
 Department CHAR(25));
 
 insert into worker values(1,'prem','sankar',15000,'2023-09-11 09:00:00','cs'),(2,'gokul','das',25000,'2000-08-09 10:09:00','maths'),(3,'anil','mathew',30000,'2015-10-10 02:25:06','commerce'),(4,'john','daniel',100000,'2014-05-03 08:05:30','cs'),(5,'elizabeth','kurian',50000,'2012-08-06 03:05:25','maths');
 
 DELIMITER //

CREATE PROCEDURE AddWorker(
    IN p_FirstName VARCHAR(50),
    IN p_LastName VARCHAR(50),
    IN p_salary int,
	IN P_joiningdate datetime, 
    IN p_Department VARCHAR(50)
	)
    
BEGIN
    INSERT INTO Worker (FirstName, LastName, Salary, JoiningDate,Department) 
    VALUES (p_FirstName, p_LastName, p_Salary, p_JoiningDate,p_Department);
END //

DELIMITER ;

call addworker('zakaria','tom',500000,'2020-01-10 09:00:00','hr');
select * from worker;

DELIMITER //

CREATE PROCEDURE GetWorkerSalary(
    IN p_worker_id INT,
    OUT p_salary int
)
BEGIN
   
    SELECT Salary INTO p_salary FROM Worker WHERE WorkerID = p_worker_id;
END //

DELIMITER ;

CALL GetWorkerSalary(3, @worker_salary);

SELECT @worker_salary AS Salary;

set sql_safe_updates=0;

delimiter //

CREATE PROCEDURE UpdateWorkerDepartment(
    IN p_worker_id INT,
    IN p_department VARCHAR(20)
)
BEGIN
    
    UPDATE Worker 
    SET Department = p_department 
    WHERE WorkerID = p_worker_id;
END //

DELIMITER ;

call updateworkerdepartment(1,'hr');

select * from worker where workerid=1;

DELIMITER //

CREATE PROCEDURE GetWorkerCountByDepartment(
    IN p_department VARCHAR(20),
    OUT p_workerCount INT
)
BEGIN

    SELECT COUNT(*) INTO p_workerCount FROM Worker WHERE Department = p_department;
END //

DELIMITER ;

CALL GetWorkerCountByDepartment('maths', @worker_count);

SELECT @worker_count AS WorkerCount;
select * from worker;

delimiter //

create procedure getAvgSalaryByDepartment(
    IN p_department VARCHAR(50),
    OUT p_avgSalary DECIMAL(10,2)
)
BEGIN
    
    SELECT AVG(Salary) INTO p_avgSalary FROM Worker WHERE Department = p_department;
END //

DELIMITER ;

CALL GetAvgSalaryByDepartment('cs', @avg_salary);

SELECT @avg_salary AS AvgSalary;


