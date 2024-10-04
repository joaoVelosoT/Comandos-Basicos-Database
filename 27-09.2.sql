SELECT
Alunos.nome,
Notas.nota
FROM Notas
RIGHT JOIN Alunos ON Alunos.aluno_id = Notas.aluno_id;


SELECT * FROM Notas;

SELECT
al.nome AS NomeAluno,
Turmas.descricao AS NomeTurma,
turma_professor.professor_id,
professores.nome AS NomeProfessor
FROM Alunos AS al
INNER JOIN Turmas ON Turmas.turma_id = al.turma_id
INNER JOIN turma_professor ON turma_professor.turma_id = Turmas.turma_id
INNER JOIN professores ON professores.professor_id = turma_professor.professor_id;

SELECT Alunos.nome, Turmas.descricao, Professores.nome
FROM Alunos
INNER JOIN Turmas ON Alunos.turma_id = Turmas.turma_id
INNER JOIN Turma_Professor ON Turmas.turma_id = Turma_Professor.turma_id
INNER JOIN Professores ON Turma_Professor.professor_id = Professores.professor_id;

SELECT * FROM Turmas;


SELECT 
Alunos.nome,
Turmas.descricao
FROM Alunos
LEFT JOIN Turmas ON Turmas.turma_id = Alunos.turma_id
-- AND Turmas IS NULL 

;


SELECT Professores.nome
FROM Professores
LEFT JOIN Turma_Professor ON Professores.professor_id = Turma_Professor.professor_id
WHERE Turma_Professor.turma_id IS NULL;



