CREATE DATABASE IF NOT EXISTS BIBLIOTECA_DB;
USE BIBLIOTECA_DB;

--CREATE TABLE livros (
--    id_livro INT AUTO_INCREMENT PRIMARY KEY,
--    titulo VARCHAR(150),
--    autores VARCHAR(150),
--    nome_leitor VARCHAR(100),
--    data_emprestimo DATE
--);

CREATE TABLE livros (
    id_livro int auto_increment primary key,
    titulo varchar(100) not null
)

CREATE TABLE autores (
    id_autor int auto_increment primary key,
    nome varchar(100) not null  
)

CREATE TABLE leitores (
    id_leitor int auto_increment primary key,
    nome varchar(100) not null    
)

CREATE TABLE livro_autor (
    id_livro_autor int auto_increment primary key,
    id_livro int,
    id_autor int,
    foreign key (id_livro) references livros(id_livro),
    foreign key (id_autor) references autores(id_autor) 
)

CREATE TABLE emprestimo (
    id_emprestimo int auto_increment primary key,
    id_livro int,
    id_leitor int,
    dt_emprestimo date not null,
    foreign key (id_livro) references livros(id_livro),
    foreign key (id_leitor) references leitores(id_leitor)    
)
