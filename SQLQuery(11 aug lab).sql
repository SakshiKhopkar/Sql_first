create database employee
create table emp
( Eid int,
  ename varchar(25),
  salary numeric(12,3),
  Dept_name varchar(20),
  Gender varchar(20),
  Elocation varchar(25),
  designation varchar(25),
  age int
  )
  insert into emp values(1,'sachin',32000,'sales','male','pune','junior sales manager',23),(2,'kavya',67000,'sales','female','mumbai','senior sales manager',24),
  (3,'Gita',22000,'marketing','female','pune','junior sales manager',22),
  (4,'ragav',44000,'finance','male','nagpur','finanace co-ordinator',24),
  (5,'samiksha',50000,'finance','female','pune','finance manager',23),
  (6,'Gauri',35000,'HR','female','ratnagiri','HR manager',29),
  (7,'Gaurav',55000,'Contract','female','nashik','Contract manager',32),
  (8,'rajesh',65000,'IT','female','ratnagiri','IT manger',21),
  (9,'Amulya',75000,'accounting ','female','banglore','senior Accountant',29)
  update emp  set designation='sales engineer' where Eid=3
  select * from emp
  --write query to find employee whose salary is more than 25000 and less than 55000
  select * from emp where salary<55000 and salary>25000
  --write query find out the all employee whoes name is start with n
  select * from emp where ename like's%'
  --find out the number of employee from each deparment
  select count(Dept_name)as'sales employee count' from emp where dept_name in('sales','marketing')
  select dept_name,count(*) from emp group by dept_name
  --find out the maximum salary from the employee
  select top 1 * from emp order by salary desc
  --find out the genderwise employee count
  select count(gender) as 'gender count' from emp where gender='male'
  select count(gender) as 'gender count' from emp where gender='female'
  select Gender,count(*) from emp group by Gender
  --write query to fin out the employee who is working mumbai location and salary is more than 40000
  select * from emp where Elocation='mumbai' and salary>=40000
  --write query to calculate the pf amount for each employee(12%)
  select salary ,(salary +(salary*0.12)) as pf from emp
  --write query to update the designation of employee as a manager whose salary is more than 50000
  update emp set designation='manager' where salary>50000
  select * from emp where salary>50000
  insert into emp values(10,'sujay',66000,'sales','male','pune','manager',55)
  --write query to remove the employee whose age is more than 50 and salary is more than 50000
  delete from emp where age>50 and salary>50000
  --write query to find out the record where employee name contains 'e'
  select * from emp where ename like'%e%'

