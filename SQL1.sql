CREATE DATABASE db_quitanda;
USE db_quitanda;

CREATE TABLE tb_Produtos(
id BIGINT AUTO_INCREMENT,
Nome VARCHAR(255) NOT NULL,
Quantidade INT,
DataValidade DATE,
Preco DECIMAL NOT NULL,
PRIMARY KEY(id)
);

DESCRIBE tb_Produtos;

INSERT INTO tb_produtos(Nome, Quantidade, Datavalidade, Preco) 
VALUES ("tomate",100, "2023-12-15", 8.00);
INSERT INTO tb_produtos(Nome, Quantidade, Datavalidade, Preco) 
VALUES ("maçã",20, "2023-12-15", 5.00);
INSERT INTO Tb_produtos(Nome, Quantidade, Datavalidade, Preco) 
vaLUES ("Laranja",50, "2023-12-15", 10.00);
INSERT INTO Tb_produtos(Nome, Quantidade, Datavalidade, Preco) 
vaLUES ("Banana",200, "2023-12-15", 12.00);
INSERT INTO Tb_produtos(Nome, Quantidade, Datavalidade, Preco) 
vaLUES ("Uva",1200, "2023-12-15", 30.00);
INSERT INTO Tb_produtos(Nome, Quantidade, Datavalidade, Preco) 
vaLUES ("Pêra",500, "2023-12-15", 2.99);

selECT * fRoM TB_produtos;