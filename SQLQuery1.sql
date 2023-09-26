create table Dept
(
 Did int,
 Dname varchar(20),
 constraint pk_Dept Primary key(Did)
 )
 drop table Employee
 create table Employee
 (
  id int,
  Did int,
  name varchar(20),
  constraint fk_emp_dept foreign key (did) references Dept(did) 
  )
  exec sp_help Employee
  create table Bank
  (
  accNo int,
  balance int,
  AcName varchar(20)not null,
  branch varchar(20)Default'kothrud',
  email varchar(20) unique,
  Constraint pk_balance primary key(balance),
  Constraint chk_balnce check (balance>0),
  )
  drop table Bank
  alter table Employee add age int
  alter table Employee add Constraint chk_age check(age>18)
  exec sp_help Employee
  exec sp_help Bank
  alter table Employee drop Constraint chk_age
  alter table Bank add constraint de_branch default 'kothrud' for baranch
  alter table bank drop constraint de_branch
  create unique index in_emp on Employee(id)
  alter table Employee add email varchar(20)
  create index inemp on Employee(name,email)
  drop table Employee
  create table employee
  (
   id int primary key,
   name varchar(20)not null,
   age int,
   email varchar(20) unique,
   salary numeric(12,2)
   )
   select * from Employee
   insert into Employee values(1,'suraj',23,'suraj@gmail.com',55000.99)
   insert into Employee values(2,'jasika',21,'jasika@gmail.com',25000.45)
   insert into Employee values(3,'radhika',22,'radhika34@gmail.com',56700.54)
   insert into Employee values(4,'rashmika',32,'rashmika54@gmail.com',765430.99)
   insert into Employee values(5,'sakshi',21,'sakshi432@gmail.com',54879.99)
   insert into Employee values(6,'sagar',31,'sagar@gmail.com',564321.99)
   insert into Employee values(7,'sarika',41,'sarika@gmail.com',564321.99)
   insert into Employee values(8,'samiksha',27,'samiksha@gmail.com',564321.99)
   insert into Employee values(9,'veda',29,'veda@gmail.com',564321.99)
   insert into Employee values(10,'joya',30,'joya@gmail.com',564321.99)
   insert into Employee values(11,'megha',25,'megha@gmail.com',564321.99)
   select name email from employee
   select name as'employee name'from employee
   select name as 'employee name',email as'employee email'from employee emp
   select emp.name,emp.email,emp.salary from employee emp
   select emp.* from employee emp
   select * from employee where id=1
   select * from employee where id<=5
   select * from employee where age<=25
   select * from employee where age<=25 and age>=20
   select * from employee where age<>25
   select * from employee where age>20 and age<30 and salary>10000
   select * from employee where age>45 or salary>20000
   select * from employee where salary between 20000 and 30000
   select * from employee where id in(1,4,6,2,3)
   select * from employee where id not in(1,2)
   create table Product
   (
    id int primary key,
	PName varchar(25),
	Price numeric(12,2),
	Company varchar(25)
	)
	Insert into Product values(1,'fan',290.9,'syska')
	Insert into Product values(2,'tv',20000.00,'sony')
	Insert into Product values(3,'frez',30000.00,'samsung')
	Insert into Product values(4,'washing machine',35000.00,'phanasonic')
	Insert into Product values(5,'Ac',50000.00,'onida')
	Insert into Product values(6,'penbox',500.00,'Lg')
	Insert into Product values(7,'car',150000.00,'tata')
	Insert into Product values(8,'bag',500.00,'dell')
	Insert into Product values(9,'laptop',70000,'hp')
	Insert into Product values(10,'mobile',45000,'vivo')
	 select * from Product
	 select * from Product where price<2000
	 select * from product where company='lg'
	 select * from Product where price between 20000 and 50000
	 select * from Product where company ='dell' or Company='hp'
	 select * from Product where company in('dell','hp')
	 select distinct company from Product
