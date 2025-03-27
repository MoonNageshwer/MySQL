create database Moon;
use Moon;
create table employee(emp_id int, name char(25), city char(20));
insert into employee values(1,"Moon","Indore"),(2,"Srishti","Raipur"),(3,"Deepak","Nashik"),(5,"Chetana",null);
select * from employee;

#update ==> row(cell)
update employee set city = "Ratnagiri" where emp_id=5;
update employee set emp_id = 2 where emp_id = 200;

# delete ==> to delete row
delete from employee where emp_id = 5;

alter table employee add column salary int;
update employee set salary = 10000 where emp_id=1;
update employee set salary = 40000 where emp_id=200;
update employee set salary = 15000 where emp_id=3;

