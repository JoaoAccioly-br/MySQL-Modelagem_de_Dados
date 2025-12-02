CREATE DATABASE EMPRESA_DB;
USE EMPRESA_DB;

-- CREATE TABLE funcionarios (
--     id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
--     nome VARCHAR(100),
--     cargo VARCHAR(50),
--     salario DECIMAL(10,2),
--     dependentes VARCHAR(100),
--     departamento VARCHAR(50),
--     chefe_departamento VARCHAR(100),
--     projeto VARCHAR(100),
--     cliente_projeto VARCHAR(100),
--     cidade_cliente VARCHAR(100)
-- );

create table departamentos(
    cod_dpto            int primary key auto_increment,
    departamento        varchar(50) not null,
    chefe_departamento  varchar(100) not null
)

create table projetos(
    cod_projeto         int primary key auto_increment,
    projeto             varchar(100) not null,
    cliente_projeto     varchar(100) not null,
    cidade_cliente      varchar(100) not null
)

create table cargos(
    cod_cargo           int primary key auto_increment,
    cod_dpto            int,
    cargo               varchar(50) not null,
    salario             decimal(10,2) not null,
    foreign key (cod_dpto) references departamentos(cod_dpto)
)

create table funcionarios(
    id_funcionario      int primary key auto_increment,
    nome                varchar(100) not null,
    cod_cargo           int,
    cod_projeto         int,
    foreign key (cod_cargo) references cargos(cod_cargo),
    foreign key (cod_projeto) references projetos(cod_projeto)
)

create table dependentes(
    id_dependente       int primary key auto_increment,
    id_funcionario      int,
    nome_dependente     varchar(100) not null,
    foreign key (id_funcionario) references funcionarios(id_funcionario)
)