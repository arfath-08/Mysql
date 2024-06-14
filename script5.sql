create database practice;
use practice;
show tables;
create table employee(
	emp_id int primary key,
    emp_code int,
    emp_name varchar(30) not null,
    dep_id int not null,
    phone_no varchar(20) not null
);
show tables;
insert into employee values (1,101,'mark',1001,987654328),
							(2,102,'josh',1002,987654328),
                            (3,103,'john',1003,987654328),
                            (4,104,'Adam',1004,987654328),
                            (5,105,'Alex',1005,987654328);
select count(*) from employee;
call practice.employee_count();
select * from employee where emp_code =102;
call practice.employee_with_code(102);
--
set @maxempcode =0;
call practice.get_max_code(@maxempcode);
select @maxempcode;
--
set @x=2;
call practice.get_dep_code_from_id(@x);
select @x;
--
call practice.insert_employee(6,106,'McCane',1006,987643325);
select * from employee;
-- FUNCTIONS
select add_two_num(2,5);
create table table_function(
id int,
name varchar(100)
);
show tables;
insert into table_function values (100,'Mike'),
								  (101,'sam'),
                                  (102,'adam'),
                                  (103,'carol');
select * from table_function;
call getResultSet(100);