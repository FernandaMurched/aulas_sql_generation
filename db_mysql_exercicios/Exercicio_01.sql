CREATE DATABASE db_rhempresa;

USE db_rhempresa;

CREATE TABLE tb_colaboradores
(
id bigint AUTO_INCREMENT,
nome varchar(255),
dtnascimento date,
cargo varchar(255),
departamento varchar(50),
salario decimal(10,2),
dtadmissao date,
PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores (nome, dtnascimento, cargo, departamento, salario, dtadmissao)
VALUES
('Gaia Maria', '1990-01-29', 'Analista de Suporte', 'Relacionamento', 4000.00, '2020-02-03'), 
('Cecília Sissa', '2000-05-21', 'Analista de Relacionamento', 'Relacionamento', 3500.00, '2022-12-05'),
('Matilda Souza', '1988-02-18', 'Auxiliar administrativo', 'Administração', 1900.00, '2022-12-12'),
('Tobias Pereira', '1992-06-05', 'Desenvolvedor Full Stack', 'Tecnologia', 4800.00, '2021-03-10'),
('Philomena Nunes', '1990-11-22', 'Analista Financeira', 'Financeiro', 3900.00, '2023-01-03'),
('Francisco Teixeira', '1995-04-14', 'Estagiário de RH', 'Recursos Humanos', 1400.00, '2024-02-01'),
('Thor Costa', '1985-07-29', 'Gerente de Projetos', 'Tecnologia', 6500.00, '2020-08-17'),
('José Marques', '2005-05-17', 'Estagiário', 'Relacionamento', 1500.00, '2024-08-2');

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario >= 2000.00;

SELECT * FROM tb_colaboradores WHERE salario <= 2000.00;

UPDATE tb_colaboradores SET salario = 3200.00 WHERE id = 8;

UPDATE tb_colaboradores SET cargo = 'Analista de Relacionamento' WHERE id = 8;







