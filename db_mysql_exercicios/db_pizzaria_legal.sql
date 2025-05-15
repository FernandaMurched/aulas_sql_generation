-- criação do banco
CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

-- criação da tabela categoria
CREATE TABLE tb_categoria (
id BIGINT NOT NULL AUTO_INCREMENT,
nome_categoria VARCHAR(50) NOT NULL,
descricao_categoria VARCHAR(100),
status VARCHAR(20) DEFAULT 'ativo',
PRIMARY KEY (id)
);

-- criação da tabela pizza
CREATE TABLE tb_pizza (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome_pizza VARCHAR(100) NOT NULL,
  sabor_pizza TEXT, 
  quantidade_pedacos INT,
  tamanho_cm INT,
  preco DECIMAL(6, 2) NOT NULL,
  id_categoria BIGINT,
  PRIMARY KEY (id),
  FOREIGN KEY (id_categoria) REFERENCES tb_categoria(id)
);

-- inserção de dados na tb_categoria
INSERT INTO tb_categoria (nome_categoria, descricao_categoria, status)
VALUES
('Salgada', 'Pizzas tradicionais salgadas', 'disponível'),
('Doce', 'Pizzas com sabores doces', 'indisponível'),
('Vegetariana', 'Pizzas sem carne', 'disponível'),
('Vegana', 'Pizzas sem ingredientes animais', 'disponível'),
('Especial', 'Pizzas gourmet e especiais', 'disponível');


-- inserção de dados na tb_pizza
INSERT INTO tb_pizza (nome_pizza, sabor_pizza, quantidade_pedacos, tamanho_cm, preco, id_categoria)
VALUES
('Calabresa', 'Calabresa, cebola e queijo', 8, 40, 55.00, 1),
('Marguerita', 'Tomate, manjericão e queijo', 8, 40, 50.00, 1),
('Chocolate', 'Chocolate ao leite e morango', 6, 30, 48.00, 2),
('Frutas', 'Banana, canela e açúcar', 6, 30, 46.00, 2),
('Quatro Queijos', 'Mozzarella, gorgonzola, parmesão, catupiry', 8, 40, 60.00, 5),
('Vegetariana Mix', 'Legumes variados e queijo', 8, 40, 52.00, 3),
('Vegana Especial', 'Queijo vegano, tomate e rúcula', 8, 40, 58.00, 4),
('Portuguesa', 'Presunto, ovo, cebola, azeitona e queijo', 8, 40, 49.00, 1);

-- Lista todos as pizzas concatenado em reais e centímetros
SELECT 
  id,
  nome_pizza,
  sabor_pizza,
  quantidade_pedacos,
  CONCAT('R$', FORMAT(preco, 2)) AS preco,
  CONCAT(tamanho_cm, ' cm') AS tamanho_cm,
  id_categoria
FROM tb_pizza;

-- intervalo de valores
SELECT * FROM tb_pizza WHERE preco BETWEEN 50.00 AND 100.00;

-- método LIKE buscar letra em nome
SELECT * FROM tb_pizza WHERE nome_pizza LIKE '%m%';

-- método INNER JOIN para unir dados das duas tabelas
SELECT tb_pizza.*, tb_categoria.nome_categoria
FROM tb_pizza
INNER JOIN tb_categoria
ON tb_pizza.id_categoria = tb_categoria.id;

-- método INNER JOIN para filtrar categoria 
SELECT tb_pizza.*, tb_categoria.nome_categoria
FROM tb_pizza
INNER JOIN tb_categoria
ON tb_pizza.id_categoria = tb_categoria.id
WHERE tb_categoria.nome_categoria = 'Doce';

