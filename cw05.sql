use mashup;
create table mobiles(id int,brand text,model text,price int ,stock int);
insert into mobiles values(1, 'Samsung', 'Galaxy M14', 12000, 30),
(2, 'Redmi', 'Note 12', 15000, 25),
(3, 'Realme', 'Narzo 50', 13000, 20),
(4, 'Samsung', 'Galaxy A23', 18000, 10);
select * from mobiles where price>13000 and stock<15;
update mobiles set price=12500,stock=stock+5 where model='Narzo 50';
delete from  mobiles where id=2;
select min(price),max(price) from mobiles;
select sum(stock) from mobiles;
select * from mobiles order by price desc limit 2;