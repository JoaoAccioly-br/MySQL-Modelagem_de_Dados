CREATE DATABASE ACADEMIA_DB;
USE ACADEMIA_DB;

CREATE TABLE alunos (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    planos VARCHAR(100),
    valor_plano DECIMAL(10,2),
    instrutor VARCHAR(100)
);