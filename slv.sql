CREATE DATABASE walmartsenai;

USE walmartsenai;

CREATE TABLE produto (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    quantidade INT
);

CREATE TABLE cliente (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(100),
	idade INT
);
	
CREATE TABLE fornecedor (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100)
);

CREATE TABLE pedidos(
	id INT PRIMARY KEY AUTO_INCREMENT,
    id_produto INT,
    id_fornecedor INT,
    FOREIGN KEY (id_produto) REFERENCES produto(id),
    FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id)
);
ALTER TABLE pedidos
ADD COLUMN id_cliente INT;
INSERT INTO cliente(nome, idade) VALUES
("Joao", 18),
("Juan", 19),
("Raphael", 19),
("Edu", 19),
("Arthur", 22);

INSERT INTO fornecedor(nome) VALUES
("Nike"),
("Adidas"),
("Puma"),
("Samsung"),
("iPhone");

INSERT INTO produto(nome, quantidade) VALUES
("Tenis", 22),
("Chuteira", 12),
("Camisa", 43),
("Bermuda", 10),
("Celular Samsung", 7);


INSERT INTO pedidos(id_cliente,id_produto,id_fornecedor) VALUES
(2, 3, 1),
(1, 2, 2),
(4, 1, 5),
(5, 1, 1),
(4, 4, 1),
(2, 5 , 1),
(1, 3 , 1),
(4, 4 , 2),
(1, 3 ,1),
(5, 5 ,5);

SELECT * FROM pedidos;

SELECT cl.nome, pedidos.id
FROM cliente AS cl
INNER JOIN pedidos ON id_cliente = pedidos.id;


SELECT cli.id, cli.nome, cli.idade, ped.id_cliente
FROM cliente AS cli
INNER JOIN pedidos AS ped ON ped.id_cliente = cli.id;

SELECT pr.nome, pr.quantidade
FROM produto AS pr
INNER JOIN pedidos AS ped ON ped.id_produto = pr.id
INNER JOIN fornecedor AS fo ON fo.id_pedido = fo.id
INNER JOIN cliente AS cli ON cli.id_fornecedor



-- SELECT al.nome,al.idade, turma.id
-- FROM aluno AS al
-- INNER JOIN turma ON	 turma.idAluno = al.id;