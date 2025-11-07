CREATE DATABASE EMPRESA_DB;
USE EMPRESA_DB;

CREATE TABLE funcionarios (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(50),
    salario DECIMAL(10,2),
    dependentes VARCHAR(100),
    departamento VARCHAR(50),
    chefe_departamento VARCHAR(100),
    projeto VARCHAR(100),
    cliente_projeto VARCHAR(100),
    cidade_cliente VARCHAR(100)
);
