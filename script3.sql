use db3;
create table dept(
 dep_id int primary key,
 dep_name varchar(10) unique,
 dep_loc varchar(20) not null
);
insert into dept values (1,'a','mumbai'),(2,'b','bangalore'),(3,'c','mumbai'),(4,'d','mumbai'),(5,'e','bangalore');
select * from dept;
select count(*) as num,dep_loc from dept group by dep_loc;
select dep_loc,count(*) as num from dept group by dep_loc having dep_loc='mumbai';
select * from dept order by dep_id desc;