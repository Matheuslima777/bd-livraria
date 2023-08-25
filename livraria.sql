-- Criar Tabela
CREATE DATABASE Livraria;

-- Mostrar Tabela
SHOW DATABASES;

-- Acessa Banco de Dados
USE Livraria;

-- Criar Tabela
CREATE TABLE Livraria.autores(
    Id INT (30) auto_increment PRIMARY KEY,
    Livro VARCHAR (255) NOT NULL,
    Autor VARCHAR (255) NOT NULL,
    Sexo_Autor VARCHAR (30) NOT NULL,
    Num_Pag INT NOT NULL,
    Editora VARCHAR (255) NOT NULL,
    Valor_Capa_Comum DOUBLE NOT NULL,
    Valor_Kingle DOUBLE NOT NULL,
    Ano_de_Publicacao int (4) NOT NULL
);

-- Inserir Registro na Tabela
INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('Pai Rico Pai Pobre','Robert T. Kloyosaki', 'Masculino', '336', 'Alta Books', '61.53', '58.45', '2018');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('Mindset','Carol S. Dweck', 'Feminino', '312', 'Objetiva', '38.99', '14.95', '2017');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('Como Fazer Amigos e Influenciar Pessoas', 'Dale Carnegie', 'Masculino', '256', 'Sextante', '38.99', '33.24', '2019');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('A Cabana','William P. Young', 'Masculino', '240', 'Aqueiro', '35.99', '17.905', '2008');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('O Poder do Hábito', 'Charles Duhigg', 'Masculino', '408', 'Objetiva', '42.99', '29.90', '2012');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('Código Limpo', 'Robert C. Martin', 'Masculino', '425', 'Alta Books', '91.99', '87.39', '2009');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('Essencialismo', 'Greg McKeown', 'Masculino', '272', 'Sextante', '53.58', '33.24', '2015');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('Me Poupe!', 'Nathalia Arcuri', 'Feminino', '176', 'Sextante', '32.86', '17.09', '2018');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('Comece Pelo Porquê', 'Simon Sinek', 'Masculino', '256', 'Sextante', '50.58', '24.90', '2018');

INSERT INTO Livraria.autores(Livro, Autor, Sexo_Autor, Num_Pag, Editora, Valor_Capa_Comum, Valor_Kingle, Ano_de_Publicacao)
VALUES ('O Alquimista', 'Paulo Coelho', 'Masculino', '206', 'Paralela', '24.70', '14.70', '2017');

SELECT * FROM Livraria.autores
WHERE Autor LIKE 'o%';


SELECT * FROM Livraria.autores;  -- faz com que todos os dados da tabela sejam puxados

 SELECT livro, Editora FROM livraria.autores where id; -- Faz com que puxe os dados do livro e editora através do id.



SELECT livro, Editora, sexo_autor FROM livraria.autores where sexo_autor like '%masculino'; -- para puxar o livro e a editora “where” para definir onde puxar. “%masculino” para definir qual o criterio


SELECT livro, num_pag, autor, sexo_autor FROM livraria.autores where sexo_autor like '%Feminino'; -- para puxar o livro, numero de paginas e autor no banco de dados livraria.autores "where" where” para definir onde puxar. "%feminino" para definir o criterio

SELECT  autor, editora, ano_de_publicacao FROM livraria.autores where ano_de_publicacao >= 2017;  -- para puxar o autor, editora e ano de publicacao igual ou maior que o ano de 2017


SELECT  autor, sexo_autor, livro, editora FROM livraria.autores where sexo_autor = 'Masculino' and editora = 'Sextante' or editora = 'Alta books'  ; -- para puxar o autor  e livro  das editoras  Sextante e alta books do sexo masculino


SELECT  autor, sexo_autor, livro, editora, num_pag, valor_capa_comum FROM livraria.autores;  -- Para puxar o nome do livro, do autor, número de páginas, editora e ano  da capa comum

SELECT  autor, sexo_autor, livro, editora, num_pag, valor_kingle FROM livraria.autores; --  Trazer o nome do livro, autor, número de páginas e valor no kindle

SELECT  autor, editora FROM livraria.autores where editora = 'Sextante'; -- Trazer o nome dos autores com livros publicados pela editora sextante

SELECT   livro, autor, valor_capa_comum, valor_kingle FROM livraria.autores; -- Trazer o nome do livro, autores, valor com capa comum e valor no kindle



SELECT * FROM Livraria.autores
WHERE Autor LIKE '%';