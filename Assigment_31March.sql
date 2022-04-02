create table Customer
( Id int primary key not null identity(1,1),
Name varchar(50)not null,
City varchar(50) ,
Country varchar(50),
Passcode decimal,
product varchar(50),
Price decimal);
select *From Customer
insert into Customer values('prakash','landon','Enland',145263,'sugar',70)
insert into Customer values('arati','Agra','India',125463,'paper',45)
insert into Customer values('sunil','abuja','africa',145263,'book',55)
insert into Customer values('sagar','oslo','norway',145265,'sugar',70)
insert into Customer values('manish','landon','Enland',415101,'sault',35)
insert into Customer values('Sunita','havana','America',416101,'fruits',86)
insert into Customer values('Radha','valletta','Europe',400105,'flower',63)
insert into Customer values('Sonali','trondheim','norway',415101,'cloth',25)
insert into Customer values('Sanjana','ahmehdabad','India',456321,'pen',10)
insert into Customer values('Ganesh','berlin','Germany',121110,'chipes',65)
insert into Customer values('ragav','anyang','china',415623,'soap',50)
insert into Customer values('abhishek','landon','Enland',256348,'glass',75)
insert into Customer values('Pooja','Austin','Texas',938548,'book',85)
insert into Customer values('shree','berlin','Germany',400562,'pencile',20)
-----------------------------------------------------------------------------------------------------------------------------
--Write a statement that will select the City column from the Customers table
select City from Customer
---------------------------------------------------------------------------------------------------------------------------
--Select all the different values from the Country column in the Customers table.
select distinct(Country)from Customer
----------------------------------------------------------------------------------------------------------------------------
--Select all records where the City column has the value "London
select *from Customer where City in('landon')
-----------------------------------------------------------------------------------------------------------------------
--Use the NOT keyword to select all records where City is NOT "Berlin".
select *From Customer where  city not in('berlin')
-----------------------------------------------------------------------------------------------------------------------
--Select all records where the CustomerID column has the value 23.
select TOP 23* from Customer;
---------------------------------------------------------------------------------------------------------------------
--Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 121110.
select *From customer where city like 'berlin'and Passcode like'121110'
----------------------------------------------------------------------------------------------------------------------------
--Select all records where the City column has the value 'Berlin' or 'London'.
select *From Customer where city in('berlin','landon')
--------------------------------------------------------------------------------------------------------------
--Select all records from the Customers table, sort the result alphabetically by the column City.
select *From Customer order by City
---------------------------------------------------------------------------------------------------------------
--Select all records from the Customers table, sort the result reversed alphabetically by the column City.
select  *from Customer order by city desc
----------------------------------------------------------------------------------------------------------
--Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City
select *from Customer order by Country,city;
-----------------------------------------------------------------------------------------------------------------------------------
--Select all records from the Customers where the PostalCode column is empty.
select *from Customer where Passcode is null
---------------------------------------------------------------------------------------------------------------------------
--Select all records from the Customers where the PostalCode column is NOT empty.
select *From Customer where Passcode is not null;
---------------------------------------------------------------------------------------------------------------------------
--Set the value of the City columns to 'Oslo', but only the ones where the Country column has the value "Norway".
update Customer set city='Oslo'where Country='Norway';
-----------------------------------------------------------------------------------------------------------------------
--Delete all the records from the Customers table where the Country value is 'Norway'.
delete From Customer WHERE Country='Norway';
select *from Customer
------------------------------------------------------------------------------------------------------------------------
--Use the MIN function to select the record with the smallest value of the Price column.
select min(price)as smallestvalue from Customer
--------------------------------------------------------------------------------------------------------------------------
--Use an SQL function to select the record with the highest value of the Price column.
select max(price)as higestvalue from Customer;
---------------------------------------------------------------------------------------------------------------------------
--Use the correct function to return the number of records that have the Price value set to 20
select count(*) from Customer where price=20;
-------------------------------------------------------------------------------------------------------------------------
--Use an SQL function to calculate the average price of all products.
select avg(price)as avgerage from Customer;
------------------------------------------------------------------------------------------------------------------
--Use an SQL function to calculate the sum of all the Price column values in the Products table
select sum(price) as sum  from Customer
------------------------------------------------------------------------------------------------------------------
--Select all records where the value of the City column starts with the letter "a".
select *from Customer where city like 'a%'
-------------------------------------------------------------------------------------------------------------
--Select all records where the value of the City column ends with the letter "a".
select *From Customer where city like '%a'
------------------------------------------------------------------------------------------------------
--Select all records where the value of the City column contains the letter "a".
select *from Customer where city like '%a%';
-------------------------------------------------------------------------------------------------------
--Select all records where the value of the City column starts with letter "a" and ends with the letter "b".
select *From Customer where city like '[a-b]%'
----------------------------------------------------------------------------------------------------------------
--Select all records where the value of the City column does NOT start with the letter "a".
select *from Customer where city not like'a%'
----------------------------------------------------------------------------------------------------------------
--Select all records where the second letter of the City is an "a".
select *From Customer where city like'_a%'
------------------------------------------------------------------------------------------------------------------
--Select all records where the first letter of the City is an "a" or a "c" or an "s".
select *From Customer where city like '[acs]%';
-------------------------------------------------------------------------------------------------------
--Select all records where the first letter of the City starts with anything from an "a" to an "f".
select *From Customer where City like '[a-f]%'
-----------------------------------------------------------------------------------------------------------------
--Select all records where the first letter of the City is NOT an "a" or a "c" or an "f".
-----------------------------------------------------------------------------------------------------------------
--Use the IN operator to select all the records where the Country is either "Norway" or "Francselect
select *from Customer where Country in('Norway','Franc');
--------------------------------------------------------------------------------------------------------------
--Use the IN operator to select all the records where Country is NOT "Norway" and NOT "France".
select *From Customer where Country not in('Norway','Franc');
--------------------------------------------------------------------------------------------------------------
--Use the BETWEEN operator to select all the records where the value of the Price column is between 10 and 20
select *From Customer where price between 10 and 20;
-----------------------------------------------------------------------------------------------------------
--Use the BETWEEN operator to select all the records where the value of the Price column is NOT between 10 and 20.
select *from Customer where price not between 10 and 20;
------------------------------------------------------------------------------------------------------------------------
--Use the BETWEEN operator to select all the records where the value of the ProductName column is alphabetically between 'Geitost' and 'Pavlova'.
select *From Customer where product between 'Geitost' and 'Pavlova'
---------------------------------------------------------------------------------------------------------------------------
--When displaying the Customers table, make an ALIAS of the PostalCode column, the column should be called Pno instead.
select Id,Name,city,country,passcode as Pno,product,Price from Customer
-----------------------------------------------------------------------------------------------------------------------
--When displaying the Customers table, refer to the table as Consumers instead of Customers.
select *From Customer as consumers
-----------------------------------------------------------------------------------------------------------------------
--List the number of customers in each country.
select count(id),country from Customer group by Country
------------------------------------------------------------------------------------------------------------
--List the number of customers in each country, ordered by the country with the most customers first.
select count(id),country from Customer group by Country order by count(id) desc;
---------------------------------------------------------------------------------------------------------------------
--Write the correct SQL statement to create a new database called testDB.
create database testDb;
----------------------------------------------------------------------------------------------------------------------
--Write the correct SQL statement to delete a database named testDB
drop database testDb;
--------------------------------------------------------------------------------------------------------------------------
--Add a column of type DATE called Birthday in Persons table
alter table Customer add Birthday date;
-------------------------------------------------------------------------------------------------------------------
--Delete the column Birthday from the Persons table
alter table Customer drop column Birthday
---------------------------------------------------------------------------------------------------------------------
