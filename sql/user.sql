CREATE TABLE user(
	id int not null auto_increment,
	name varchar(50) not null,
	edad int not null,
	email varchar(100) not null,
	primary key (id)
);

INSERT INTO user (name, edad, email) values ('Oscar', 25, 'oscar@gmail.com');
INSERT INTO user (name, edad, email) values ('Layla', 15, 'layla@gmail.com');
INSERT INTO user (name, edad, email) values ('Nicolas', 36, 'nico@gmail.com');
INSERT INTO user (name, edad, email) values ('Chanchito', 7, 'chanchito@gmail.com');

SELECT * FROM `user`;
SELECT * FROM `user` limit 1;
SELECT * FROM `user` WHERE edad > 15;
SELECT * FROM `user` WHERE edad > 20 or email = 'layla@gmail.com';
SELECT * FROM `user` WHERE email != 'layla@gmail.com';
SELECT * FROM `user` WHERE edad BETWEEN 15 and 30;
SELECT * FROM `user` WHERE email like '%gmail%';
SELECT * FROM `user` WHERE email like '%gmail';
SELECT * FROM `user` WHERE email like 'oscar%';


SELECT * FROM user order by edad asc;
SELECT * FROM user order by edad desc;

select max(edad) as mayor from user;
select min(edad) as menor from user;

select id, name from user;

-- Alias a columnas cuando hacemos consultas, comun cuando empecemos a agrupar datos 
select id, name as chanchito from user;
