create database library;
use library;

create table branch(
branch_no int primary key auto_increment,
manager_id int,
branch_address varchar(50),
contact_no bigint);
desc branch;

create table employee(
emp_id int primary key auto_increment,
emp_name varchar(20),
position varchar(20),
salary int,
branch_no int,
foreign key(branch_no)references branch(branch_no) on delete cascade);
desc employee;

create table books(
ISBN int primary key,
book_title varchar(20),
category varchar(20),
rental_price int,
status char(3),
author varchar(20),
publisher varchar(20));
desc books;

create table customer(
customer_id int primary key auto_increment,
customer_name varchar(20),
customer_address varchar(50),
reg_date date);
desc customer;

create table issuestatus(
issue_id int primary key auto_increment,
issued_cust int,
foreign key(issued_cust) references customer(customer_id) on delete cascade,
issued_book_name varchar(25),
issue_date date,
isbn_book int,
foreign key (isbn_book) references books(isbn) on delete cascade);
desc issuestatus;

create table returnstatus(
return_id int primary key auto_increment,
return_cust int,
return_book_name varchar(50),
return_date date,
isbn_book2 int,
foreign key (isbn_book2) references books(isbn) on delete cascade);
desc returnstatus;

INSERT INTO branch (Branch_no, Manager_Id, Branch_address, Contact_no) VALUES
(101, 1, '123 Main St, New York, NY', '1234567890'),
(102, 2, '456 Oak St, Los Angeles, CA', '9876543210'),
(103, 3, '789 Pine St, Chicago, IL', '4567891230'),
(104, 4, '321 Maple St, Houston, TX', '3216549870'),
(105, 5, '654 Cedar St, Miami, FL', '7891234560'),
(106, 6, '987 Birch St, Seattle, WA', '6543217890'),
(107, 7, '147 Walnut St, Boston, MA', '7418529630'),
(108, 8, '258 Elm St, San Francisco, CA', '3691472580'),
(109, 9, '369 Spruce St, Denver, CO', '1593579510'),
(110, 10, '753 Cherry St, Atlanta, GA', '2583691470');
select * from branch;

INSERT INTO employee (Emp_Id, Emp_name, Position, Salary, Branch_no) VALUES
(1, 'John Smith', 'Manager', 75000, 101),
(2, 'Alice Johnson', 'Assistant Manager', 60000, 102),
(3, 'Michael Brown', 'Sales Executive', 50000, 103),
(4, 'Emily Davis', 'HR Specialist', 55000, 104),
(5, 'David Wilson', 'IT Administrator', 70000, 105),
(6, 'Sophia Martinez', 'Accountant', 65000, 106),
(7, 'James Anderson', 'Customer Service Rep', 45000, 107),
(8, 'Olivia Thomas', 'Marketing Coord', 48000, 108),
(9, 'William Taylor', 'Financial Analyst', 72000, 109),
(10, 'Emma Harris', 'Operations Manager', 80000, 110),
(11,'Emily Davis', 'HR Specialist', 55000, 104),
(12,'Emily Davis', 'HR Specialist', 55000, 104),
(13,'Emily Davis', 'HR Specialist', 55000, 104),
(14,'Emily Davis', 'HR Specialist', 55000, 104),
(15,'Emily Davis', 'HR Specialist', 55000, 104);
select * from employee;

INSERT INTO books (ISBN, Book_title, Category, Rental_Price, Status, Author, Publisher) VALUES
('97801', 'C Programming', 'Programming', 10.50, 'yes', 'WKernig,MRitchie', 'Prentice Hall'),
('97805', 'Head First Design', 'Software Engineering', 12.00, 'no', 'Eric,Elisabeth', "O'Reilly Media"),
('97802', 'Pragmatic Programmer', 'Software Development', 15.00, 'yes', 'Andrew,David', 'Addison-Wesley'),
('97803', 'Clean Code', 'Programming', 18.50, 'no', 'Robert C. Martin', 'Prentice Hall'),
('97804', 'Clean Architecture', 'Software Engineering', 20.00, 'yes', 'Robert C. Martin', 'Pearson'),
('97806', 'Refactoring', 'Software Development', 17.00, 'yes', 'Martin Fowler', 'Addison-Wesley'),
('97814', 'You Don’t Know JS', 'JavaScript', 13.00, 'no', 'Kyle Simpson', "O'Reilly Media"),
('97815', 'JavaScript:The Good', 'JavaScript', 14.00, 'yes', 'Douglas Crockford', "O'Reilly Media"),
('97816', 'Spring in Action', 'Software Development', 19.00, 'no', 'Craig Walls', 'Manning Publications'),
('97807', 'Effective Java', 'Java Programming', 22.50, 'yes', 'Joshua Bloch', 'Addison-Wesley'),
('97808','History Rome','history',45.00,'yes','philip mathew','abc books pubs');
select * from books;

