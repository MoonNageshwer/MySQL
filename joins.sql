#inner join
#left join
#right join
#full join
#cross join
#self join
create database joins;
use classicmodels;
create table students(StdID int, name CHAR(20));
create table department(StdID int, deptname char(20));
insert into students value(1,"chetana"),(2, "deepak"),(3,"gauri"),(4,"moon");
insert into department value(1,"AI"),(2,"python"),(3,"DS"),(4,"DA"),(5,"AI"),(6,"IT"),(7,"sales");
insert into students value(10,"mayuri");
select * from students;
select * from department;

#show departments of gauri,moon,mayuri
#inner join
select students.StdID, name, deptname from students inner join department on students.StdID=department.StdID;
select department.StdID, name, deptname from students inner join department on students.StdID=department.StdID;
#left joins
select students.StdID, name, deptname from students left join department on students.StdID=department.StdID;
#right joins
select department.StdID, name, deptname from students right join department on students.StdID=department.StdID;
select students.StdID, name, deptname from students right join department on students.StdID=department.StdID;
#full joins
select * from students full join department;
select * from department full join students;
#cross join
#cross join and full join works same but if we add common column in cross join.
select * from department cross join students;
#it will work as an inner join
select * from department cross join students on students.StdID=department.StdID;

#using alais
select s.StdID, name, deptname from students s right join department d on s.StdID=d.StdID;

#Show the 10 most recent payments with customer details (name & phone no.).
use classicmodels;
select * from payments;
select * from customers;
select c.customerNumber,customerName,phone from payments p inner join customers c 
on c.customerNumber=p.customerNumber order by paymentDate desc limit 10;

###################################
-- we want to show book titles along with their authors (i.e., the author’s first 
-- name and last name). The book titles are stored in the books table, and the author names 
-- are stored in the authors table.
-- books and authors table
use joins;
select * from books;
select * from authors;
select b.title, a.first_name, a.last_name from books b inner join authors a on a.id=b.author_id;
select b.title, a.first_name, a.last_name from books b left join authors a on a.id=b.author_id;
select b.title, a.first_name, a.last_name from books b right join authors a on a.id=b.author_id;

#########
-- books and editosr table
select * from books;
select * from editors;
select b.editor_id, b.title, e.first_name, e.last_name from books b inner join editors e on b.editor_id = e.id;
select e.id, b.title, e.first_name, e.last_name from books b inner join editors e on b.editor_id = e.id;
#left join
select b.editor_id, b.title, e.first_name, e.last_name from books b left join editors e on b.editor_id = e.id;
select e.id, b.title, e.first_name, e.last_name from books b left join editors e on b.editor_id = e.id;
#right join
select b.editor_id, b.title, e.first_name, e.last_name from books b right join editors e on b.editor_id = e.id;
select e.id, b.title, e.first_name, e.last_name from books b right join editors e on b.editor_id = e.id;
#full join
select b.editor_id, b.title, e.first_name, e.last_name from books b left join editors e on b.editor_id = e.id
union
select b.editor_id, b.title, e.first_name, e.last_name from books b right join editors e on b.editor_id = e.id;
#self join

