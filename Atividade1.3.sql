CREATE DATABASE db_QUINTOANO;
USE db_QUINTOANO;

CREATE TABLE db_QUINTOANO(
id BIGINT AUTO_INCREMENT,
Nome VARCHAR(255) NOT NULL,
Periodo TEXT,
Turma TEXT,
Notafinal DECIMAL NOT NULL,
Situacao TEXT,
PRIMARY KEY(id)
);

INSERT INTO db_QUINTOANO(Nome, Periodo, Turma, Notafinal, Situacao) 
VALUES ("Ana", "Manhã", "5°A", 5.90, "Reprovada");
INSERT INTO db_QUINTOANO(Nome, Periodo, Turma, Notafinal, Situacao) 
VALUES ("João", "Manhã", "5°A", 8.90, "Aprovado");
INSERT INTO db_QUINTOANO(Nome, Periodo, Turma, Notafinal, Situacao) 
VALUES ("Vitor", "Manhã", "5°A", 4.00, "Reprovado");
INSERT INTO db_QUINTOANO(Nome, Periodo, Turma, Notafinal, Situacao) 
VALUES ("Camila", "Manhã", "5°A", 6.00, "Aprovada");
INSERT INTO db_QUINTOANO(Nome, Periodo, Turma, Notafinal, Situacao) 
VALUES ("Maria", "Manhã", "5°B", 9.90, "Aprovada");
INSERT INTO db_QUINTOANO(Nome, Periodo, Turma, Notafinal, Situacao) 
VALUES ("Daniele", "Manhã", "5°B", 10.0, "Aprovada");
INSERT INTO db_QUINTOANO(Nome, Periodo, Turma, Notafinal, Situacao) 
VALUES ("Carlos", "Manhã", "5°A", 5.00, "Reprovado");
INSERT INTO db_QUINTOANO(Nome, Periodo, Turma, Notafinal, Situacao) 
VALUES ("Pedro", "Manhã", "5°B", 3.50, "Reprovado");

SELECT * FROM db_QUINTOANO;

ALTER TABLE db_QUINTOANO MODIFY Notafinal DECIMAL(6,2);

SELECT * FROM db_QUINTOANO WHERE Notafinal < 7.00;

SELECT * FROM db_QUINTOANO WHERE Notafinal > 7.00;

UPDATE db_QUINTOANO SET Situacao = "Reprovada" WHERE Id = 4;




