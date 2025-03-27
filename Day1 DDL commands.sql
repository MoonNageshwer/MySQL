use Moon;                            #ctrl+enter to run the command
show tables;
select * from student;

#DDL commands
#create ==> to create database and table
#Alter ==> column wise
#with alter ==> add column ==> to add column in existing table
alter table Student add column course char(20);

show databases;
#with alter ==>rename column ==> to rename the column name
alter table student rename column city to Location;

insert into student values(2,"Gauri","Pune","DS");
insert into student values(3,"Deepak","Mumbai","Python"),(4,"Ashitosh","Nashik","DA");
insert into student values("A5","Rohit","Nagpur","DS");
#desc ==> describe table
desc student;
alter table student modify column id char(20);
#with alter drop column ==> to drop the column
alter table student drop column course;

# truncate table ==> it will remove all the data from the table but table structure will remain as it is and we can insert data again.
truncate table student;
#drop table, drop database
drop table student;
drop database Moon;
show databases;