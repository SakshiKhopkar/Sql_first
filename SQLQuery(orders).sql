create database joins
create table Users
(
userId int primary key,
Username varchar(25),
usermail varchar(25)
)
create table Product
( pId int primary key,
  pName varchar(20),
  Price int
  )
  create table Orders
  ( OId int,
    PId int,
	userId int,
	quantity int,
	constraint fk_pId foreign key (PId) references product(pId),
	constraint fk_userId foreign key (userId) references Users(userId) 
  )
  drop table orders
  insert into users values(101,'sakshi','sakshi@1233gmail.com'),(102,'saurabh','saurabh@4325gmail.com'),
  (103,'sachin','sachin@345gmail.com'),(104,'samiksha','samiksha@564gmail.com')
  insert into product values(21,'pen',500),(22,'lock',230),(23,'book',700),(24,'watch',1000),(25,'lamp',800)
  insert into orders values (1,22,102,2),(2,23,102,5),(3,24,104,6),(4,null,null,7),(5,null,null,9)
  insert into orders values(6,null,null,3)
  insert into users values (105,'suraj','suraj@564gmail.com')
  drop table orders
  select * from product
  select * from Users
  select * from Orders
  select o.*,p.*,u.*
  from orders o
  inner join product p on p.PId=o.PId
  inner join users u on u.userId=o.userId
  --------------------------------------------------------------------------------
  select o.*,p.*
  from orders o
  left join product p on p.PId=o.PId
  left join users u on u.userId=o.userId