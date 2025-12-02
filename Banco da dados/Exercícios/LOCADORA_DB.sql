CREATE DATABASE LOCADORA_DB;
USE LOCADORA_DB;

-- CREATE TABLE locacoes (
--     id_locacao INT AUTO_INCREMENT PRIMARY KEY,
--     cliente VARCHAR(100),
--     filmes VARCHAR(200),
--     genero_filme VARCHAR(100),
--     valor_total DECIMAL(10,2)
-- );

create table clientes(
    id_cliente  int auto_increment primary key,
    nome        varchar(100) not null,
)

create table filmes(
    id_filmes int auto_increment primary key,
    nome      varchar(70) not null,
    valor     decimal(10,2)
)

create table generos(
    id_genero int auto_increment primary key,
    genero    varchar(50) not null
)

create table genero_filme(
    id_filmes int,
    id_genero int,
    foreign key (id_filmes) references filmes(id_filmes),
    foreign key (id_genero) references generos(id_genero)
)

create table locacoes(
    id_locacao int auto_increment primary key,
    id_cliente int,
    valor_total decimal(10,2),
    foreign key (id_cliente) references clientes(id_cliente)
)

create table locacao_filmes(
    id_locacao int,
    id_filmes int,
    foreign key (id_filmes) references filmes(id_filmes),
    foreign key (id_locacao) references locacoes (id_locacao)
)