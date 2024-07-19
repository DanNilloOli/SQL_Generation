CREATE DATABASE db_pizzaria;
USE db_pizzaria;

drop database db_pizzaria;

CREATE TABLE tb_categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_pizzas (
    id_pizza INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    tamanho VARCHAR(255) NOT NULL,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

INSERT INTO tb_categorias (nome, descricao) VALUES
('Tradicional', 'Pizzas clássicas com ingredientes tradicionais'),
('Vegetariana', 'Pizzas feitas com ingredientes vegetarianos'),
('Doce', 'Pizzas doces com frutas e chocolates'),
('Especial', 'Pizzas com ingredientes especiais e premium'),
('Vegana', 'Pizzas feitas sem ingredientes de origem animal');

INSERT INTO tb_pizzas (nome, descricao, preco, tamanho, id_categoria) VALUES
('Margherita', 'Pizza clássica com molho de tomate, mussarela e manjericão', 40.00, 'Média', 1),
('Pepperoni', 'Pizza com molho de tomate, mussarela e pepperoni', 45.00, 'Grande', 1),
('Quatro Queijos', 'Pizza com molho de tomate, mussarela, gorgonzola, parmesão e catupiry', 55.00, 'Grande', 4),
('Chocolate', 'Pizza doce com cobertura de chocolate', 35.00, 'Pequena', 3),
('Banana com Canela', 'Pizza doce com cobertura de banana e canela', 30.00, 'Média', 3),
('Vegana de Legumes', 'Pizza vegana com uma variedade de legumes', 50.00, 'Grande', 5),
('Vegetariana de Cogumelos', 'Pizza com cogumelos frescos e queijo', 48.00, 'Média', 2),
('Especial de Parma', 'Pizza com presunto de Parma e rúcula', 65.00, 'Grande', 4);

SELECT * FROM tb_pizzas WHERE preco > 45.00;
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;
SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';
SELECT tb_pizzas.*, tb_categorias.nome AS categoria_nome, tb_categorias.descricao AS categoria_descricao
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria;
SELECT tb_pizzas.*, tb_categorias.nome AS categoria_nome, tb_categorias.descricao AS categoria_descricao
FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id_categoria
WHERE tb_categorias.nome = 'Doce';