-- 21:43 -- 23/06/2022 --
--Crie um banco de dados chamado Aula1 --


----------------- criando tabela funcionarios -------------------

CREATE DATABASE aula1;
USE aula1;

CREATE TABLE tipo_logradouros(
id_tipo_logradouro int not null Primary Key identity,
nome varchar(60) not null
);

CREATE TABLE estados(
id_estado char(2) not null primary key,
nome varchar(60) not null
);

CREATE TABLE cidades(
id_cidade int not null Primary Key identity,
nome varchar(60) not null,
id_estado char(2) not null foreign key REFERENCES estados(id_estado
));

CREATE TABLE bairros(
id_bairro int not null Primary Key identity,
nome varchar(60) not null,
id_cidade int
);

CREATE TABLE logradouros(
id_logradouro int not null Primary Key identity,
cep char(9) not null,
id_tipo_logradouro int not null foreign key REFERENCES tipo_logradouros(id_tipo_logradouro),
id_bairro int not null foreign key REFERENCES bairros(id_bairro),
nome varchar(60) not null
);

CREATE TABLE cargos(
id_cargos int not null Primary Key identity,
cargo varchar(10) not null,
salario_base int not null,
salario_teto int
);

CREATE TABLE funcionarios(
CPF char(14) not null Primary Key,
nome varchar(60) not null,
id_logradouro int not null,
data_nascimento varchar(15) not null,
cargo int not null,
salario int not null

);



