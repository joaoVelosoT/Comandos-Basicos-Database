CREATE DATABASE restauranteLibbs;

USE restauranteLibbs;

CREATE TABLE categorias (
	id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100)
);

INSERT INTO categorias(NOME) VALUES
("Comida");

-- ("Sobremesas");

CREATE TABLE produtos(
	id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    preco VARCHAR(20),
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES categorias(id_categoria)
);

INSERT INTO produtos(nome, preco, categoria_id) VALUES
("Lanche", "30,00", 1),
("Sobremesa", "15,00", 2);

CREATE TABLE clientes(
	id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20)
);

INSERT INTO clientes(nome, email, telefone) VALUES
("Raphael", "rapha123@gmail.com", "11912393217"),
("Ruan", "ruan123@gmail.com", "11912393217");

CREATE TABLE pedidos(
	id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    data_pedido DATE,
    cliente_id INT,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id_cliente)
);

INSERT INTO pedidos(data_pedido, cliente_id) VALUES
('2024-06-09', 1),
('2024-06-09', 2);

CREATE TABLE pagamentos(
	id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    metodo_pagamento VARCHAR(100),
    valor_pago INT,
    data_pagamento DATE,
    pedido_id INT,
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id_pedido)
);

INSERT INTO pagamentos(metodo_pagamento, valor_pago,data_pagamento,pedido_id) VALUES
("Cartao de Credito", "30.00", '2024-06-09', 1 ),
("Dinheiro", "20.00", '2024-06-09', 2 );

CREATE TABLE itenspedido(
	id_itenspedido INT PRIMARY KEY AUTO_INCREMENT,
    quantidade INT,
    preco_unitario INT,
    pedido_id INT,
    produto_id INT,
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id_pedido),
    FOREIGN KEY (produto_id) REFERENCES produtos(id_produto)
);

INSERT INTO itenspedido(quantidade, preco_unitario, pedido_id, produto_id) VALUES
(2,30,1,1),
(1,20,2,2);


SELECT * FROM categorias,produtos,clientes,pedidos,pagamentos,itenspedido;

SELECT
	prod.nome,
	prod.preco,
    categorias.nome
FROM produtos AS prod
INNER JOIN categorias ON prod.categoria_id = categorias.id_categoria;

SELECT 
	cli.nome,
    itenspedido.id_itenspedido,
    pedidos.data_pedido,
    produtos.nome,
    itenspedido.quantidade,
    itenspedido.preco_unitario

    
	FROM clientes AS cli
    INNER JOIN pedidos ON cli.id_cliente = pedidos.cliente_id
    INNER JOIN itenspedido ON pedidos.id_pedido = itenspedido.pedido_id
    INNER JOIN produtos ON itenspedido.produto_id = produtos.id_produto;
    
    
SELECT
	cate.nome AS nomeProduto,
    produtos.nome AS nomeCategoria,
    pedidos.data_pedido,
	itenspedido.quantidade
    FROM categorias AS cate
    INNER JOIN produtos ON id_produto = cate.id_categoria
    INNER JOIN pedidos ON produtos.id_produto = pedidos.id_pedido
    INNER JOIN itenspedido ON produtos.id_produto = produto_id 

-- data_pedido, cliente_id