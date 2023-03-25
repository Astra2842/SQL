create table employees(
id serial primary key,
employee_name varchar(50) not null
);

insert into employees (employee_name)
values ('Дмитрий'),
	   ('Ксения'),
	   ('Иван'),
	   ('Никита'),
	   ('Анастасия'),
	   ('Сергей'),
	   ('Светлана'),
	   ('Анна'),
	   ('Ирина'),
	   ('Артем'),
	   ('Роман'),
	   ('Олег'),
	   ('Дмитрий'),
	   ('Ксения'),
	   ('Иван'),
	   ('Никита'),
	   ('Анастасия'),
	   ('Сергей'),
	   ('Светлана'),
	   ('Анна'),
	   ('Ирина'),
	   ('Артем'),
	   ('Роман'),
	   ('Олег'),
	   ('Дмитрий'),
	   ('Ксения'),
	   ('Иван'),
	   ('Никита'),
	   ('Анастасия'),
	   ('Сергей'),
	   ('Светлана'),
	   ('Анна'),
	   ('Ирина'),
	   ('Артем'),
	   ('Роман'),
	   ('Олег'),
	   ('Дмитрий'),
	   ('Ксения'),
	   ('Иван'),
	   ('Никита'),
	   ('Анастасия'),
	   ('Сергей'),
	   ('Светлана'),
	   ('Анна'),
	   ('Ирина'),
	   ('Артем'),
	   ('Роман'),
	   ('Олег'),
	   ('Дмитрий'),
	   ('Ксения'),
	   ('Иван'),
	   ('Никита'),
	   ('Анастасия'),
	   ('Сергей'),
	   ('Светлана'),
	   ('Анна'),
	   ('Ирина'),
	   ('Артем'),
	   ('Роман'),
	   ('Олег'),
	   ('Дмитрий'),
	   ('Ксения'),
	   ('Иван'),
	   ('Никита'),
	   ('Анастасия'),
	   ('Сергей'),
	   ('Светлана'),
	   ('Анна'),
	   ('Ирина'),
	   ('Артем'),
	   ('Роман'),
	   ('Олег');
	   
	  
create table salary(
id serial primary key,
monthly_salary int not null
);


insert into salary (monthly_salary)
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400),
	   (2500);
	   
	  
	  
create table employee_salary(
id serial primary key,
employee_id int not null unique,
salary_id int not null
); 

insert into employee_salary (employee_id, salary_id)
values (3,7),
	   (1,4),
	   (5,9),
	   (40,13),
	   (23,4),
	   (11,2),
	   (52,10),
	   (15,13),
	   (26,4),
	   (16,1),
	   (33,7),
	   (70,15),
	   (69,12),
	   (68,1),
	   (67,14),
	   (66,2),
	   (65,7),
	   (64,3),
	   (63,4),
	   (62,11),
	   (61,5),
	   (60,14),
	   (59,9),
	   (58,13),
	   (57,1),
	   (56,2),
	   (55,10),
	   (54,15),
	   (53,2),
	   (51,11),
	   (71,7),
	   (72,4),
	   (73,9),
	   (121,13),
	   (78,4),
	   (88,2),
	   (99,10),
	   (100,13),
	   (77,4),
	   (111,1);
	  
	  


create table roles1(
id serial primary key,
role_name int not null unique,
salary_id int not null
); 

ALTER TABLE roles1 ALTER COLUMN role_name TYPE varchar(30);

alter table roles1
	drop column salary_id;

insert into roles1 (role_name)
values ('Junior Python developer'),
	   ('Middle Python developer'),
	   ('Senior Python developer'),
	   ('Junior Java developer'),
	   ('Middle Java developer'),
	   ('Senior Java developer'),
	   ('Junior JavaScript developer'),
	   ('Middle JavaScript developer'),
	   ('Senior JavaScript developer'),
	   ('Junior Manual QA engineer'),
	   ('Middle Manual QA engineer'),
	   ('Senior Manual QA engineer'),
	   ('Project Manager'),
	   ('Designer'),
	   ('HR'),
	   ('CEO'),
	   ('Sales manager'),
	   ('Junior Automation QA engineer'),
	   ('Middle Automation QA engineer'),
	   ('Senior Automation QA engineer');
	   
	  
create table roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
	references roles1(id)
); 

insert into roles_employee (employee_id, role_id)
values (7,20),
	   (20,4),
	   (3,9),
	   (5,13),
	   (23,4),
	   (11,20),
	   (10,9),
	   (22,13),
	   (21,3),
	   (34,4),
	   (6,7),
	   (70,4),
	   (69,9),
	   (68,13),
	   (67,4),
	   (66,20),
	   (65,9),
	   (64,13),
	   (63,3),
	   (62,4),
	   (61,20),
	   (60,4),
	   (59,9),
	   (58,13),
	   (57,4),
	   (56,20),
	   (55,9),
	   (54,13),
	   (53,3),
	   (52,4),
	   (51,20),
	   (50,4),
	   (49,9),
	   (48,13),
	   (47,4),
	   (46,20),
	   (45,9),
	   (43,13),
	   (42,3),
	   (41,4);
	   
