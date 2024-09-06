CREATE DATABASE operadores_libbs;

USE operadores_libbs;

CREATE TABLE clientes(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(70),
    idade INT
);

CREATE TABLE empregados(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(70),
    idade INT,
    salario INT
);

CREATE TABLE produtos(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(70),
    preco INT,
    quantidade INT
);

INSERT INTO clientes (nome, idade)
VALUES ('joao', 18), ('rapha', 19), ('ruan', 20);

INSERT INTO empregados (nome, idade, salario)
VALUES ('viviane', 21, 100000),
		('joao rosa', 41, 1001),
        ('igor', 98, 213123);
 
 INSERT INTO produtos (nome, preco, quantidade)
 VALUES ('torradeira', 4000, 5),
		('celular', 7000,3),
        ('oculos de sol', 90, 20);