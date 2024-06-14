show databases;
create database db3;
use db3;
show tables;
create table student (
student_id int primary key auto_increment,
student_name varchar(100) not null,
student_age int not null
);
drop table student;
use db3;
show tables;
show tables;
create table student (
student_id int primary key auto_increment,
student_name varchar(100) not null,
student_age int not null
);
insert into student (student_name, student_age) values ('abc',18), ('bcd',19), ('def',20);
select * from student;
insert into student values (4,'stdr', 18);
select * from student;
insert into student values (7,'stdr', 18);
select * from student;
update student set student_name='xyz',student_age=22 where student_id=2;
select * from student;
delete from student where student_id =7;
select * from student;
insert into student values (7,'stdr', 18);
select * from student;
insert into student values (8,'stdr', NULL);
delete from student where student_id =7;
select * from student;
show tables;