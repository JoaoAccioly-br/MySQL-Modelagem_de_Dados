CREATE DATABASE ESCOLA_DB;
USE ESCOLA_DB;

-- CREATE TABLE alunos (
--     id_aluno INT AUTO_INCREMENT PRIMARY KEY,
--     nome VARCHAR(100),
--     cursos VARCHAR(200),
--     professor VARCHAR(100),
--     email_professor VARCHAR(100)
-- );

create table professores(
    cod_professor  int primary key auto_increment,
    nome           varchar(100) not null,
    email          varchar(100) not null
)

create table cursos(
    cod_curso      int primary key auto_increment,
    cod_professor  int,
    curso          varchar(100) not null
    foreign key (cod_professor) references professores(cod_professor)
)

create table alunos(
    id_aluno       int primary key auto_increment,
    nome           varchar(100) not null,
    cod_curso      int,
    foreign key (cod_curso) references cursos(cod_curso),
)