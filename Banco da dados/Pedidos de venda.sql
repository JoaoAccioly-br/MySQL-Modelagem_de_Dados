create database pedidos_venda
use pedidos_venda

create table unidades(
    cod int auto_increment primary key,
    nome varchar(50) not null
)


create table produtos(
cod_prod int auto_increment primary key,
nome varchar(50) not null,
cod_unidade int not null,
cod_categoria int not null,
qt_estoque int,
qt_minimo int,
preco_custo decimal(8,2),
preco_venda decimal(8,2),
caracteristicas text,
foreign key cod_unidade references unidades(cod)
)

insert into unidades(nome)
values ('pecas'), ('metros'),('quilogramas'),('duzias'),('pacote'),('caixa')

select cod_prod, nome, preco_custo, preco_venda, preco_venda - preco_custo as lucro_unitario from produtos
select * from produtos where preco_venda - preco_custo < 1.00
select * from produtos where preco_venda between 100.00 and 450.00
select * from produtos where (preco_venda between 100.00 and 450.00) and (qt_estoque < qt_minimo)
select * from produtos where (qt_estoque < qt_minimo) or (qt_estoque < 10)
select * from produtos where qt_estoque = 0
select * from produtos where not (preco_venda between 100.00 and 450.00)