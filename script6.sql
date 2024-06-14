-- partitioning;
use practice;
create table range_partitioning(
	bill_no int not null,
    cust_code int not null,
    amount int not null
)
partition by range (amount)
(
partition p0 values less than (100),
partition p1 values less than (500),
partition p2 values less than (1000),
partition p3 values less than (1500)
);
show tables;
select * from range_partitioning;
insert into range_partitioning values (1,101,25),
										(2,102,125),
                                        (3,102,425),
                                        (4,102,925),
                                        (5,102,1125),
                                        (6,102,1425);
select * from range_partitioning where amount=925;
select Partition_Name, Table_Rows from 
		Information_Schema.partitions where Table_name= 'range_partitioning';
-- list partitioning
create table list_partitioning(
	bill_no int not null,
    agent_code int not null,
    amount int not null
)
partition by list(agent_code)
(
partition pA values in (1,2,3,4),
partition pB values in (5,6),
partition pC values in (7,8,9)
);
show tables;
insert into list_partitioning values (1,1,100),
										(2,3,100),
                                        (3,5,100),
                                        (4,6,100),
                                        (5,8,100),
                                        (6,9,100);
select * from list_partitioning;
select Partition_Name, Table_Rows from Information_Schema.partitions where Table_name = 'list_partitioning';
-- hash_partitioning
create table hash_partitioning(
	id int not null,
    dep int not null,
    amount int not null
)
partition by hash(id) partitions 3;
show tables;
insert into hash_partitioning values (1,1,100),
										(2,3,100),
                                        (3,5,100),
                                        (4,6,100),
                                        (5,8,100),
                                        (6,9,100);
select * from hash_partitioning;
select Partition_Name, Table_Rows from Information_Schema.partitions where Table_name = 'hash_partitioning';
-- key partitioning;
create table key_partitioning(
	id int primary key,
    dep int not null,
    amount int not null
)
partition by key() partitions 2;
show tables;
insert into key_partitioning values (1,1,100),
										(2,3,100),
                                        (3,5,100),
                                        (4,6,100),
                                        (5,8,100),
                                        (6,9,100);
select * from key_partitioning;
select Partition_Name, Table_Rows from Information_Schema.partitions where Table_name = 'key_partitioning';
-- sub_partitioning;
create table sub_partition(
	id int not null,
    dept int not null,
    amount int not null
)
partition by range(dept)
subpartition by hash(id)
subpartitions 4
(
partition p0 values less than (4),
partition p1 values less than (10)
);
show tables;
insert into sub_partition values (1,1,100),
										(2,3,100),
                                        (3,5,100),
                                        (4,6,100),
                                        (5,8,100),
                                        (6,9,100);
select * from sub_partition;
select Partition_Name, Table_Rows from Information_Schema.partitions where Table_name = 'sub_partition';
select * from Information_Schema.partitions;                          