create database sales;
use sales;

create table orders(
order_id int primary key,
customer_name varchar(20) not null,
product_category varchar(20),
ordered_item varchar(20),
contact_no bigint unique);

alter table orders add column order_quantity int;

alter table orders rename to sales_orders;

insert into sales_orders(order_id,customer_name,product_category,ordered_item,contact_no,order_quantity) values(0001,'arun','accessories','belt',9015275642,1);
insert into sales_orders(order_id,customer_name,product_category,ordered_item,contact_no,order_quantity) values(0002,'neena','cosmetics','lipstick',8876434561,2);
insert into sales_orders(order_id,customer_name,product_category,ordered_item,contact_no,order_quantity) values(0003,'meera','accessories','chain',7098654326,3);
insert into sales_orders(order_id,customer_name,product_category,ordered_item,contact_no,order_quantity) values(0004,'shaju','clothing','jeans',9977565473,2);
insert into sales_orders(order_id,customer_name,product_category,ordered_item,contact_no,order_quantity) values(0005,'sanu','clothing','shirt',8123445678,4);
insert into sales_orders(order_id,customer_name,product_category,ordered_item,contact_no,order_quantity) values(0006,'raju','office_appliances','table',9986548090,5);
insert into sales_orders(order_id,customer_name,product_category,ordered_item,contact_no,order_quantity) values(0007,'ramya','home_appliance','cooker',9887665431,1);
insert into sales_orders(order_id,customer_name,product_category,ordered_item,contact_no,order_quantity) values(0008,'anil','office_appliances','cables',9877669611,4);
insert into sales_orders(order_id,customer_name,product_category,ordered_item,contact_no,order_quantity) values(0009,'kalid','electronics','mobile',76454230966,1);
insert into sales_orders(order_id,customer_name,product_category,ordered_item,contact_no,order_quantity) values(0010,'nila','clothing','top',7765425783,3);

select * from sales_orders;

select customer_name,ordered_item from sales_orders;

set sql_safe_updates=0;

update sales_orders set product_category='office_supplies' where product_category='office_appliances';
select * from sales_orders;

drop table sales_orders;