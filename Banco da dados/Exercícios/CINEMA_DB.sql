CREATE DATABASE IF NOT EXISTS CINEMA_DB;
USE CINEMA_DB;

--CREATE TABLE FILMES (
--    ID_FILME INT AUTO_INCREMENT PRIMARY KEY,
--    TITULO VARCHAR(100),
--    DIRETORES VARCHAR(100),
--    ATORES VARCHAR(200),
--    GENEROS VARCHAR(100),
--    PRODUTORA VARCHAR(50)
--);

CREATE TABLE diretores(
    id_diretor int auto_increment primary key,
    nome varchar(100)
);

CREATE TABLE atores(
    id_ator int auto_increment primary key,
    nome varchar(100)
);

CREATE TABLE generos(
    id_genero int auto_increment primary key,
    nome varchar(50)
);

CREATE TABLE produtoras(
    id_produtora int auto_increment primary key,
    nome varchar(100)
);

CREATE TABLE filmes(
    id_filme int auto_increment primary key,
    titulo varchar(100)
)