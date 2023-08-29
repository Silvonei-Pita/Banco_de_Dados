-- Criar base de dados
CREATE DATABASE Livraria;

-- Mostrar o banco de dados
SHOW DATABASES;

-- Acessando o banco de dados
USE Livraria;

-- Criar tabela
CREATE TABLE Livraria.Livros(
ID INT AUTO_INCREMENT, 
Livro VARCHAR(255) NOT NULL,
Autor VARCHAR(255) NOT NULL,
Sexo_Autor VARCHAR(10),
Qtde_pags INT NOT NULL,
Editora VARCHAR(255) NOT NULL,
Valor_Comum FLOAT NOT NULL,
Valor_Kindle FLOAT NOT NULL,
Ano_Publicacao INT NOT NULL,
PRIMARY KEY(ID)
);

-- Inserindo registros na tabela.
INSERT INTO
	Livraria.Livros
	(Livro, Autor, Sexo_Autor, Qtde_pags, Editora, Valor_Comum, Valor_Kindle, Ano_Publicacao)
VALUES
	('Pai Rico, Pai Pobre', 'Robert T.Kiyosaki', 'Masculino', 336, 'Alta Books', 61.53, 58.45, 2018),
    ('Mindset', 'Carol S.Dweck', 'Feminino', 312, 'Objetiva', 38.99, 14.95, 2017), 
    ('Como fazer amigos e influenciar pessoas', 'Dale Carnegie', 'Masculino', 256, 'Sextante', 38.99, 33.24, 2019),
    ('A Cabana', 'William P. Young', 'Masculino', 240, 'Arqueiro', 35.99, 17.90, 2008),
    ('O Poder do Hábito', 'Charles Duhigg', 'Masculino', 408, 'Objetiva', 42.99, 29.90, 2012),
    ('Código Limpo', 'Robert C. Martin', 'Masculino', 425, 'Alta Books', 91.99, 87.39, 2009),
    ('Essencialismo', 'Greg McKeown', 'Masculino', 272, 'Sextante', 53.58, 33.24, 2015),
    ('Me Poupe!', 'Nathalia Arcuri', 'Feminino', 176, 'Sextante', 32.86, 17.09, 2018),
    ('Comece pelo Porquê', 'Simon Sinek', 'Masculino', 256, 'Sextante', 50.58, 24.90, 2018),
    ('O Alquimista', 'Paulo Coelho', 'Masculino', 206, 'Paralela', 24.70, 14.70, 2017);
    
    
-- Mostrar registros da tabela
SELECT ID, Livro, Autor 
FROM Livraria.livros
WHERE ID <= 4 
ORDER BY Autor ASC
;

-- Apagar tabela
DROP TABLE Livraria.Livros;

-- 1 - Trazer o nome do livro, autor e valor Kindle somente de livros com valores menores que R$ 40,00;
SELECT ID, Livro, Autor, Valor_Kindle 
FROM Livraria.Livros
WHERE Valor_Kindle <= 40;

-- 2 - Trazer o nome do livro e autor onde o ano de publicação seja maior que 2017, a editora seja Sextante e o sexo do autor seja feminino;
SELECT ID, Livro, Autor
FROM Livraria.Livros
WHERE Ano_Publicacao > 2017 AND Editora = 'Sextante' AND Sexo_Autor = 'Feminino';

-- 3 - Trazer o nome do livro e editora de livros com mais de 200 páginas;
SELECT ID, Livro, Qtde_pags, Editora
FROM Livraria.Livros
WHERE Qtde_pags >= 200;

-- 4 - Trazer o nome do livro, número de páginas do livro e autores que começam com a letra "C";
SELECT ID, Livro, Qtde_pags, Autor
FROM Livraria.Livros
WHERE Autor LIKE 'C%';

-- 5 - Trazer o nome do autor, editora e ano de publicação dos livros que tenham autores do sexo masculino e tenham sido publicados pela editora Alta Books;
SELECT ID, Autor, Editora, Ano_Publicacao
FROM Livraria.Livros
WHERE Sexo_Autor = 'Masculino' AND Editora = 'Alta Books';

-- 6 - Trazer o nome do livro, do autor, número de páginas, editora, ano de publicação e valor com capa comum com valores acima de R$ 50,00;
SELECT ID, Livro, Autor, Qtde_pags, Editora, Ano_Publicacao, Valor_Comum
FROM Livraria.Livros
WHERE Valor_Comum > 50;

-- 7 - Trazer o nome do livro, editora e valor capa comum onde o nome do autor comece com Nathalia;
SELECT ID, Livro, Editora, Valor_Comum
FROM Livraria.Livros
WHERE Autor LIKE 'Nathalia%';

-- 8 - Trazer o nome do livro, autor, número de páginas dos livros publicados até 2017;
SELECT ID, Livro, Autor, Qtde_pags, Ano_Publicacao
FROM Livraria.Livros
WHERE Ano_Publicacao <= 2017;

-- 9 - Trazer o nome dos autores com livros publicados pela editora Sextante com mais de 200 páginas;
SELECT ID, Autor, Qtde_pags, Editora
FROM Livraria.Livros
WHERE Editora = 'Sextante' AND Qtde_pags >= 200;

-- 10 - Trazer o nome do livro, autores, valor com capa comum com valor maior que R$ 30,00 na editora Sextante;
SELECT ID, Livro, Autor, Valor_Comum, Editora
FROM Livraria.Livros
WHERE Valor_Comum > 30 AND Editora = 'Sextante';

