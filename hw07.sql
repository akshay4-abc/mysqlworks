use mashup;
DESCRIBE mobileapps;
create table mobileapps(id int,name text,city text,score int,bonus int null,challenge text);
alter table mobileapps change column chllenge challenge text;
insert into mobileapps values(1,'Raj','Chennai',88,5,'Fitness'),
(2,'Anu','Mumbai',91,null,'Diet'),
(3,'Ravi','Chennai',78,3,'Fitness'),
(4,'Meena','Delhi',82,null,'Diet'),
(5,'Farah','Mumbai',95,4,'Fitness'),
(6,'Kiran','Pune',70,null,'Yoga'),
(7,'Latha','Pune',87,null,'Fitness');

select * from mobileapps where score>(select avg(score) from mobileapps);
select distinct name,chllenge from mobileapps where chllenge in(select chllenge from mobileapps where name='Farah');

