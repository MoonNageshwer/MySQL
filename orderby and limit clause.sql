use assignment;
select * from employee;
select * from employee order by salary; #ascending
select * from employee order by salary desc; #descending
#show only top 10 rows from employee
select * from employee limit 10;

#count total rows
select count(*) from employee;

select * from employee order by fname desc; #descending

#show count of null rows in the dataset
select count(*) from employee where lname is null;
select count(*) from employee where lname is not null;


