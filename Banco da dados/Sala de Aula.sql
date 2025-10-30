create database sala_de_aula
use sala_de_aula


-- create table alunos(
-- num_aluno 	int primary key auto_increment,
-- nome		varchar(70) not null,
-- data_nasc 	date not null,
-- idade 		int,
-- email 		varchar(50),
-- fone_res 	varchar(20),
-- fone_com 	varchar(20),
-- celular 	varchar(20),
-- profissao 	varchar(30),
-- empresa 	varchar(30)
-- )

-- ordenar registros
-- select * from alunos order by nome

-- "exercícios"
-- select nome, data_nasc, idade from alunos
-- select nome, idade, email, profissao from alunos
-- select nome, fone_res, celular, profissao from alunos
-- select nome, data_nasc, profissao from alunos where num_aluno = 1
-- select * from alunos where profissao = 'Técnico em Informática'
-- select * from alunos where profissao = 'Analista de Sistemas'
-- select * from alunos where empresa = 'Escola'
-- select * from alunos where idade > 18
-- select * from alunos where idade < 18-- 

-- select * from alunos where data_nasc < '2000-01-01'-- 

-- select * from alunos where idade >= 16 and idade <= 18
-- ou da para fazer: where idade between 16 and 18
-- select * from alunos where profissao = 'analista' or profissao = 'dev'

create table profissoes(
cod_profissao   int primary key auto_increment,
profissao      varchar(30) not null
)

create table empresas(
cod_empresa     int primary key auto_increment,
empresa        varchar(30) not null
)

create table alunos(
num_aluno       int primary key auto_increment,
nome            varchar(70) not null,
data_nasc       date not null,
email           varchar(50),
cod_profissao   int,
cod_empresa     int
foreign key (cod_profissao) references profissoes(cod_profissao),
foreign key (cod_empresa) references empresas(cod_empresa)
)

create table telefone(
num_aluno       int,
telefone        varchar(20),
tipo            varchar(15),
foreign key (num_aluno) references alunos(num_aluno)
)

INSERT INTO profissoes (profissao) VALUES
('Estudante'),
('Engenheiro'),
('Professor'),
('Desenvolvedor'),
('Designer'),
('Médico'),
('Advogado'),
('Contador'),
('Jornalista'),
('Analista de RH'),
('Cientista de Dados'),
('Eletricista'),
('Marketing');

INSERT INTO empresas (empresa) VALUES
('TechSolutions Ltda'),
('EducaMais S/A'),
('FutureCorp'),
('GlobalConnect'),
('Alpha Engenharia'),
('Consultoria M&C'),
('HealthCare Plus'),
('Jurídico Forte'),
('Contab Express'),
('WebCreators'),
('DataInsights'),
('Eletro Serviço'),
('Mega Vendas');

INSERT INTO alunos (nome, data_nasc, email, cod_profissao, cod_empresa) VALUES
('Alice Silva', '2000-01-15', 'alice.s@mail.com', 1, NULL),
('Bruno Castro', '1995-05-20', 'bruno.c@mail.com', 4, 1),
('Carla Dias', '1988-11-10', 'carla.d@mail.com', 2, 5),
('David Souza', '1999-07-25', 'david.s@mail.com', 3, 2),
('Eva Nogueira', '1992-03-03', 'eva.n@mail.com', 5, 10),
('Fernando Lima', '1985-09-19', 'felipe.l@mail.com', 6, 7),
('Giovana Reis', '2001-04-12', 'giovana.r@mail.com', 7, 8),
('Hugo Mendes', '1990-12-01', 'hugo.m@mail.com', 8, 9),
('Iara Borges', '1997-06-30', 'iara.b@mail.com', 9, 3),
('Júlio Pires', '1983-02-28', 'julio.p@mail.com', 10, 6),
('Kátia Zanetti', '1994-08-08', 'katia.z@mail.com', 11, 11),
('Lucas Vieira', '1996-10-17', 'lucas.v@mail.com', 12, 12),
('Maria Flor', '2002-01-22', 'maria.f@mail.com', 13, 13);

INSERT INTO telefone (num_aluno, telefone, tipo) VALUES
(1, '5511987654321', 'Celular'),
(2, '5521998765432', 'Celular'),
(3, '553130001234', 'Comercial'),
(4, '5541987612345', 'Celular'),
(5, '555132325678', 'Comercial'),
(6, '5561991234567', 'Celular'),
(7, '557134567890', 'Residencial'),
(8, '5581988776655', 'Celular'),
(9, '559135005500', 'Comercial'),
(10, '5511999998888', 'Celular'),
(11, '552134341122', 'Residencial'),
(12, '5531987651234', 'Celular'),
(13, '554130304040', 'Comercial');

-- Imprime a idade

select *, 
cast((getdate() - data_nasc) / 365.25 as float) as idade
from alunos

select * from alunos
select * from profissoes
select * from empresas
select * from telefone
