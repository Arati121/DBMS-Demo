--view
--create the view
create view DisplayDetails
as
select c.name,s.salesprice
from collectors c
inner join sales s on s.collectorid=c.collectorid
inner join paintings p on p.paintingid=s.paintingid
select *From DisplayDetails

--alter view

alter view getempdata
as
select *from Emp where esalary>=30000

select *From getempdata
--store procedure
select *from Emp

------------------------------------------------------------------------------------------------
create procedure sp_emp_insert
(
@eid int ,
@ename varchar(50),
@eage int,
@edepartment varchar(50),
@esalary decimal,
@city varchar(50),
@manageid int
)
as begin
insert into emp values(@eid,@ename,@eage,@edepartment,@esalary,@city,@manageid)
return
end

exec sp_emp_insert
@eid=109,
@ename='raju',
@eage=34,
@edepartment='IT',
@esalary=40000,
@city='pune',
@manageid=2
select *From Emp

--getting data id=2

create procedure sp_emp_data
(
@id int
)
as begin
select *From emp where eid=@id
return end

exec sp_emp_data
@id=2

--alter
alter procedure sp_emp_insertSP
(
@ename varchar(100),
@edepartment varchar(20),
@esalary decimal,
@city varchar(50),
@manageid int
)
as 
begin
insert into emp values(@ename,@edepartment ,@esalary ,@city,@manageid)
return
end

--Trigger
create table employeeaudit
(
id int identity(1,1),
name varchar(50)
);

select *From employeeaudit
select *FRom emp
create trigger tr_EmpTemp_Insert
on emp
for insert
as 
begin
declare @id int
--declare @userid int
select @id=eid from inserted 
insert into employeeaudit values('New id inserted ='+cast(@id as int)+
                             'added at ='+cast(getdate() as varchar(20))
							 )
end

Select *From  tr_EmpTemp_Insert
select *FRom employeeaudit

insert into emp values('rohit',25,'IT',25000,'pune',2)

create trigger tr_EmpTempDelete
on emp
for delete
as 
begin
declare @id int
select @id=eid from deleted
insert into employeeaudit values('id delete ='+cast(@id as varchar(50))+
                             ' at ='+cast(getdate() as varchar(20))
							 )
end
