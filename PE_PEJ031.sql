Create database PE_PRJ301
use PE_PRJ301
create table accounts (
username varchar(50) primary key,
[password] varchar(32)
)
create table customers
(
	cus_id varchar(10) primary key,
	cus_name varchar(50),
	cus_gender varchar(6),
	cus_birthday date,
	cus_address text
	)

Insert into accounts(username,password) values
('admin','21232f297a57a5a743894a0e4a801fc3'),
('manager','827ccb0eea8a706c4c34a16891f84e7b')
insert into customers(cus_id,cus_name,cus_gender,cus_birthday,cus_address) values
('KH01','Nguyen Van A','Male','1988-06-18','Can Tho'),
('KH02','Tran Van B','Male','2000-05-13','Vinh Long'),
('KH03','Le Thi C','Female','2001-04-01','Hau Giang')