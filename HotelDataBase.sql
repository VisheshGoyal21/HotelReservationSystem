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

create table UserReservation(
	reserve_id int primary key,
	room_id int foreign key references Hotel(room_id),
	user_id int foreign key references UserDetails(id),
	start_d datetime,
	end_d datetime
);

alter table UserDetails drop column isManager;
alter table UserDetails add isManager bit default 0;

select * from UserDetails;