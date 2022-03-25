
--create the databas
create database Test;

 --create a table
 create table person1
 ( PersonID int not null primary key,
 name varchar(50) not null,
 age int,
 city varchar(50)
 );

 --select 
 select *From person1;

 --alter -add state column
 alter table person1 add state varchar(50);

 --drop-drop the state column
alter table person1 drop column state;

--drop database
drop database test;

--truncate
truncate table person;

--constriant

alter table Persons1 add unique(PersonID)

alter table Persons
add constraint unique_Persons1 unique(PersonID,MobileNO);

alter table Orders
add constraint FK_Orders foreign key(PersonID) references Persons(PersonID);


--check conststraint
create table Persons(
PersonID int,
Name varchar(50) not null,
Age int,
City varchar(20),
constraint PK_Persons primary key(PersonID),
constraint chk_Age check(Age>=18),
);

alter table persons add  salary int;
alter table person add constraint chk_salay check(salary>=20000);

--or
alter table persons add constraint chk_age check(age>=18)

--drop
alter table person drop constraint chk_age;

create table orders
( orderid int,
orderno int,
personId int,
constraint pk_orders primary key(orderid),
constraint Fk_orders  foreign key(PersonID) references persons(personID)
);
select * from persons;
select *From orders;


