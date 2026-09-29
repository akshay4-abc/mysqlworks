create table students(id int,`name` text,course text,fees_paid int,`status` text);
insert into students values(1, 'Alice', 'Web Development', 5000, 'Inactive'),
(2, 'Bob', 'Data Science', 7000, 'Inactive'),
(3, 'Charlie', 'UI/UX Design', 4000, 'Active');

select * from students where fees_paid>5000;
update students set `status`='Active' where course='Web Development';
update students set fees_paid=fees_paid+1000 where course='Data Science';
update students set `status`='Active', fees_paid=fees_paid-500 where id=3;
delete from students where id=2;
delete from students where `status`='Inactive';