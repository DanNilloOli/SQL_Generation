CREATE DATABASE db_RH;
USE db_RH;

CREATE TABLE tb_Funcionarios(
id BIGINT AUTO_INCREMENT,
Nome VARCHAR(255) NOT NULL,
Setor TEXT,
Admissao DATE,
Salario DECIMAL NOT NULL,
Situacao TEXT,
PRIMARY KEY(id)
);

DESCRIBE tb_Funcionarios;

INSERT INTO tb_Funcionarios(Nome, Setor, Admissao, Salario, Situacao) 
VALUES ("Jessica", "ADM", "2023-12-15", 3958.00, "Ativo");
INSERT INTO tb_Funcionarios(Nome, Setor, Admissao, Salario, Situacao) 
VALUES ("Camila", "Estagiaria", "2024-02-05", 1650.00, "Ativo");
INSERT INTO tb_Funcionarios(Nome, Setor, Admissao, Salario, Situacao) 
VALUES ("José", "ADM", "2021-09-06", 4409.00, "Ativo");
INSERT INTO tb_Funcionarios(Nome, Setor, Admissao, Salario, Situacao) 
VALUES ("Lucas", "Atendente", "2023-10-10", 2538.00, "Ativo");
INSERT INTO tb_Funcionarios(Nome, Setor, Admissao, Salario, Situacao) 
VALUES ("Denise", "Atendente", "2023-10-10", 2538.00, "Ativo");

SELECT * FROM tb_Funcionarios;

SELECT * FROM tb_Funcionarios WHERE Salario > 2000.00;

SELECT * FROM tb_Funcionarios WHERE Salario < 2000.00;

ALTER TABLE tb_Funcionarios MODIFY Salario DECIMAL(6,2);

UPDATE tb_Funcionarios SET Salario = 1700.00 WHERE Id = 2;









