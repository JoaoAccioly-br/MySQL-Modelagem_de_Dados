create database Estudo_Filme

use Estudo_Filme

create table Cliente(
ID_cliente int primary key auto_increment,
Nome varchar(150) not null,
Endereco varchar(255) not null
)

create table Produto(
Cod_produto int primary key auto_increment,
Nome varchar(150) not null
)

create table Diretor(
ID_diretor int primary key,
Nome varchar(150) not null
)

create table Ator(
Cod_ator int primary key auto_increment,
Nome varchar(155) not null,
Foto_URL varchar(255) not null,
Sexo varchar(1) not null,
Dt_nascimento date not null,
Cache decimal(8,2) not null
)

create table Cenario(
ID_cenario int primary key auto_increment,
Local varchar(80) not null,
Descricao varchar(255)
)

create table Filme(
ID_filme int primary key auto_increment,
Nome varchar(155) not null,
Duracao_min int not null,
Dt_inicio date not null,
Dt_fim date not null,
ID_cliente int not null,
ID_diretor int not null,
Cod_produto int not null
)

create table Locacao(
ID_locacao int primary key auto_increment,
ID_filme int not null,
ID_cenario int not null,
Dt_inicio date not null,
Dt_fim date not null,
Valor_gasto decimal(8,2) not null
)

create table Atuacao(
Cod_atuacao int primary key auto_increment,
Cod_ator int not null,
ID_filme int not null,
Personagem varchar(155) not null
)

   