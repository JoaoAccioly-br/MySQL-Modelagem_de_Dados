create database Casa_de_Repouso

use Casa_de_Repouso

create table idosos(
Cod_idoso primary key,
CPF varchar(14) not null,
Nome varchar(100) not null,
Cidade varchar(50) not null,
Dt_nascimento date not null
)

create table responsaveis(
CPF varchar(14) primary key,
Nome varchar(100) not null,
Telefone varchar(11) not null,
Email varchar(60) not null,
Endereço varchar(150) not null
)

create table medicos(
Cod int primary key,
Nome varchar(100) not null,
Especializacao varchar(50) not null,
Email varchar(60) not null,
Telefone varchar(11) not null,
Cidade varchar(50) not null
)

create table enfermeiros(
Cod int primary key,
Nome varchar(100) not null,
Email varchar(60) not null,
Telefone varchar(11) not null,
Cidade varchar(50) not null
)

create table responsavel_idoso(
Cpf_responsavel varchar(14) not null,
Cod_idoso int not null
)

create table consulta_medico(
Cod_medico int not null,
Cod_idoso int not null,
Dt_consulta date not null,
Num_consulta int not null,
Observacoes varchar(255),

)
create table atendimento_enfermeiro(
Cod_enfermeiro int not null,
Cod_idoso int not null,
Dt_atendimento date not null,
Num_atendimento int not null,
Observacoes varchar(255)
)