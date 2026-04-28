DROP DATABASE study_sql;
CREATE DATABASE study_sql;

USE study_sql;

## DDL DATA DEFINITION LANGUAGE-> comandos de definição como CREATE DATABASE CREATE TABLE, ALTER TABLE E DROP TABLE 
## DML DATA MANIPULATION LANGUAGE-> comandos de manipulação de dados como INSERT INTO, UPDATE, DELETE AND TRUNCATE


CREATE TABLE users (
	id INT auto_increment PRIMARY KEY,
	name VARCHAR(200) NOT NULL,
	nascimento DATE NOT NULL,
	sexo ENUM ('F', 'M') NOT NULL,
	weight DECIMAL(10, 2) NOT NULL,
	altura DECIMAL(10, 2) NOT NULL,
	nacionality VARCHAR(200) NOT NULL
);

INSERT INTO users (name, nascimento, sexo, weight, altura, nacionality) VALUES
("davi", "2005-07-18", 'M', 48.5, 1.67, "Brasileiro"),
("ramon", "2005-11-03", 'M', 48.5, 1.67, "Brasileiro"),
("lalau", "2005-07-07", 'F', 48.5, 1.67, "Brasileiro");

select * from users;
desc users;

## DML -> ADICIONANDO UMA COLUNA NOVA

ALTER TABLE users
ADD COLUMN profession VARCHAR(10);

## removendo column
ALTER TABLE users
DROP COLUMN profession;

## escolhendo o local (SE EU COLOCAR FIRST FICA EM PRIMEIRO)
ALTER TABLE users
ADD COLUMN profession VARCHAR(10) AFTER name;

ALTER TABLE users
MODIFY COLUMN profession VARCHAR(30) AFTER name;

## evitando conflitos na hora de modificar uma coluna (setando not null porem com um valor final '' para o sql entender e na dar conflito)
ALTER TABLE users
MODIFY COLUMN profession VARCHAR(30) NOT NULL DEFAULT '';

ALTER TABLE users
CHANGE column profession prof VARCHAR(20) NOT NULL DEFAULT '';

ALTER TABLE users
RENAME TO peoples;

desc peoples;

CREATE TABLE cursos (
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(200) NOT NULL UNIQUE,
	description TEXT NULL,
	duration INT UNSIGNED,
	totalClass INT NOT NULL,
	ano YEAR DEFAULT '2026'
);

desc cursos;

DROP TABLE cursos;

## continua em manipulando linhas.sql . . . 
