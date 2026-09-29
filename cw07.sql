use mashup;
create table studentss(id int,name text,course text,score int,email varchar(20),phone varchar(20),city text,bonus_score int null);
insert into studentss values(1, 'Asha', 'Python', 85, 'asha@mail.com', '9876543210', 'Chennai', 5),
(2, 'Ravi', 'Python', 90, 'ravi@mail.com', '9876543211', 'Chennai', NULL),
(3, 'Sneha', 'Java', 78, 'sneha@mail.com', '9876543212', 'Mumbai', NULL),
(4, 'Karan', 'Java', 88, 'karan@mail.com', '9876543213', 'Delhi', 2),
(5, 'Divya', 'Python', 95, 'divya@mail.com', '9876543214', 'Mumbai', 4),
(6, 'Manoj', 'JavaScript', 72, 'manoj@mail.com', '9876543215', 'Delhi', NULL);
select course,count(*) from studentss group by course;
SELECT course, AVG(score) as averagescore from studentss group by course having avg(score)>80;
select name,score from studentss where city in('Chennai','Mumbai');
select * from studentss where bonus_score is NULL;
select name from studentss where city='Chennai' union all select name from studentss where city='Mumbai';