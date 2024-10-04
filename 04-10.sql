USE escola;

SELECT nome FROM alunos WHERE aluno_id = 1;

SELECT nome FROM alunos WHERE aluno_id IN (1, 3);

SELECT descricao FROM turmas WHERE turma_id IN (1, 3);

SELECT nome FROM alunos WHERE turma_id NOT IN(2);


SELECT nome
FROM alunos
WHERE aluno_id = ANY (
	SELECT aluno_id
    FROM notas
    WHERE nota > 8.0
);


SELECT nome
FROM professores AS p
WHERE EXISTS (
	SELECT 1
    FROM Turma_Professor AS tp
    WHERE tp.professor_id = p.professor_id
);








-- ALL -> Todos
-- IN -> Entre
-- ANY Qualquer
-- Liste todos os alunos que estão na turma de historia2
-- e que a nota 8 seja maior que todas as notas dadas em atividades dessa turma

SELECT al.nome, al.turma_id, notas.nota
FROM alunos AS al
INNER JOIN notas ON notas.aluno_id = al.aluno_id

WHERE al.turma_id IN(2);



SELECT nome
FROM alunos
WHERE aluno_id = ANY (
	SELECT aluno_id
    FROM notas
    WHERE atividade_id IN(
		SELECT atividade_id
        FROM atividades
        WHERE turma_id = 2
    )
)AND 8.0 > ALL (
	SELECT nota
    FROM notas
    WHERE atividade_id IN (
		SELECT atividade_id
        FROM atividades
        WHERE turma_id = 2
    )
)
