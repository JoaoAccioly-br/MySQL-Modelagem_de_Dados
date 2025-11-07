CREATE DATABASE MERCADO_DB;
USE MERCADO_DB;

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    cidade VARCHAR(100)
);

CREATE TABLE produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100),
    categoria VARCHAR(50),
    preco DECIMAL(10,2)
);

CREATE TABLE vendedores (
    id_vendedor INT AUTO_INCREMENT PRIMARY KEY,
    nome_vendedor VARCHAR(100),
    setor VARCHAR(50)
);

CREATE TABLE vendas (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_vendedor INT,
    data_venda DATE,
    valor_total DECIMAL(10,2)
);

CREATE TABLE itens_venda (
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    id_venda INT,
    id_produto INT,
    quantidade INT,
    subtotal DECIMAL(10,2)
);

INSERT INTO clientes (nome, cidade) VALUES
('João Silva', 'São Paulo'),
('Maria Santos', 'Campinas'),
('Lucas Pereira', 'Santos'),
('Ana Costa', 'São Paulo');

INSERT INTO produtos (nome_produto, categoria, preco) VALUES
('Arroz 5kg', 'Alimentos', 22.50),
('Feijão 1kg', 'Alimentos', 8.90),
('Sabonete', 'Higiene', 3.50),
('Detergente', 'Limpeza', 4.20),
('Leite 1L', 'Bebidas', 5.30);

INSERT INTO vendedores (nome_vendedor, setor) VALUES
('Carlos Almeida', 'Caixa'),
('Fernanda Lima', 'Atendimento'),
('Rogério Souza', 'Caixa');

INSERT INTO vendas (id_cliente, id_vendedor, data_venda, valor_total) VALUES
(1, 1, '2025-10-01', 40.90),
(2, 2, '2025-10-02', 14.40),
(3, 3, '2025-10-03', 27.80),
(1, 2, '2025-10-04', 5.30);

INSERT INTO itens_venda (id_venda, id_produto, quantidade, subtotal) VALUES
(1, 1, 1, 22.50),
(1, 2, 2, 17.80),
(2, 3, 3, 10.50),
(2, 4, 1, 3.90),
(3, 5, 2, 10.60),
(3, 3, 2, 7.00),
(4, 5, 1, 5.30);