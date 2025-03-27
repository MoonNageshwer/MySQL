select user();
create database Grant_revoke;
use Grant_revoke;
create table t1(id int, name char(20));
#shows all access from root user
show grants for 'root'@'localhost';
show grants for 'new_user';
#to give access
grant select,insert,delete on t1 to 'new_user';
