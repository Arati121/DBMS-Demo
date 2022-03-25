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

--not define range start with a end with m
select *from emp where city not like'[pm]%'

--!=define range start with a end with m
select *from emp where city like'[!np]%'

--IN operator
select * from emp where city in('pune','nashik');

--not in 
select *from emp where city not in('pune','mumbai');

--order by salary
select *from emp order by esalary;
--order by name
select *From emp order by ename;
--desening order ename
select *from emp order by ename desc;
--decending order esalary
select *from emp order by esalary desc;



insert into emp values('prajakta',23,'IT',25000, NULL);
insert into emp values('sagar',26,'Civil',56000,null);
--null

select *from emp where city is null;

--is not null
select *From emp where city is not null;


--Agreecate function

select count(*) from emp;

--person table
create table Person
(Id int primary key not null identity(1,1),
Name varchar(50) not null,
Age int not null,
City varchar(50)
);

select *From Person;
insert into person values('rohit',25,'pune');
insert into person values('pooja',40,'pune');
insert into person values('arati',23,'mumabi');
insert into person values('sagar',22,'nashik');
insert into person values('Ganesh',21,'mumabi');
insert into person values('pratik',26,'nashik');

alter table person add salary decimal;
update person set salary=25000 where id=1;
update person set salary=35000 where id=2;
update person set salary=15000 where id=3;
update person set salary=25000 where id=4;
update person set salary=20000 where id=5;
update person set salary=22000 where id=6;

--count
select  count(*)  from person;
select count(id) from person;

--Aggreicate function
select sum(Salary) as sumsalary from person;
--minmum salary
select min(Salary)as minsalary from person;
--maximum salary
select max(salary)as maxsalary from person;
--average 

--group by clause

--city wise group
select city from person group by city;

--total group by city
select city,count(*) as total from person group by city;

select city,count(id) as totalcount from person group by city;


select city,age from person group by city,age;

--Having Clause
select city,count(salary) as totalsal from person group by city having max(salary)>20000;
select city,count(id) as salary from person group by city having count(id)>=2;

select city,count(id) as sakary from person group by city having city in('pune','nashik');

--subqueries
alter table person add experience int;
update person set experience=5 where id=1;
update person set experience=2 where id=2;
update person set experience=2 where id=3;
update person set experience=6 where id=4;
update person set experience=4 where id=5;
update person set experience=5 where id=6;
select * from person;

--find most experience person name
select name from person where experience=(select max(experience)from person);

--max salary from person
select name from person where salary=(select max(Salary)from person);

--to find second highest salary person name
select name,salary from person where salary=(select max(salary) from person 
 where salary<> (select max(salary)from person));

 --second hightest experience
 select id,name,age,experience from person where experience=(select max(experience)from person where experience<>
 (select max(experience) from person));