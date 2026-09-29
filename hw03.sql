use mashup;
create table books(ID int,Title text, Author text, Price int, Stock_status text, Genre text);
insert into books values(01,'The Mentalist','Bruno Heller',450,'In Stock','Mystery/Thriller'),(02,'Bleach','Kubo',600,'In Stock','Anime'),(03,'OnePunchMan','Murata',650,'Out of Stock','Anime'),(04,'NNorwegian wood','Murakami',300,'In Stock','Novel');
select distinct Genre from books;
select * from books where Price<400 and Stock_status='In Stock';
select * from books where Price>700 and Stock_status='Out of Stock';
SELECT Title, Price, Price * 1.10 as Price_GST from books;
select Title,Price,Stock_status from books order by Price desc;