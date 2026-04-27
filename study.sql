CREATE DATABASE study_sql;

CREATE TABLE users (
	id INT auto_increment PRIMARY KEY,
	name VARCHAR(200) NOT NULL,
	nascimento DATE null,
	sexo char null,
	weight DECIMAL(10, 2) NULL,
	altura DECIMAL(10, 2) null,
	nacionality VARCHAR(200) NOT NULL
);

INSERT INTO users values(
	DEFAULT, "davi", "2005-07-18", 'M', 48.5, 1.67, "Brasileiro"
);

select * from users;