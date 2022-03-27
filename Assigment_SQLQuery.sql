create table paintings
(
paintingid int primary key,
name varchar(10),
artistId int,
price decimal
);
select *From paintings;
insert into paintings values(11,'miracle',1,300)
insert into paintings values(12,'barbie',1,700)
insert into paintings values(13,'sunshine',2,2800)
insert into paintings values(14,'house',2,2300)
insert into paintings values(15,'nature',3,250)
insert into paintings values(16,'woman',3,5000)
insert into paintings values(17,'mountine',3,50)
insert into paintings values(18,'miracle',4,1300)

create table collectors
(
collectorid int,
name varchar(20),
);
insert into collectors values(101,'Pooja')
insert into collectors values(102,'Nikita')
insert into collectors values(103,'Sonali')
insert into collectors values(104,'Priyanka')

create table artists
(
artistId int,
name varchar(20),
);
select *from artists;
insert into artists values(1,'Rahul')
insert into artists values(2,'Kishor')
insert into artists values(3,'Amol')
insert into artists values(4,'Rajesh')

create table sales
(
id int,
saledate varchar(20),
paintingid int,
artistId int,
collectorid int,
salesprice decimal
);
select *From sales;
insert into sales values(1001,'2022-3-16',13,2,104,2500)
insert into sales values(1002,'2022-3-16',14,2,102,2300)
insert into sales values(1003,'2022-3-16',11,1,102,300)
insert into sales values(1004,'2022-3-16',16,3,103,4000)
insert into sales values(1005,'2022-3-16',15,3,103,200)
insert into sales values(1005,'2022-3-16',17,3,103,50)



--write a query to list the paintings that are priced higher than avg
select * from  paintings where price>(select avg(price) as average from paintings);

--find the list of collectors who purchased the painting from our gallery.

--inner join
select *from collectors;
select *from sales;
select *From paintings;
--inner join sales and collector table-display match recordes
select c.collectorid,s.saledate,s.salesprice from collectors c inner join sales s on s.collectorid=c.collectorid;

--inner join sales and collector table,painting-display match recordes
select s.salesprice,s.saledate,c.collectorid,p.name from collectors c inner join sales s on s.collectorid=c.collectorid inner join paintings p on s.paintingid=p.paintingid


