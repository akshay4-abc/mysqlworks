use mashup;
drop table students;
create table students(student_id int primary key,name text,email varchar(30) unique);
create table courses(course_id int primary key,course_name text);
create table enrollments(student_id int,course_id int,foreign key (student_id) references students(student_id), foreign key (course_id) references courses(course_id));