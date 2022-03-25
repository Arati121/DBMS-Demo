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