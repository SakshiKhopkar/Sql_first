create database Employees
create table emp
(
 employeeId int,
 firstname varchar(20),
 lastName varchar(25),
 email varchar(25),
 phone_no varchar(20),
 hiredate date,
 job_id varchar(10),
 salary int,
 commission_ID int,
 managerId int,
 departmentId int
 )
 insert into emp values (1,'sonali','khude','sonali@123gmail.com','9976542134','2001-12-31','vm401',26000,501,401,10),
 (2,'suresh','patil','suresh@453gmail.com','9970647206','2001-07-28','vm402',29000,502,402,12),
 (3,'sarika','more','sarika@943gmail.com','9980456308','2001-06-24','vm403',34000,503,403,13),
 (4,'veda','khan','veda@253gmail.com','8870657843','2002-12-23','vm404',28000,504,404,14),
 (5,'mahesh','kadam','mahesh@763gmail.com','9978952341','2002-10-13','vm405',22000,505,405,15),
 (6,'vidya','jadhav','vidya@873gmail.com','9956783421','2003-11-20','vm406',20000,506,406,16)
 --1.Write a query to display the names (first_name, last_name) using alias name “First Name", "Last Name"
 select firstname as 'first_name' from emp  select lastname as 'last_name' from emp
 --2.Write a query to get unique department ID from employee table.
 select distinct departmentId from emp 
 --3.Write a query to get the total salaries payable to employees.
 select sum(salary) as 'salary sum' from emp
 --4.Write a query to get all employee details from the employee table order by first name, descending.
 select * from emp order by firstname desc
 --Write a query to get the names (first_name, last_name), salary, PF of all the employees (PF is calculated as 12% of salary
