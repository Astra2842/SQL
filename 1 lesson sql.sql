create table salary (
	id serial primary key,
	monthly_salary int not null
);

select * from salary;

create table roles (
	id serial primary key,
	role_title varchar (50) unique not null
);

create table roles_salary (
	id serial primary key, 
	id_role int not null,
	id_salary int not null,
	foreign key (id_role)
		references roles(id),
	foreign key (id_salary)
	references salary(id)
);


insert into roles_salary (id_role, id_salary)
values (1,1),
	   (2,2),
	   (3,6),
	   (4,2),
	   (5,4);


insert into salary (monthly_salary)
values (300),
	   (800),
	   (1200),
	   (1500),
	   (1800),
	   (2000),
	   (2300),
	   (2500),
	   (2700),
	   (3000),
	   (3200);

	  
	  
	  alter table roles
	  add column parking int;
	 
	 alter table roles
	 rename column parking to taxi;
	
	alter table roles
	drop column taxi;

update salary 
set monthly_salary = 5000
where id=11;

delete from salary 
where id=10;

insert into roles (role_title)
values ('QA_Manual_Junior'),
	   ('QA_Manual_Middle'),
	   ('QA_Manual_Senior'),
	   ('Java_Developer_Junior'),
	   ('Java_Developer_middle'),
	   ('Java_Developer_senior'),
	   ('Manager');
	   
select * from roles
