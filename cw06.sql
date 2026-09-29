use mashup;
drop table books;
create table books(id int,title text,author text,genre text,price float,copies_sold int);
insert into books values(1, 'The Silent Patient', 'Alex Michaelides', 'Thriller', 399.00, 1200),
(2, 'Atomic Habits', 'James Clear', 'Self-help', 499.00, 2000),
(3, 'The Psychology of Money', 'Morgan Housel', 'Finance', 350.00, 1800);
create table bestsellers(id int,title text,author text,genre text,price float,copies_sold int);
insert into bestsellers values(4, 'Ikigai', 'Francesc Miralles', 'Philosophy', 300.00, 2500),
(5, 'Think Like a Monk', 'Jay Shetty', 'Self-help', 450.00, 2200);
select title,author from books union select title,author from bestsellers;
select * from books where price>400;
select count(*) from books;
select title as `Book Title`, author as `Written By` from books;