#sum(),count(),min(),max(),avg() ==>single answer
use assignment;
select * from customers;
#show sum of credit limit
select sum(creditLimit) from customers;
select sum(creditLimit),customerName from customers;
#you will get error coz without aggegationfunction we can't show second column
select sum(creditLimit),count(customerName) from customers;

#alais
select sum(creditLimit) as sum_of_CL,count(customerName) as count_of_customers from customers;
