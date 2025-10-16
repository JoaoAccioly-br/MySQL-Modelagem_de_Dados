create database sala_de_aula
use sala_de_aula
create table alunos(
num_aluno 	int primary key auto_increment,
nome		varchar(70) not null,
data_nasc 	date not null,
idade 		int,
email 		varchar(50),
fone_res 	varchar(20),
fone_com 	varchar(20),
celular 	varchar(20),
profissao 	varchar(30),
empresa 	varchar(30)
)

-- ordenar registros
select * from alunos order by nome 

-- "exercícios"
select nome, data_nasc, idade from alunos
select nome, idade, email, profissao from alunos
select nome, fone_res, celular, profissao from alunos
select nome, data_nasc, profissao from alunos where num_aluno = 1
select * from alunos where profissao = 'Técnico em Informática'
select * from alunos where profissao = 'Analista de Sistemas'
select * from alunos where empresa = 'Escola'
select * from alunos where idade > 18
select * from alunos where idade < 18

select * from alunos where data_nasc < '2000-01-01'

select * from alunos where idade >= 16 and idade <= 18
-- ou da para fazer: where idade between 16 and 18
select * from alunos where profissao = 'analista' or profissao = 'dev'
