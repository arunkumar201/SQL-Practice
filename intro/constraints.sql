-- Active: 1712767786781@@127.0.0.1@5433@practice_db
create table employee (
	id TEXT NOT NULL PRIMARY KEY,
	name VARCHAR(20) UNIQUE,
	email VARCHAR(20) UNIQUE,
	phone VARCHAR(20) DEFAULT 233334,
	password VARCHAR(20),
	created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO admin (id, name, email, phone,password)
values ('3', 'admin', 'admin@123', '1234567890','arun@222');

select * from admin;

update admin set name='arun kumar ' where id='3';

insert into admin (id, name, email, phone,password)
values ('2', 'admin', 'admin@123', '1234567890','arun@222');

delete from admin  where id='2';

delete from admin where email='admin@123';

DESCRIBE employee;

ALTER table employee add COLUMN fullName VARCHAR(30);

select * from employee;

ALTER table employee drop COLUMN fullName;

ALTER table employee RENAME COLUMN name TO fullName;

ALTER table employee RENAME COLUMN fullName TO name;


select count( DISTINCT name) from admin;

select * from admin ;


select name from admin;
