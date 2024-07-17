CREATE DATABASE db_Ecommerce;
USE db_Ecommerce;

CREATE TABLE tb_Protudos(
id BIGINT AUTO_INCREMENT,
Nome VARCHAR(255) NOT NULL,
Setor TEXT,
Unidades DECIMAL NOT NULL,
Preco DECIMAL NOT NULL,
Situacao TEXT,
PRIMARY KEY(id)
);

INSERT INTO tb_Protudos(Nome, Setor, Unidades, Preco, Situacao) 
VALUES ("Iphone 15", "Celulares", "401", 5958.00, "Disponivel");
INSERT INTO tb_Protudos(Nome, Setor, Unidades, Preco, Situacao) 
VALUES ("Iphone 15 Pro Max", "Celulares", "120", 7950.00, "Disponivel");
INSERT INTO tb_Protudos(Nome, Setor, Unidades, Preco, Situacao) 
VALUES ("MacBook Pro", "Informatica", "98", 8689.00, "Disponivel");
INSERT INTO tb_Protudos(Nome, Setor, Unidades, Preco, Situacao) 
VALUES ("Samsung Galaxy S24", "Celulares", "590", 4680.00, "Disponivel");
INSERT INTO tb_Protudos(Nome, Setor, Unidades, Preco, Situacao) 
VALUES ("AllienWar Gamer", "Informatica", "424", 5752.00, "Disponivel");
INSERT INTO tb_Protudos(Nome, Setor, Unidades, Preco, Situacao) 
VALUES ("Iphone 14", "Celulares", "332", 4359.00, "Disponivel");
INSERT INTO tb_Protudos(Nome, Setor, Unidades, Preco, Situacao) 
VALUES ("NoteBook Positivo", "Informatica", "587", 2100.00, "Disponivel");
INSERT INTO tb_Protudos(Nome, Setor, Unidades, Preco, Situacao) 
VALUES ("Fone ShoppingTrem Edition", "Prerifericos", "500", 5.00, "Disponivel");

SELECT * FROM tb_Protudos;

ALTER TABLE tb_Protudos MODIFY Preco DECIMAL(6,2);

SELECT * FROM tb_Protudos WHERE Preco < 500.00;

SELECT * FROM tb_Protudos WHERE Preco > 500.00;

UPDATE tb_Protudos SET Situacao = "Indisponivel" WHERE Id = 7;



