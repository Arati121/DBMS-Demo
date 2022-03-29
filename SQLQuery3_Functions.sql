select *From Emp
--substring

--2- start inde
--5- length (number of chars that you want to extract)
select SUBSTRING(ename,2,5)as test from emp where eid=100;

--concat() -> join two or more strings
select concat(ename,' ',edepartment) as concattable from emp

--len function-find length of string
select len(ename) as name_charater_length from emp

--upper functon-conver string uppercase
select upper(ename) from emp
--Lower functon-conver string uppercase
select lower(Ename) from emp

select upper(ename),lower(edepartment) from emp

-- LTrim -> to remove space from left side of string
--RTrim -> to remove space from right side of string
--Trim  -> remove space from left & right side
select rtrim(ename)from emp
select trim(edepartment)From emp

--reverse-user write the reverse string
select REVERSE(ename)from emp
select reverse(Edepartment)From emp

--replace-replace the char or string
select replace(ename,'a','A') from emp where eid=100;

--round
select round(esalary,3)from emp

--instr-find the frist occurance of charater
select CHARINDEX('a',ename)from emp where eid=100;
select CHARINDEX('j',ename)from emp where eid=102;

---Function

--addition
create function addition(@a int,@b int)
returns table
as
begin 
declare @c int
set @c=@a+@b
return @c
end

 

 create function Addition(@a int,@b int)
returns int
as 
begin
declare @c int
set @c=@a+@b
return @c
end

select dbo.addition(10,15) as addition

--even odd number
create function even_oddNumber(@num int)
returns varchar(50)
as
begin
declare @result varchar(50)
 If(@num%2=0)
 set @result='even'
 else
  set @result='odd'
return @result
end


select dbo.even_oddNumber(3);
--------------------------------------------------------------------------------------------------------------
--positive negavitive number
create function p_n_number(@num int)
returns varchar(50)
as
begin
declare @result varchar(50)
If(@num>0)
set @result='positive'
else
set @result='negavite'
return @result
end
select dbo.p_n_number(-10)
select dbo.p_n_number(10)

------------------------------------------------------------------------------------------------------
--record set / returns the table / table valued function
create function getempdetails(@eid int)
returns table
as return(select *From emp where @eid=@eid)
select *From getempdetails(101)

------------------------------------------------------------------------
alter function GetNameFromEmp()
returns varchar(50)
as
begin
return (select ename  from emp where eid=100)
end

select dbo.GetNameFromEmp() as Name

select *From emp
-----------------------------------------------------------------------------------------------
UNION & UNION ALL
Combine the result set of two tables

Rules:
1.Each select statement with in union or union all must have equal number of columns
2.Colum must have same data type
3.Column in each select must also in same order

create table managers
(
city varchar(50),
state varchar(50)
);
select *From Managers
insert into managers values('pune','maharashatra');
insert into managers values('mumbai','maharashatra');
insert into managers values('kolhapur','maharashatra');
insert into managers values('surat','gujrat');
insert into managers values('banglore','karanataka');
insert into managers values('coastal','Goa');


create table supplier
(
city varchar(50),
state varchar(50)
);
select *from supplier
insert into supplier values('pune','maharashatra');
insert into supplier  values('mumbai','maharashatra');
insert into supplier  values('kolhapur','maharashatra');
insert into supplier values('surat','gujrat');
insert into supplier values('hydrabad','karanataka');
insert into supplier values('panji','Goa');

--union
select city,state from managers union select city,state from supplier
select city,state from supplier union select city,state from managers

--unionall
select city,state from managers union all select city,state from supplier