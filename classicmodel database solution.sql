-- 1)List the customers in the United States with a credit limit higher than \$1000.
use classicmodels;
select * from customers;
select * from employees;
select * from offices;
select customerName from customers where country = "USA" and creditLimit > 1000;
-- 2)List the employee codes for sales representatives of customers in Spain, France and Italy.
select salesRepEmployeeNumber,country from customers where country = "France" or country = "Spain" or country = "Italy";
#OR
select salesRepEmployeeNumber,country from customers where country in ("France" ,"Spain","Italy");
#1370,1337,1702,1401
#2A) Make another query to list the names and email addresses of those employees.
select * from employees;
select email,firstName from employees where employeeNumber in (1370,1337,1702,1401);

-- 3)Change the job title "Sales Rep" to "Sales Representative"
update employees set jobTitle = "Sales Representative" where jobTitle = "Sales Rep";

-- 4)Delete the entries for Sales Representatives working in London.
select * from customers;
select city,salesRepEmployeeNumber from customers where city = "London";
select * from employees;
delete from employees where employeeNumber = 1501; #shows an error
delete from customers where salesRepEmployeeNumber = 1501;

-- 5)Show a list of employees who are not sales representatives
select * from employees where jobTitle != "Sales Reprrsentative ";

-- 6)Show a list of customers with "Toys" in their name
select  * from customers where customerName like "%Toys%";
