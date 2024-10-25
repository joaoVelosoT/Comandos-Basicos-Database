CREATE DATABASE rosaplane;
USE rosaplane;
-- DROP DATABASE rosaplane;

CREATE TABLE destinos(
	id_destino INT PRIMARY KEY AUTO_INCREMENT,
    nome_destino VARCHAR(50),
    pais_destino VARCHAR(50),
    descricao_destino VARCHAR(255)
);

CREATE TABLE pacotes(
	id_pacotes INT PRIMARY KEY AUTO_INCREMENT,
    id_destino INT,
    nome_pacote VARCHAR(50),
    preco_pacote DOUBLE,
    data_inicio DATE,
    data_termino DATE,
    FOREIGN KEY (id_destino) REFERENCES destinos(id_destino)
);

CREATE TABLE clientes(
	id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(255),
    email_cliente VARCHAR(255),
    telefone INT,
    endereco VARCHAR(255)
);


CREATE TABLE reservas(
	id_reserva INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    id_pacote INT,
    data_reserva DATE,
    numeros_pessoas INT,
    status_reserva VARCHAR(255),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_pacote) REFERENCES pacotes(id_pacotes)
);


INSERT INTO destinos(nome_destino,pais_destino,descricao_destino) VALUES
	("Salvador", "Brazil", "Lindas Praias"),
	("Sao Paulo", "Brazil", "Grande Metropole"),
	("Rio de Janeiro", "Brazil", "Lindas Praias");


INSERT INTO pacotes(id_destino, nome_pacote, preco_pacote,data_inicio,data_termino) VALUES
    (1, "Basico", 1500, '2024-12-25','2025-01-03'),
    (1, "Padrao", 2500, '2024-12-25','2025-01-03'),
    (1, "Premium", 4000, '2024-12-25','2025-01-03'),
    (2, "Basico", 1500, '2024-12-20','2024-12-31'),
    (2, "Padrao", 2500, '2024-12-20','2024-12-31'),
    (2, "Premium", 4000, '2024-12-20','2024-12-31'),
    (3, "Basico", 1500, '2024-12-20','2024-12-31'),
    (3, "Padrao", 2500, '2024-12-20','2024-12-31'),
    (3, "Premium", 4000, '2024-12-20','2024-12-31');
    
INSERT INTO clientes(nome_cliente, email_cliente,telefone,endereco)VALUES
    ("Joao", "joao@gmail.com", 12312332,"rua tal"),
    ("vitor", "vitor@gmail.com", 12312332,"rua tal"),
    ("veloso", "veloso@gmail.com", 12312332,"rua tal");
    
    
INSERT INTO reservas(id_cliente,id_pacote,data_reserva,numeros_pessoas,status_reserva)VALUES
    (1,2,'2024-10-12',3,"pendente"),
    (2,1,'2024-11-02',1,"concluido"),
    (3,3,'2024-12-02',2,"cancelada");
    
    
    CREATE VIEW dados_gerais AS
		SELECT
		cli.nome_cliente AS nomeCliente,
		des.nome_destino AS nomeDestino,
		pac.nome_pacote AS nomePacote,
		pac.preco_pacote AS precoPacote,
		pac.data_inicio AS dataInicio,
		pac.data_termino AS dataTermino
		FROM reservas AS res
			INNER JOIN clientes AS cli ON cli.id_cliente = res.id_cliente
			INNER JOIN pacotes AS pac ON pac.id_destino = res.id_pacote
			INNER JOIN destinos AS des ON des.id_destino = pac.id_destino;
    
    
    SELECT * FROM dados_gerais;
    
    
    
    
   