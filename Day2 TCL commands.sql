use moon;
select * from employee;

## 1.Rollback(undo)
start transaction;
insert into employee values(4,"Gauri","Mumbai",35000);
insert into employee values(5,"Rohit","Nagpur",25000);
update employee set emp_id = 20 where emp_id = 1;
delete from employee where emp_id;
rollback;

## commit ==> permanent changes
start transaction;
commit;
insert into employee values(8,"shruti","Mumbai",35000);
insert into employee values(9,"Rohan","Nagpur",25000);
rollback;


start transaction;
commit;
insert into employee values(4,"Gauri","Mumbai",35000);
insert into employee values(5,"Rohit","Nagpur",25000);
rollback;

## without start transaction
insert into employee values(10,"Pakhi","Jabalpur",30000);
Rollback;

## Savepoint ==> rollback to particular point
start transaction;
savepoint s1;
insert into employee values(14,"Mayuri","Mumbai",35000);
savepoint s2;
insert into employee values(15,"Ram","Delhi",25000);
savepoint s3;
#emp_id = 17, all others are to be null
insert into employee(emp_id) values (17);
savepoint s4;
update employee set emp_id=500 where emp_id = 5;
savepoint s5;
delete from employee where emp_id = 9;
rollback to s4;


start transaction;
savepoint m1;
insert into employee values(01,"Mayuri","Mumbai",35000);
savepoint m2;
insert into employee values(05,"Ram","Delhi",25000);
savepoint m3;
#emp_id = 17, all others are to be null
insert into employee(emp_id) values (23);
savepoint m4;
update employee set emp_id=34 where emp_id = 14;
savepoint m5;
delete from employee where emp_id = 8;
rollback to m4;



