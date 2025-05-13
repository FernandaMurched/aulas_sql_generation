CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes
(
id bigint AUTO_INCREMENT,
nome varchar(255),
idade INT,
serie varchar(255),
media_final decimal(3,1),
aprovado boolean,
PRIMARY KEY (id)
);

INSERT INTO tb_estudantes (nome, serie, idade, media_final, aprovado) 
VALUES 
('Layla Hassan', '3A', 17, 8.2, TRUE),             
('Youssef Khalil', '2B', 16, 6.5, FALSE),          
('Nour Al-Fayed', '1C', 15, 7.8, TRUE),            
('Fatima Zahra', '3A', 17, 5.9, FALSE),            
('Inti Quispe', '2B', 16, 9.1, TRUE),              
('Maya Huamán', '1C', 15, 4.3, FALSE),             
('Tupaq Salazar', '3A', 17, 7.0, TRUE),            
('Ayelén Flores', '2B', 16, 8.7, TRUE);         

SELECT * FROM tb_estudantes WHERE media_final > 7.0;

SELECT * FROM tb_estudantes WHERE media_final < 7.0;

UPDATE tb_estudantes SET media_final = 5 WHERE id = 6;

   
