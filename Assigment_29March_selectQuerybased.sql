create table Employeee
( Id int primary key identity(100,1),
frist_name varchar(50),
last_name varchar(50),
age int,
deptid int FOREIGN KEY REFERENCES Department1(deptid),
salary decimal,
designation varchar(50),
city varchar(50)
);

select *From Employeee

insert into Employeee values('rohit','sharma',34,2,40000,'developer','pune');
insert into Employeee values('arati','bhosale',26,2,3500,'developer','pune');
insert into Employeee values('sagar','salunke',29,1,50000,'testing','hydrabad')
insert into Employeee values('pratiksha','patil',24,3,44000,'softwer eng','mumbai')
insert into Employeee values('rani','jagam',20,1,36000,'developer','kolhapur')
insert into Employeee values('sujit','shah',32,4,37000,'manager','nashik')
insert into Employeee values('pawan','patil',44,2,40000,'CEO','nagpur')
insert into Employeee values('pooja','name',35,1,45000,'HEAD','mubai')
insert into Employeee values('shree','tate',32,3,50000,'developer','chennai')
insert into Employeee values('shubham','koli',30,2,50000,'developer','benglor')
insert into Employeee values('prasad','sutar',28,4,35000,'testing','mysur')
insert into Employeee values('sonali','desai',36,3,30000,'programmer','pune')


create table Department1
(
deptid int not null primary key,
dname varchar(50),

);

select *From Department1
insert into Department1 values(1,'IT')
insert into Department1 values(2,'COMPUTER')
insert into Department1 values(3,'ENTC')
insert into Department1 values(4,'MCA')

select *From Employeee
select *From Department1
----------------------------------------------------------------------------------------------------------------------------------

--Write a query to display first_name and last_name using alias ‘First Name’ & ‘Last Name’ from employee tale
select frist_name as 'Frist Name',last_name as 'Last Name' from Employeee

---------------------------------------------------------------------------------------------------------------------------------
--Write a query to get unique department ID from employee table
select distinct deptid from Employeee
---------------------------------------------------------------------------------------------------------------------------------

--Write a query to get all employee details from employee table display in descending order
select *From Employeee order by Id desc

--------------------------------------------------------------------------------------------------------------------------------
--Write a query to display employee details with salary, calculate the PF as 12 % of basic salary & display as separate column

select Id,frist_name,last_name,age,deptid,designation,city,salary,salary*.12 as pf  from Employeee


---total salary
select Id,frist_name,last_name,age,deptid,designation,city,salary,salary*.12 as pf,salary+salary*.12 as total_salary from Employeee
-------------------------------------------------------------------------------------------------------------------------------------------
--Write a query to get total salaries payable to all employees from employee table
select sum(salary) as total_salary from Employeee
-------------------------------------------------------------------------------------------------------------------------------------------
--Write a query to get max and min salary of employee
select max(Salary) from Employeee
select min(salary)from Employeee
---------------------------------------------------------------------------------------------------------------------------------------
--Write a query to get number of employees are working in company
select count(Id)from Employeee
---------------------------------------------------------------------------------------------------------------------
--Write a query to get the number of unique designation in the company
select distinct designation from Employeee
---------------------------------------------------------------------------------------------------------------
--Write a query to display emp_name as ‘Name’ in upper case
select  upper(frist_name)as Frist_Name,upper(last_name )as Last_Name from Employeee
-----------------------------------------------------------------------------------------------------------
--Write a query to get first 10 records from the employee table

select TOP 10 *from Employeee












