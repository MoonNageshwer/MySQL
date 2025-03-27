use grant_revoke;
select * from t1;
insert into t1 values(1,"Chetana"),(2,"Moon");
update t1 set name = "Deepak" where id = 1;
delete from t1 where id = 2;