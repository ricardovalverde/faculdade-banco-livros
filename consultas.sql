-- Listar todos os autores
SELECT * FROM Autor;

-- Listar todas as editoras
SELECT * FROM Editora;

-- Listar todos os livros
SELECT * FROM Livro;





-- Consulta principal: Livro + Autor + Editora
SELECT 
    Livro.titulo,
    Autor.nome AS autor,
    Editora.nome AS editora
FROM Livro
JOIN Livro_Autor ON Livro.id_livro = Livro_Autor.id_livro
JOIN Autor ON Autor.id_autor = Livro_Autor.id_autor
JOIN Livro_Editora ON Livro.id_livro = Livro_Editora.id_livro
JOIN Editora ON Editora.id_editora = Livro_Editora.id_editora;


-- Listar todos os livros com seus autores  
SELECT 
    Livro.titulo,
    Autor.nome AS autor
FROM Livro
JOIN Livro_Autor ON Livro.id_livro = Livro_Autor.id_livro
JOIN Autor ON Autor.id_autor = Livro_Autor.id_autor;


-- Listar todos os livros com suas editoras
SELECT 
    Livro.titulo,
    Editora.nome AS editora
FROM Livro
JOIN Livro_Editora ON Livro.id_livro = Livro_Editora.id_livro
JOIN Editora ON Editora.id_editora = Livro_Editora.id_editora;