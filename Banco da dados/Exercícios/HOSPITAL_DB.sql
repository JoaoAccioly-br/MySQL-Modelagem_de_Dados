CREATE DATABASE HOSPITAL_DB;
USE HOSPITAL_DB;

-- CREATE TABLE consultas (
--     id_consulta INT AUTO_INCREMENT PRIMARY KEY,
--     paciente VARCHAR(100),
--     telefone_paciente VARCHAR(50),
--     medico VARCHAR(100),
--     especialidade VARCHAR(100),
--     remedios_prescritos VARCHAR(200)
-- );

create table pacientes(
    id_paciente         int primary key auto_increment,
    paciente            varchar(100) not null,
    telefone_paciente   varchar(50) not null
)

create table medicos(
    id_medico           int primary key auto_increment,
    medico              varchar(100) not null,
    especialidade       varchar(100) not null
)

create table consultas(
    id_consulta         int primary key auto_increment,
    id_paciente         int,
    id_medico           int,
    foreign key (id_paciente) references pacientes(id_paciente),
    foreign key (id_medico) references medicos(id_medico)
)

create table remedios(
    id_remedio          int primary key auto_increment,
    id_consulta         int,
    remedio_prescrito   varchar(200) not null,
    foreign key (id_consulta) references consultas(id_consulta)
)