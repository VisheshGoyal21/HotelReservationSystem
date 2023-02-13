use GEPDemo

create table UserDetails(
id int identity(1,1) primary key,
first_name varchar(20),
last_name varchar(20),
email varchar(30),
phone_number varchar(10),
);

create table Hotel(
room_id int primary key,
isAvailable bit,
room_type varchar(10),
max_capacity int,
price float,
user_id int foreign key references UserDetails(id),
);