INSERT INTO customer (Customer_Id, Customer_name, Customer_address, Reg_date) VALUES
(1, 'John Doe', '123 Elm St, New York, NY', '2023-01-15'),
(2, 'Alice Johnson', '456 Maple Ave, Los Angeles, CA', '2023-02-10'),
(3, 'Michael Smith', '789 Oak St, Chicago, IL', '2023-03-05'),
(4, 'Emily Davis', '321 Pine St, Houston, TX', '2023-04-20'),
(5, 'David Wilson', '654 Cedar St, Miami, FL', '2023-05-18'),
(6, 'Sophia Martinez', '987 Birch St, Seattle, WA', '2023-06-25'),
(7, 'James Anderson', '147 Walnut St, Boston, MA', '2023-07-08'),
(8, 'Olivia Thomas', '258 Elm St, San Francisco, CA', '2023-08-12'),
(9, 'William Taylor', '369 Spruce St, Denver, CO', '2023-09-03'),
(10, 'Emma Harris', '753 Cherry St, Atlanta, GA', '2023-10-21');
INSERT INTO customer (Customer_Id, Customer_name, Customer_address, Reg_date) VALUES
(11,'martin king','876 mgs st,georgia,ga','2023-11-12'),
(12,'joe luther','987 church st,seattle,wa','2021-11-10');
select * from customer;

INSERT INTO issuestatus (Issue_Id, Issued_cust, Issued_book_name, Issue_date, Isbn_book) VALUES
(1, 1, 'C Programming', '2024-01-05', '97801'),
(2, 2, 'Head First Design', '2024-01-12', '97805'),
(3, 3, 'Pragmatic Programmer', '2024-02-01', '97802'),
(4, 4, 'Clean Code', '2024-02-15', '97803'),
(5, 5, 'Clean Architecture', '2024-03-03', '97804'),
(6, 6, 'Refactoring', '2024-03-10', '97806'),
(7, 7, 'You Don’t Know JS', '2024-03-20', '97814'),
(8, 8, 'JavaScript: The Good', '2024-04-05', '97815'),
(9, 9, 'Spring in Action', '2024-04-15', '97816'),
(10, 10, 'Effective Java', '2024-05-01', '97807'),
(11,11,'history rome','2023-06-13','97808');
select * from issuestatus;

INSERT INTO returnstatus (Return_Id, Return_cust, Return_book_name, Return_date, Isbn_book2) VALUES
(1, 1, 'C Programming', '2024-02-05', '97801'),
(2, 2, 'Head First Design', '2024-02-15', '97805'),
(3, 3, 'Pragmatic Programmer', '2024-03-01', '97802'),
(4, 4, 'Clean Code', '2024-03-12', '97803'),
(5, 5, 'Clean Architecture', '2024-04-01', '97804'),
(6, 6, 'Refactoring', '2024-04-10', '97806'),
(7, 7, 'You Don’t Know JS', '2024-04-20', '97814'),
(8, 8, 'JavaScript: The Good', '2024-05-05', '97815'),
(9, 9, 'Spring in Action', '2024-05-15', '97816'),
(10, 10, 'Effective Java', '2024-06-01', '97807');
select * from returnstatus;

##1
select book_title,category,rental_price from books where status ="yes";

##2
select emp_name,salary from employee order by salary desc;

##3
SELECT b.Book_title, c.Customer_name
FROM issuestatus i
JOIN books b ON i.Isbn_book = b.ISBN
JOIN customer c ON i.Issued_cust = c.Customer_Id;

##4
SELECT Category, COUNT(*) AS Total_Books
FROM books
GROUP BY Category;

##5
SELECT Emp_name, Position
FROM employee
WHERE Salary > 50000;

##6
SELECT c.Customer_name
FROM customer c
LEFT JOIN issuestatus i ON c.Customer_Id = i.Issued_cust
WHERE c.Reg_date < '2022-01-01' AND i.Issue_Id IS NULL;

##7
SELECT Branch_no, COUNT(*) AS Total_Employees
FROM employee
GROUP BY Branch_no;

##8
SELECT DISTINCT c.Customer_name
FROM customer c
JOIN issuestatus i ON c.Customer_Id = i.Issued_cust
WHERE i.Issue_date BETWEEN '2023-06-01' AND '2023-06-30';

##9
SELECT Book_title 
FROM books 
WHERE Book_title LIKE '%history%';

##10
SELECT Branch_no, COUNT(*) AS Total_Employees
FROM employee
GROUP BY Branch_no
HAVING COUNT(*) > 5;

##11
SELECT e.Emp_name, b.Branch_address
FROM employee e
JOIN branch b ON e.Emp_Id = b.Manager_Id;

##12
SELECT DISTINCT c.Customer_name
FROM customer c
JOIN issuestatus i ON c.Customer_Id = i.Issued_cust
JOIN books b ON i.Isbn_book = b.ISBN
WHERE b.Rental_Price > 25;

drop database library;