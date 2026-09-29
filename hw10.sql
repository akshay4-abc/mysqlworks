use mashup;
create table authors(author_id int primary key,author_name text,email varchar(30) unique);
create table book(book_id int primary key,book_title text,author_id int,foreign key (author_id) references authors(author_id));