-- Tabela Autor
CREATE TABLE `Autor` (
  `id_autor` int NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `pais_origem` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_autor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Tabela Editora
CREATE TABLE `Editora` (
  `id_editora` int NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `localizacao` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_editora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Tabela Livro
CREATE TABLE `Livro` (
  `id_livro` int NOT NULL,
  `titulo` varchar(45) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `numero_paginas` int NOT NULL,
  `genero` varchar(45) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_livro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Tabela Livro-Autor
CREATE TABLE `Livro_Autor` (
  `id_livro` int NOT NULL,
  `id_autor` int NOT NULL,
  PRIMARY KEY (`id_livro`,`id_autor`),
  KEY `fk_livro_autor_autor_idx` (`id_autor`),
  CONSTRAINT `fk_livro_autor_autor` FOREIGN KEY (`id_autor`) REFERENCES `Autor` (`id_autor`),
  CONSTRAINT `fk_livro_autor_livro` FOREIGN KEY (`id_livro`) REFERENCES `Livro` (`id_livro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Tabela Livro-Editora
CREATE TABLE `Livro_Editora` (
  `id_livro` int NOT NULL,
  `id_editora` int NOT NULL,
  PRIMARY KEY (`id_livro`,`id_editora`),
  KEY `id_editora` (`id_editora`),
  CONSTRAINT `livro_editora_ibfk_1` FOREIGN KEY (`id_livro`) REFERENCES `Livro` (`id_livro`),
  CONSTRAINT `livro_editora_ibfk_2` FOREIGN KEY (`id_editora`) REFERENCES `Editora` (`id_editora`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;



