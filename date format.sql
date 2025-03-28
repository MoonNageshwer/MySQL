use moon;
create table T1(ID int, Name char(25), Birth_Date Date);
#date ==> string format ==> "yyyy-mm-dd"
insert into T1 values (1,"Moon","2003-08-27");
insert into T1 values (2,"Aastha","2003-02-06");
#date format function: year(),month(),day()
use classicmodels;
select * from orders;
desc orders;

#extract year from order date
select year(orderDate) from orders;
#extract month from order date
select month(orderDate) from orders;
#show total no. of customers from year 2005
select count(*) from orders where year(orderDate) = 2005;
select year(orderDate),count(*) from orders where year(orderDate) = 2005;
select year(orderDate),count(*) from orders group by year(orderDate);

#two groups
#group orders with year and month and give total counts from year 2003 and month january
select year(orderDate),month(orderDate) from orders group by year(orderDate), month(orderDate) having year(orderDate) = 2003 and month(orderDate) = 1 ;
select year(orderDate),month(orderDate),count(*) from orders where year(orderDate) = 2003 and month(orderDate) = 1  group by year(orderDate), month(orderDate) ;

