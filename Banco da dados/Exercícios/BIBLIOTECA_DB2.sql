CREATE DATABASE IF NOT EXISTS BIBLIOTECA_DB;
USE BIBLIOTECA_DB;

--CREATE TABLE LIVROS (
--   ID_LIVRO INT AUTO_INCREMENT PRIMARY KEY,
--    TITULO VARCHAR(100),
--    AUTORES VARCHAR(200),
--    GENEROS VARCHAR(100),
--    EDITORA VARCHAR(50),
--    END_EDITORA VARCHAR(100),
--    PRECO DECIMAL(10,2)
--);

CREATE TABLE editoras(
    id_editora int auto_increment primary key,
    nome varchar(100) not null,
    rua varchar(100) not null,
    cidade varchar(50),
    pais varchar(50)
)

CREATE TABLE autores(
    id_autor int auto_increment primary key,
    nome varchar(100) not null   
)

CREATE TABLE generos(
    id_genero int auto_increment primary key,
    genero varchar(50) 
)

CREATE TABLE livros (
    id_livro int auto_increment primary key,
    titulo varchar(100) not null,
    id_editora int,
    preco decimal(10,2) not null,
    foreign key (id_editora) references editoras(id_editora)
)

CREATE TABLE livro_autor(
    id_livro_autor int auto_increment primary key,
    id_livro int,
    id_autor int,
    foreign key (id_livro) references livros (id_livro),
    foreign key (id_autor) references autores (id_autor)
)
CREATE TABLE livro_genero(
    id_livro_genero int auto_increment primary key,
    id_livro int,
    id_genero int,
    foreign key (id_livro) references livros (id_livro),
    foreign key (id_genero) references generos (id_genero)
)



