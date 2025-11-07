CREATE DATABASE HOSPITAL_DB;
USE HOSPITAL_DB;

CREATE TABLE consultas (
    id_consulta INT AUTO_INCREMENT PRIMARY KEY,
    paciente VARCHAR(100),
    telefone_paciente VARCHAR(50),
    medico VARCHAR(100),
    especialidade VARCHAR(100),
    remedios_prescritos VARCHAR(200)
);
