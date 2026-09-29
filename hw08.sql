create database BookStoreDB;
use BookStoreDB;
create table authors(author_id int primary key,name text,country text);
create table books(book_id int primary key,title text,price int, author_id int,foreign key (author_id) references authors(author_id));
alter table books add publisher_year int;
truncate table books;
drop database BookStoreDB;