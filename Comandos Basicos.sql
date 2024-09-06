-- Comentario em Banco de dados
-- Criar novo arquivo -> CTRL + T
-- CTRL + SHIFT + ENTER -> Executa o código

-- Mostre permissoes do user 
SHOW GRANTS FOR 'novousuario'@'localhost';

-- Criar usuario 
CREATE USER 'novousuario'@'localhost'
IDENTIFIED BY 'senha123';

-- Conceder permissao para usuarios 
GRANT
	SELECT,
    INSERT,
    UPDATE
ON sys.sys_config
TO 'novousuario'@'localhost';

-- Tirar permissoes de um usuario  
REVOKE
	SELECT,
    INSERT,
    UPDATE
ON sys.sys_config
FROM 'novousuario'@'localhost';

-- Deletar algum usuario
DROP USER 'novousuario'@'localhost';


-- Comando para criar o database
CREATE DATABASE lojaTeste;


-- Comando para deletar alguma estrutura
DROP DATABASE lojaTeste;


CREATE DATABASE senai;

USE senai
