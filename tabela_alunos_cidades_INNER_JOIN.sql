-- Criação da tabela cidades
CREATE TABLE cidades (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    populacao INT
);
-- inserção na tabela cidades
INSERT INTO cidades(nome,populacao) values
('Sorocaba',679.359),
('Votorantim',124.287),
('Aracoiaba',124.283),
('Salto',33.345),
('Itu',175.019);

-- criação da tabela alunos 
CREATE TABLE alunos(
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
dat_nasc DATE,
cidade_id INT,

FOREIGN KEY(cidade_id) REFERENCES cidades(id)
);

-- Inserção na tabela alunos
INSERT INTO alunos (nome, dat_nasc, cidade_id ) VALUES 
('Maria Oliveira', '1995-03-20', 3),
('Pedro Santos', '1988-11-05', 2),
('Ana Silva', '1992-07-15', 1),
('Lucas Souza', '1997-09-10', 4),
('Fernanda Lima', '1985-02-25', NULL),
('Rafael Pereira', '1990-12-30', 3),
('Carolina Almeida', '1993-06-18', 1),
('José Costa', '1987-04-12', 4),
('Mariana Carvalho', '1998-08-08', 2),
('Felipe Mendes', '1989-10-22', 3),
('Larissa Gonçalves', '1991-01-14', NULL),
('André Fernandes', '1996-07-03', 2);

-- Exibe todos os registros da tabela alunos e cidades em correspondência entre os valores das colunas "cidade_id" e "id" 
SELECT * 
	FROM alunos INNER
    JOIN cidades
    ON cidades.id = Alunos.cidade_id;
