-- AS -> Apelido
-- Operadores aritmeticos
SELECT 10 + 5 AS soma;
SELECT 10 - 5 AS subtracao;
SELECT 10 * 5 AS multiplicacao;
SELECT 10 / 5 AS divisao;
SELECT 10 %¨3 AS modulo;

INSERT INTO empregados (nome, idade, salario)
VALUES ('viviane', 25, 100000);
-- Operadores de Comparação
SELECT * FROM clientes;
SELECT * FROM clientes WHERE idade = 25;
SELECT * FROM clientes WHERE idade != 25;
SELECT * FROM produtos WHERE preco > 100;
SELECT * FROM produtos WHERE preco < 50;
SELECT * FROM produtos WHERE preco >= 500;
SELECT * FROM produtos WHERE preco <= 1000;
SELECT * FROM produtos WHERE preco BETWEEN 50 AND 100;
SELECT * FROM clientes WHERE nome IN ('vitinho', 'roger');
SELECT * FROM clientes WHERE nome LIKE ('%u%');
SELECT * FROM clientes WHERE nome IS NULL;
-- Operadores Logicos
SELECT * FROM clietes WHERE idade > 15 AND idade < 25;
SELECT * FROM clientes WHERE idade > 14 OR idade < 25;
SELECT * FROM clientes WHERE NOT idade = 18;

-- Funcao de agregacao
SELECT COUNT(*) FROM clientes;
SELECT SUM(quantidade) FROM produtos;
SELECT AVG(quantidade) FROM produtos;
SELECT MIN(quantidade) FROM produtos;
SELECT MAX(quantidade) FROM produtos;

-- Funçoes de String 
SELECT CONCAT(nome, idade) FROM clientes;
SELECT LOWER(nome) FROM clientes;
SELECT UPPER(nome) FROM clientes;
SELECT SUBSTRING(nome, 5, 10) FROM clientes;