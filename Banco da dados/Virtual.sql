create database virtual
use virtual

create table depto(
    cod_depto       int primary key auto_increment,
    nome_depto      varchar(50) not null,
)

create table funcao(
    cod_funcao      int primary key auto_increment,
    funcao          varchar(50) not null,
    salario         decimal(10,2) not null,
)

create table cadfun(
    codfun          int primary key auto_increment,
    nome            varchar(70) not null,
    cod_depto       int not null,
    cod_funcao      int not null,
foreign key (cod_depto) references depto(cod_depto),
foreign key (cod_funcao) references funcao(cod_funcao)
)

INSERT INTO depto (nome_depto) VALUES
('Recursos Humanos'),      
('Financeiro'),             
('Desenvolvimento'),        
('Marketing'),              
('Vendas'),                 
('Administração'),          
('Logística'),              
('Atendimento ao Cliente'), 
('Pesquisa e Desenvolvimento'), 
('Jurídico'),               
('TI - Infraestrutura'),    
('Produção'),               
('Qualidade');              

INSERT INTO funcao (funcao, salario) VALUES
('Analista Jr', 3500.00),   
('Analista Pleno', 5000.00),  
('Analista Senior', 7500.00), 
('Coordenador', 9000.00),     
('Gerente', 12000.00),       
('Diretor', 25000.00),        
('Estagiário', 1500.00),      
('Técnico Especializado', 6500.00), 
('Assistente Administrativo', 3000.00), 
('Desenvolvedor Backend', 7000.00), 
('Especialista em Dados', 8500.00), 
('Vendedor Externo', 4200.00),  
('Recepcionista', 2800.00);    

INSERT INTO cadfun (nome, cod_depto, cod_funcao) VALUES
('Ana Clara Lima', 1, 3),     
('Bruno Santos', 2, 5),        
('Carla Oliveira', 3, 10),     
('Daniel Rocha', 4, 2),        
('Eduarda Silva', 5, 12),      
('Felipe Gomes', 6, 4),        
('Gabriela Souza', 7, 8),      
('Henrique Costa', 8, 9),      
('Isabela Mendes', 9, 11),     
('João Paulo Vieira', 10, 3),  
('Larissa Ferreira', 11, 5),   
('Marcelo Pereira', 12, 1),    
('Natália Almeida', 13, 7);  

select * from cadfun;
select * from depto;
select * from funcao;  

