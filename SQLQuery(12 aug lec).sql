drop table employ
drop table deptment
create table employ
(
Eid int,
  ename varchar(25),
  salary numeric(12,3),
  Dept_name varchar(20),
  Gender varchar(20),
  Elocation varchar(25),
  designation varchar(25),
  age int
  )
insert into employ values(1,'sachin',32000,'sales','male','pune','junior sales manager',23),(2,'kavya',67000,'sales','female','mumbai','senior sales manager',24),
  (3,'Gita',22000,'marketing','female','pune','junior sales manager',22),
  (4,'ragav',44000,'finance','male','nagpur','finanace co-ordinator',24),
  (5,'samiksha',50000,'finance','female','pune','finance manager',23),
  (6,'Gauri',35000,'HR','female','ratnagiri','HR manager',29),
  (7,'Gaurav',55000,'Contract','female','nashik','Contract manager',32),
  (8,'rajesh',65000,'IT','female','ratnagiri','IT manger',21),
  (9,'Amulya',75000,'accounting ','female','banglore','senior Accountant',29)
  create table deptment
  (
  did int primary key,
  dname varchar(25)
  )
  insert into deptment values (101,'HR'),(102,'sales'),(103,'developer'),(104,'testing'),(105,'marketing')
  alter table employ add did int
  drop table deptment
  alter table employ add constraint pk_fk_emp_dept_deptname foreign key ( did) references deptment(did)
  update employ set did=101 where Eid in(1,6)
  update employ set did=102 where Eid in (2,4)
  update employ set did=103 where Eid in(3,8)
  update employ set did=104 where eid in(7,5)
  update employ set did=105 where eid in(9)
  select * from employ
  select * from deptment
  select e.*,d.dname
  from employ e
  inner join deptment d on d.did=e.did
  select e.*,d.*
  from employ e
  left join deptment d on d.did=e.did

  