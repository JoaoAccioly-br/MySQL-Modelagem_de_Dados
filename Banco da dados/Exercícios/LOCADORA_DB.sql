CREATE DATABASE LOCADORA_DB;
USE LOCADORA_DB;

CREATE TABLE locacoes (
    id_locacao INT AUTO_INCREMENT PRIMARY KEY,
    cliente VARCHAR(100),
    filmes VARCHAR(200),
    genero_filme VARCHAR(100),
    valor_total DECIMAL(10,2)
);
