use assignment;
select * from customers;
#1) find names that start with a letter "a" (%): "a%"
select  customerNumber,customerName from customers where customerName like "a%";
select  customerNumber,customerName from customers where customerName like "a"; # shows an error
select  customerNumber,customerName from customers where customerName like "a___";
select * from customers;

#2) find names that ens with a certain letter (%): "%e"
select  customerNumber,customerName from customers where customerName like "%e";

#3) find names that contains "or" in their name 
select  customerNumber,customerName from customers where customerName like "%or%%";

#4)Finds 4-letter names that start with 'A' (e.g., Anna, Aron but not Aaron). : 'A___'(3 underscores)

#5) Finds names where the second letter is 'b' (e.g., Abel, Ebon, Obi).: '_b%'
select  customerNumber,customerName from customers where customerName like "_b%";

#6)Finds salary ending with 5
select * from employee;
select round(salary) from employee where round(salary) like "%5";

#7)Finds all names that do not start with 'A'.:  NOT LIKE 'A%'
select  customerNumber,customerName from customers where customerName not like "A%";





