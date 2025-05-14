-- criação do banco
CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

-- criação da tabela classes
CREATE TABLE tb_classes (
id BIGINT AUTO_INCREMENT,
nome_classes VARCHAR(50) NOT NULL, 
tipo_ataque VARCHAR(30),
descricao TEXT,
PRIMARY KEY (id)
);

-- criação da tabela personagens
CREATE TABLE tb_personagens (
id BIGINT AUTO_INCREMENT,
nome_personagens VARCHAR(50) NOT NULL,
poder_ataque INT,
poder_defesa INT,
nivel INT,
classe_id BIGINT, -- Aqui você conecta a classe
PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

-- inserção de dados classes
INSERT INTO tb_classes (nome, tipo_ataque, descricao)
VALUES
('Filósofo', 'Mágico', 'Reflete e confunde o inimigo com argumentos existenciais'),
('Atleta de Elite', 'Físico', 'Combate usando habilidades esportivas e resistência'),
('Místico Retrô', 'Mágico', 'Lança poderes baseados em sabedorias antigas e televisores velhos'),
('Doméstico Destruidor', 'Misto', 'Combina tarefas domésticas com golpes pesados'),
('Influencer Galáctico', 'Psíquico', 'Manipula as emoções e tendências do universo virtual');

-- inserção de dados personagens
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, nivel, classe_id)
VALUES
('Irmão do Jorel', 1800, 1500, 10, 1), 
('Nico', 2500, 800, 12, 2), 
('Vovó Juju', 2200, 2000, 18, 3), 
('Dona Danuza', 2100, 1700, 15, 4),
('Lara', 1950, 1400, 9, 5), 
('Seu Edson', 2300, 1000, 11, 2), 
('Jorel', 2700, 1900, 16, 5); 

-- poder de ataque maior que 
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- intervalo de poder de defesa
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- método LIKE buscar letra em nome
SELECT * FROM tb_personagens WHERE nome LIKE '%c%';

-- método INNER JOIN para unir dados das duas tabelas
SELECT p.*, c.nome AS nome_classe, c.tipo_ataque 
FROM tb_personagens p 
INNER JOIN tb_classes c 
ON p.classe_id = c.id;

-- método INNER JOIN para filtrar por classe
SELECT p.*, c.nome AS nome_classe 
FROM tb_personagens p 
INNER JOIN tb_classes c ON p.classe_id = c.id 
WHERE c.nome IN ('Místico Retrô', 'Filósofo');

