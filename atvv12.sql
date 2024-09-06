CREATE DATABASE escola;

USE escola;

CREATE table professor (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    idade INT
);


CREATE table aluno (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100),
    idade INT
);


CREATE table turma (
	id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    idAluno INT,
    idProfessor INT,
    FOREIGN KEY (idAluno) REFERENCES aluno(id),
    FOREIGN KEY (idProfessor) REFERENCES professor(id)
);


INSERT INTO aluno (nome,idade) VALUES
('rafael', 10),
('jorge', 15),
('vitor', 18),
('juan', 19);

INSERT INTO professor (nome,idade) VALUES
('samuel', 30),
('giovanni',30),
('welton',30),
('arthur',22);

INSERT INTO turma(idProfessor, idAluno) VALUES
(2, 4),
(1, 3),
(3, 2),
(4, 1),
(3, 2),
(1, 1),
(4, 3),
(2, 2),
(3, 1);

SELECT al.nome,al.idade, turma.id
FROM aluno AS al
INNER JOIN turma ON	 turma.idAluno = al.id;

SELECT pro.nome,pro.idade, turma.idAluno
FROM professor AS pro
INNER JOIN turma ON turma.idProfessor = pro.id;

SELECT al.id, al.idade
FROM aluno AS al
WHERE nome = "jorge"

;
SELECT * from alunos;

SELECT id FROM turma WHERE ID = 12 ;



USE escola;


SELECT al.nome, al.idade, prof.nome
FROM aluno AS al;