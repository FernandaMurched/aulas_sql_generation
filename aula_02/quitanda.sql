CREATE DATABASE db_quitanda;
 
USE db_quitanda;
 
CREATE TABLE tb_produtos
(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int,
data_validade date,
preco decimal,
PRIMARY KEY (id)
);
 
INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("Banana", 1000, "2025-06-12", 12.49);
 
SELECT * FROM tb_produtos;
 
INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("Maçã", 1500, "2025-06-12", 10.00),
	  ("Cenoura", 2000, "2025-07-15", 12.00),
      ("Alface", 3500, "2025-06-19", 4.00);
SELECT nome, preco FROM tb_produtos;
 
SELECT * FROM tb_produtos WHERE id = 3;
 
SELECT * FROM tb_produtos WHERE preco > 5.00;
 
SELECT * FROM tb_produtos WHERE id != 3;
 
SELECT * FROM tb_produtos WHERE nome = "Banana";
 
SELECT * FROM tb_produtos WHERE id = 3 OR nome = "Maçã";
 
SELECT * FROM tb_produtos WHERE id = 2 AND nome = "Maçã";
 
UPDATE tb_produtos SET preco = 12.49 WHERE id = 1;
 
ALTER TABLE tb_produtos MODIFY preco decimal(6, 2);

SET SQL_SAFE_UPDATES =0;

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES("Banana Nanica", 1000, "2025-06-12", 14.49);

ALTER TABLE tb_produtos MODIFY preco decimal(6, 2);

ALTER TABLE tb_produtos ADD descricao varchar(255);

ALTER TABLE tb_produtos DROP descricao;

ALTER TABLE tb_produtos CHANGE nome nome_produto varchar(255);