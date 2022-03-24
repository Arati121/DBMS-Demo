CREATE TABLE Emp
(eid int primary key IDENTITY(100,1)NOT NULL,
ename varchar(50) not null,
eage int check(eage>=18),
edepartment varchar(50) not null,
esalary decimal check(esalary>0)
);
select *from emp;

--insert Query
insert into Emp(eid,ename,eage,edepartment,esalary) values(100,'arati',25,'IT',50000);
insert into Emp values('raj',32,'Tester',45000);
insert into emp values('pooja',40,'civil',40000);
insert into emp values('rohit',25,'mechanical',24000);

--update
update emp set edepartment='ENTC',esalary=25000 where eid=100

--Delete Query
delete from emp where eid=103;

--DQL 
--SELECT
select eid,ename from emp;

select* from emp where eid=101;

--alter
alter table emp add city varchar(50);

update emp set city='pune' where eid=100;
update emp set city='kolhapur' where eid=101;
update emp set city='nashik' where eid=102;

--DISTINCT-UNIQUE VALUE

select distinct city from emp;

insert into emp values('Poonam',33,'mechanical',24000,'pune');
insert into Emp values('krishana',22,'IT',26000,'nagpur');

Select *from Emp where esalary>20000;
select * from Emp where esalary>=25000;

select * from Emp where esalary between 5000 and 50000;

--start city name with p=p%
select *from emp where city like 'p%';

--end with k letter
select * from emp where city like'%k';

--any cityname s name
select * from emp where city like '%s%';

select distinct city from Emp;

select * from emp where city like 'p___';--start p name city
select * from emp where city like'___e';--end city name e

--define range start with a end with m
select * from emp where city like '[a-m]%'

