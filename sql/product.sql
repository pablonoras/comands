show databases;
use holamundo;

CREATE Table products(
	id int not null auto_increment,
	name varchar(50) not null,
	created_by int not null,
	marca varchar(50) not null,
	primary key(id),
	foreign key(created_by) references user(id)
);

RENAME TABLE products to product;

insert into product (name, created_by, marca)
	values
	('ipad', 1, 'apple'),
	('iphone', 1, 'apple'),
	('watch', 2, 'apple'),
	('mackbook', 1, 'apple'),
	('imac', 3,'apple'),
	('ipad mini', 2, 'apple');

SELECT * FROM product;

# Left Join

SELECT u.id, u.email, p.name  FROM `user` u left join product p on u.id = p.created_by;


# Right Join

SELECT u.id, u.email, p.name  FROM `user` u right join product p on u.id = p.created_by;


# Inner Join 

SELECT u.id, u.email, p.name  FROM `user` u inner join product p on u.id = p.created_by;


# Cross Join

SELECT u.id, u.email, p.id, p.name FROM `user` u cross join product p;


# Group By 

SELECT count(id), marca from product group by marca;

SELECT COUNT(p.id), u.name form product p left join user u on u.id = p.created_by GROUP BY p.created_by;
