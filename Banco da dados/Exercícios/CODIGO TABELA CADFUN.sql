-- Cria o banco de dados
CREATE DATABASE VIRTUAL;

-- Seleciona o banco de dados
USE VIRTUAL;

-- Cria a tabela CADFUN
-- CREATE TABLE CADFUN (
--     CODFUN INT AUTO_INCREMENT PRIMARY KEY,
--     NOME VARCHAR(50) NOT NULL,
--     DEPTO TINYINT,
--     FUNCAO VARCHAR(35),
--     SALARIO DECIMAL(8,2)
-- );

create table depto(
    cod_depto     int primary key auto_increment,
    departamento  varchar(30) not null
)

create table funcao(
    cod_funcao    int primary key auto_increment,
    cod_depto     int,
    funcao        varchar(35) not null
    salario       decimal(8,2) not null
    foreign key (cod_depto) references depto(cod_depto)
)

create table cadfun(
    codfun         int primary key auto_increment,
    nome           varchar(50) not null,
    cod_depto      int,
    cod_funcao     int,
    foreign key (cod_depto) references depto(cod_depto),
    foreign key (cod_funcao) references funcao(cod_funcao)
)