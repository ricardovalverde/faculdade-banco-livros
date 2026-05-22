-- Inserção de Autores
INSERT INTO Autor (id_autor, nome, pais_origem) VALUES
(1,  'Machado de Assis',      'Brasil'),
(2,  'Clarice Lispector',     'Brasil'),
(3,  'Jorge Amado',           'Brasil'),
(4,  'Paulo Coelho',          'Brasil'),
(5,  'George Orwell',         'Reino Unido'),
(6,  'J.K. Rowling',          'Reino Unido'),
(7,  'Stephen King',          'EUA'),
(8,  'Agatha Christie',       'Reino Unido'),
(9,  'Dan Brown',             'EUA'),
(10, 'J.R.R. Tolkien',        'Reino Unido'),
(11, 'Erich Gamma',           'Suíça'),
(12, 'Richard Helm',          'Austrália'),
(13, 'Ralph Johnson',         'EUA'),
(14, 'John Vlissides',        'EUA');



-- Inserção de Editoras
INSERT INTO Editora (id_editora, nome, localizacao) VALUES
(1, 'Abril',                'São Paulo'),
(2, 'Saraiva',              'São Paulo'),
(3, 'Companhia das Letras', 'São Paulo'),
(4, 'Record',               'Rio de Janeiro'),
(5, 'Rocco',                'Rio de Janeiro');



-- Inserção de Livros
INSERT INTO Livro (id_livro, titulo, isbn, numero_paginas, genero, preco) VALUES
(1,  'Dom Casmurro',                    '9781234567897', 256,  'Romance',    39.90),
(2,  'A Hora da Estrela',               '9781234567898', 128,  'Romance',    29.90),
(3,  'Capitães da Areia',               '9781234567899', 300,  'Drama',      35.50),
(4,  'O Alquimista',                    '9781234567800', 208,  'Ficção',     42.00),
(5,  '1984',                            '9781234567801', 328,  'Distopia',   45.00),
(6,  'Harry Potter',                    '9781234567802', 400,  'Fantasia',   59.90),
(7,  'It',                              '9781234567803', 1138, 'Terror',     69.90),
(8,  'Assassinato no Expresso Oriente', '9781234567804', 256,  'Mistério',   39.00),
(9,  'Código Da Vinci',                 '9781234567805', 480,  'Suspense',   49.90),
(10, 'O Senhor dos Anéis',              '9781234567806', 1000, 'Fantasia',   89.90),
(11, 'Design Patterns',                 '9780201633610', 395,  'Tecnologia', 120.00);



-- Relacionamento Livro x Autor
INSERT INTO Livro_Autor (id_livro, id_autor) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(11, 12),
(11, 13),
(11, 14);



-- Relacionamento Livro x Editora
INSERT INTO Livro_Editora (id_livro, id_editora) VALUES
(1, 1),
(10, 1),
(2, 2),
(8, 2),
(3, 3),
(9, 3),
(11, 3),
(4, 4),
(7, 4),
(5, 5),
(6, 5);