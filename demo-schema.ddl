drop table if exists bill;
drop table if exists patron;


create table patron (
	patronId binary(16) not null,
	patronFullName varchar (128),
	patronGender varchar (64),
	index(patronFullName),
	primary key(patronId)
);

create table bill (
	billId binary(16) not null,
	billpatronId binary(16) not null,
	billStatus varchar(64),
	primary key(billId),
	foreign key(billpatronId)references patron (patronId)
);