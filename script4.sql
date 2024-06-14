select student_id,student_age,
  case
		when student_age <0 then 'Invalid age'
        when student_age <18 then 'minor can,t drive'
        else 'Adult can drive'
	end as driving
from student;
update  student set student_age=17 where student_id=4;
insert into student (student_name,student_age) values ('klm',0),('mno',-2);
create table table1(
	tab1_id int,
    a int
);
create table table2(
	tab2_id int,
    a int
);
show tables;
insert into table1 values(100,1), (200,2);
insert into table2 values(900,1), (800,3);
select * from table1 inner join table2 on table1.a = table2.a;
delete  from  table1 where tab1_id=900 and tab1_id=800;
select * from table2;
select * from table1 left join table2 on table1.a = table2.a;
select * from table1 right join table2 on table1.a = table2.a;
select * from table2;
drop table table1;
drop table table2;
select * from table1 cross join table2;
select * from table1 left join table2 on table1.a = table2.a
union
select * from table1 right join table2 on table1.a = table2.a;
select a,tab1_id from table1
union all
select a,tab2_id from table2;
-- transaction
start transaction;
insert into student (student_name, student_age) values ('plo',22),('ert',21);
select * from student;
rollback;
commit;
