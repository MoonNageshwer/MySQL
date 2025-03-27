use Moon;
show tables;
select * from employee;

create database practice;
use practice;
create table report(emp_id int, name char(25), salary int);
show tables;
select * from employees;
select * from customers;

#show customers with credit limit>20000
select customerNumber,customerName,creditLimit from customers where creditLimit>20000;

#show total number of customers ==> count()
select count(*) from customers;

#show customers count with credit limit>20000
select count(*) from customers where creditLimit>20000;

#show customers count with credit limit<20000
select count(*) from customers where creditLimit<20000;

#show customers who not belongs to USA
select  customerNumber,customerName,country from customers where country!="USA";

#show customers who belongs to USA
select  customerNumber,customerName,country from customers where country="USA";

#logical operators (and,or)
#show customers who belongs to USA and Spain
select  customerNumber,customerName,country from customers where country="USA" and country="Spain"; 
#and is not be used beacause column is same and both the countries cannot be same at the same time
#hence we use or logical operator
select  customerNumber,customerName,country from customers where country="USA" or country="Spain";

#show customers from city="Nantes" and CL>50000
select  customerNumber,customerName,country,city,creditLimit from customers where city="Nantes" and creditLimit>50000;

#this is wrong because or logical operation returns true if any one confition is true, so it doesn't show correct output
select  customerNumber,customerName,country,city,creditLimit from customers where city="Nantes" or creditLimit>50000;

#show customers with CL  between 50K and 20K (between operator)
select  customerNumber,customerName,country,creditLimit from customers where creditLimit between 20000 and 50000; #both values are included

## in and not in operator (membership operator)
#show customers with customer id = 103,112,128,148,146
select  customerNumber,customerName from customers where customerNumber = 10 or customerNumber = 112 or customerNumber = 128 or customerNumber = 148 or customerNumber = 146;
select  customerNumber,customerName from customers where customerNumber in (103,112,128,148,146);






