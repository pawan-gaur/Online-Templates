
create database busbooking;


create table busbooking.tasks(
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(45) NULL,
	description VARCHAR(45) NULL,
	date_created DATETIME NULL,
	finished BIT(1) NULL DEFAULT 0,
	PRIMARY KEY(id)	
);


insert into busbooking.tasks (name, description, date_created, finished) values ('task1', 'desc1', current_timestamp(), 0);

insert into busbooking.tasks (name, description, date_created, finished) values ('task2', 'desc2', current_timestamp(), 0);

insert into busbooking.tasks (name, description, date_created, finished) values ('task3', 'desc3', current_timestamp(), 0);

create table busbooking.agentregistration(
	id INT NOT NULL AUTO_INCREMENT,
	name VARCHAR(45) NULL,
	email VARCHAR(45) NULL,
	organization VARCHAR(45) NULL,
	phone VARCHAR(15) NULL,
	city VARCHAR(15) NULL,
	state VARCHAR(15) NULL,
	message text,
	PRIMARY KEY(id)
);

create table busbooking.bushire(
	id INT NOT NULL AUTO_INCREMENT,
	source VARCHAR(45) NULL,
	destination VARCHAR(45) NULL,
	doj VARCHAR(15) NULL,
	dor VARCHAR(15) NULL,
	total_person VARCHAR(15) NULL,
	PRIMARY KEY(id)
);
