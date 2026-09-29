show databases;
use mashup;
create table products(ID int,Name text,Category text,Price int,in_stock text);
insert into products values(01,'Charger','Electronics',650,'YES'),(02,'Rice','Grocery',250,'YES'),(03,'HandSanitizer','Hygiene',99,'YES'),(04,'Blender','Electronics',700,'YES'),(05,'Oranges','Fruits',200,'NO');
select distinct Category from products;
select * from products where in_stock='YES' and Price<500;
select * from products where in_stock='NO' and Price>1000;
select Name,Price from products order by Price desc;
select Name,Price*1.18 as price_with_tax from products;