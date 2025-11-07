CREATE DATABASE ESCOLA_DB;
USE ESCOLA_DB;

CREATE TABLE alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cursos VARCHAR(200),
    professor VARCHAR(100),
    email_professor VARCHAR(100)
);
