CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos
(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
categoria varchar(255),
quantidade int,
disponivel boolean,
preco decimal(10,2),
PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, categoria, quantidade, disponivel, preco)
VALUES
('Livro: O Programador Pragmático', 'Livros', 60, TRUE, 135.00),
('Enciclopédia Jurídica Compacta', 'Livros Jurídicos', 8, TRUE, 540.00),
('Livro: Estruturas de Dados e Algoritmos em Java', 'Livros', 40, TRUE, 180.00),
('Livro: Algoritmos – Teoria e Prática', 'Livros', 25, TRUE, 210.00),
('Livro: Design Patterns', 'Livros', 35, TRUE, 195.00),
('Kit Canetas Fabercastell', 'Papelaria Premium', 30, TRUE, 729.00),
('Livro: Padrões de Arquitetura de Software', 'Livros', 20, TRUE, 150.00),
('Livro: A Lógica da Programação', 'Livros', 50, TRUE, 502.90),
('Livro: Python Fluente', 'Livros', 45, FALSE, 189.90);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco >= 500.00;

SELECT * FROM tb_produtos WHERE preco <= 500.00;

UPDATE tb_produtos SET preco = 680.00 WHERE nome = 'Kit Canetas Fabercastell';

