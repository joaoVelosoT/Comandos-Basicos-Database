CREATE DATABASE lojavendaslibbs;
-- Indicando banco de dados que vamos utilizar
USE lojavendaslibbs;

CREATE TABLE clientes (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    idade INT
);

CREATE TABLE produtos (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    preco VARCHAR(30)
);

CREATE TABLE fornecedores (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    cnpj VARCHAR(16)
);
DROP TABLE funcionarios;
CREATE TABLE funcionarios (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    cpf VARCHAR(11),
    ncarteira VARCHAR(30),
	salario VARCHAR(30)
);

CREATE TABLE pedidos(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    idCliente INT,
    idProduto INT,
    idFuncionario INT,
    idFornecedor INT,
    -- fk (colunaAtual) RF tabela ( nomeColuna)
    FOREIGN KEY (idCliente) REFERENCES clientes(id),
    FOREIGN KEY (idProduto) REFERENCES produtos(id),
    FOREIGN KEY (idFuncionario) REFERENCES funcionarios(id),
    FOREIGN KEY (idFornecedor) REFERENCES fornecedores(id)
);

	INSERT INTO clientes (nome,idade) VALUES
	('Tiquinho', 27),
	('Soarez', 23),
	('Edson', 42 );

	INSERT INTO produtos (nome, preco) VALUES
	('Camiseta da Insider', 'R$ 130,00'),
	('Tenis da Nike', 'R$ 620,00'),
	('Pulseira da Pandora', 'R$ 1.130,00');

	INSERT INTO fornecedores (nome, cnpj) VALUES
	('Bras', '21.323/0001-21'),
	('Heisenberg', '71.323/0001-32'),
	('25Março', '32.323/0001-54');
    
    INSERT INTO funcionarios (nome, cpf, ncarteira, salario) VALUES
    ('Arthur Robert', '4423424323', '10021', '10'),
    ('Lucas Chuva', '4592424323', '10021', '2'),
    ('Jorge Almado', '5443424323', '10021', '300');
	
    
    SELECT * FROM pedidos ;
    
    INSERT INTO pedidos(idCliente, idProduto, idFuncionario,idFornecedor) VALUES
    (1,1,1,1),
    (2,2,2,2),
    (3,3,3,3);
    
    
    
 -- clientes, produtos, funcionarios, fornecedores, pedidos

