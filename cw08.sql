create database GroceryShop;
use GroceryShop;
create table products(product_id int primary key,product_name text,price int);
alter table products add category int;
truncate table products;
drop database GroceryShop;