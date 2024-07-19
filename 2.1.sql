CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

DROP TABLE tb_classes;

CREATE TABLE tb_classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao TEXT
);

INSERT INTO tb_classes (nome, descricao) VALUES
('Guerreiro', 'Forte e resistente, especializado em combate corpo a corpo'),
('Mago', 'Utiliza magias para atacar e se defender'),
('Arqueiro', 'Especialista em ataques à distância com arco e flecha'),
('Paladino', 'Combina habilidades de combate com magias de cura'),
('Assassino', 'Ágil e furtivo, especializado em ataques rápidos e precisos');

CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    nivel INT NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    classe_id INT,
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classe_id) VALUES
('Arthas', 10, 2500, 1500, 1),
('Jaina', 12, 3000, 1000, 2),
('Legolas', 8, 1800, 800, 3),
('Tyrion', 9, 2000, 1800, 4),
('Vayne', 7, 2700, 900, 5),
('Cersei', 11, 2100, 1600, 3),
('Darius', 13, 3200, 1700, 1),
('Cassiopeia', 6, 2300, 1200, 2);

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%C%';

SELECT tb_personagens.*, tb_classes.nome AS classe_nome, tb_classes.descricao
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

SELECT tb_personagens.*, tb_classes.nome AS classe_nome, tb_classes.descricao
FROM tb_personagens
INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.nome = 'Arqueiro';