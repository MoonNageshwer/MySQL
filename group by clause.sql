#group by clause with aggregation function
#to make groups of category
use classicmodels;
select * from customers;

#show the total number of customers in a dataset
select count(*) from customers;

#show total no. of customers from each city
select city, count(*) from customers group by city;

#show no. of customers from city NYC
#where clause : select,delete,update ==> use before group by clause
#having clause: use after group by clause
select city,count(*) from customers where city = "NYC" group by city;
select city,count(*) from customers group by city having city = "NYC";

#group the data based on country nd give total creditLimit of france
select country, sum(creditLimit) from customers group by country having country ="France"; 

#group the data based on country nd give total creditLimit of each country
select country, sum(creditLimit) as total_creditlimit from customers group by country;

#show customer number which has maximum credit limit
select customerNumber, max(creditLimit) from customers;
#we can't show column without aggregation function, so..
select customerNumber, max(creditLimit) from customers group by customerNumber;
select customerNumber, max(creditLimit) from customers group by customerNumber order by max(creditLimit) desc ;
select customerNumber, max(creditLimit) from customers group by customerNumber order by max(creditLimit) desc limit 1 ;

#Find the total number of payments made each customer
select * from payments;
select customerNumber, count(*) from payments group by customerNumber;

#Find the total amount paid by each customer 
select customerNumber,sum(amount) from payments group by customerNumber;


