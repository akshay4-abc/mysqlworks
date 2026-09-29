use mashup;
create table bookss(id int,title text,author text,price int,stock int);
insert into bookss values(1, 'The Alchemist', 'Paulo Coelho', 350, 50),
(2, 'Atomic Habits', 'James Clear', 450, 40),
(3, 'The Psychology of Money', 'Morgan Housel', 400, 30),
(4, 'Ikigai', 'Francesc Miralles', 300, 60),
(5, 'Deep Work', 'Cal Newport', 500, 20);
select * from bookss where price<450 and stock>30;
update bookss set price=420,stock=45 where title='Deep Work';
delete from bookss where title='Ikigai';
select avg(price),count(*) from bookss ;
select * from bookss order by price desc limit 3;
select char_length(title) from bookss where title like 'T%t';