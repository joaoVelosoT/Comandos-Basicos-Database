
-- Criando o Database
CREATE DATABASE senai;
-- Entrando no da
USE senai;

CREATE TABLE professores(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    -- INT inteiro
    -- Primary Key -> Indica Chave primária
    -- Not null -> Nunca vai ser Vazio
    -- Auto_Increment -< Auto adicionar novo numero	
    nome VARCHAR(60),
    materia VARCHAR(30)
);
-- Inserindo os dados
INSERT INTO professores (nome, materia) VALUES
('Arthur Rosa', 'Banco de dados'),
('Samuel Bruce', 'Flutter'),
('Giovanni Vicking', 'React Native');

-- * -> Indica que estou buscando todas as colunas
SELECT * FROM professores;


-- Atualizar dados
-- Atualize a tabela professores, ajuste materia = backend
-- Onde o id seja igual a 1
-- if (id === 1) { atualiza a materia }

UPDATE professores SET materia = 'Back-End' WHERE id = 1;
-- WHERE -> if
DELETE FROM professores WHERE id = 1;

-- Criar tabela Alunos

CREATE TABLE alunos(
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    -- INT inteiro
    -- Primary Key -> Indica Chave primária
    -- Not null -> Nunca vai ser Vazio
    -- Auto_Increment -< Auto adicionar novo numero	
    nome VARCHAR(60),
    idade INT(30)
);

INSERT INTO alunos (nome, idade) VALUES
('Joao', 18),
('Rapha', 18),
('Ruan', 19),
('Granja Viane', 1932);

SELECT * FROM alunos;

-- Deletar todos os dados
TRUNCATE TABLE alunos;


-- Deletar tabela 
DROP TABLE alunos;
	
-- Deletar mais de um ID
DELETE FROM alunos WHERE id IN (1, 2,2);

-- Atualizar mais de um ID
UPDATE alunos SET nome = 'Arthur', idade = 22 WHERE id IN (1,2,3);


-- Colunas  - Modificar o tipo da coluna
ALTER TABLE alunos
MODIFY COLUMN nome VARCHAR(40);

-- Adicionar nova coluna
ALTER TABLE alunos
ADD COLUMN matricula VARCHAR(10);

-- Deletar uma coluna
ALTER TABLE alunos
DROP COLUMN matricula;

-- Trocar o nome
ALTER TABLE alunos
CHANGE COLUMN novoNome nome VARCHAR(30);

-- Alterar o nome da tabela
ALTER TABLE alunos
RENAME TO estudantes;
