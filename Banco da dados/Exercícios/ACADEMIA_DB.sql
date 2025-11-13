CREATE DATABASE ACADEMIA_DB;
USE ACADEMIA_DB;

--CREATE TABLE alunos (
--    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
--    nome VARCHAR(100),
--    idade INT,
--    planos VARCHAR(100),
--    valor_plano DECIMAL(10,2),
--    instrutor VARCHAR(100)
--);

CREATE TABLE planos (
    id_plano int auto_increment primary key,
    nome varchar(100) not null,
    valor decimal(10,2) not null    
)

CREATE TABLE instrutor(
    id_instrutor int auto_increment primary key,
    nome varchar(100) not null    
)

CREATE TABLE alunos (
    id_aluno int auto_increment primary key,
    nome varchar(100) not null,
    dt_nasc date not null,
    id_instrutor int,
    foreign key (id_instrutor) references instrutor(id_instrutor)
)

CREATE TABLE aluno_plano (
    id_aluno_plano int auto_increment primary key,
    id_aluno int,
    id_plano int,
    dt_adesao date not null,
    foreign key (id_aluno) references alunos(id_aluno),
    foreign key (id_plano) references planos(id_plano)    
)
