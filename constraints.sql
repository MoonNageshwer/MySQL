#constraints ==> rules or limitations
create database constraints;
use constraints;
create table emp_data(id int, name char(20));
insert into emp_data values (1,"Moon");
select * from emp_data;

# form name* ==> not null , adhar no. ==> unique
#1) not null 
#2) unique
#3) primary key (not null and unique) : adhar no. , ID and mobile no. 
#4) check : ex -greater than 18
#5) default
#6) foreign key (more than 1 table)
#EX: employee & salary 
#new table : apply constraints during table creation
create table t1(adharcardno bigint not null, name char(20),id int unique);
insert into t1 value (12345678901,"Moon",1);
# insert into t1 value (547568566,"Moon",1); shows an error bcoz 1 must be unique but here id is copied
# insert into t1 value (null,"Moon",2); shows an error bcoz adharcardno must not be null but here it is null
select * from t1;
insert into t1 value (34645767567,null,5);
desc t1; 
alter table t1 modify column adharcardno bigint primary key; 
insert into t1 value(3534657,null,3);
alter table t1 add column age int check(age>18);
insert into t1 value(6534657,"Deepak",4,20);
insert into t1 value(85904657,"Mayuri",6,2);
