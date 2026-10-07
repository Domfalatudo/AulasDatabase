#criar banco de dados
CREATE DATABASE alunos_21b_2026;

#selecionar/usar banco de dados
USE alunos_21b_2026;

#criar tabela
CREATE TABLE cliente(
    id_cliente VARCHAR(20) PRIMARY KEY,
    nome VARCHAR(100),
    endereco VARCHAR(100),
    email VARCHAR(50),
    telefone VARCHAR(20),
    nascimento DATE
);



#Exercicio "Animais"
CREATE TABLE animais(
    id_animal VARCHAR(50) PRIMARY KEY,
    idade INT,
    especie VARCHAR(50),
    status_animal VARCHAR(50),
    peso DECIMAL(6,3)
);

#Deletar Tabela
DROP TABLE animais;

#Ver/descrever tabela
DESCRIBE animais;
#Exercicio TABELA PESSOA FAZER CORRECAO

#Ver dados na tabela
SELECT * FROM animais;
DESCRIBE animais;

ALTER TABLE animais
ADD pelagem VARCHAR(200);

#Exercicios 
#Adicione uma nova columa na tabela
USE 21b_2026;

INSERT INTO animais (id_animal, idade, especie, status_animal, peso, pelagem)
VALUES               (1,          3,     "gato", "Saudável", 11.00, "Curto");



INSERT INTO animais(id_animal, especie)
VALUES (2, "Cachorro");


DESCRIBE animais;

SELECT * FROM animais;


#Chave estrangeira
#Usar sua database
USE 21b_2026;

#Loja de produtos naturais
CREATE TABLE erva(
    id_erva INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE comprador(
    id_comprador INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE compra(
    id_erva INT,
    id_comprador INT,
    FOREIGN KEY (id_erva) REFERENCES erva(id_erva),
    FOREIGN KEY (id_comprador) REFERENCES comprador(id_comprador)
);

#Falta testar inserts
INSERT INTO erva(id_erva, nome)
VALUES (1, "mate");
INSERT INTO erva(id_erva, nome)
VALUES (2, "cidreira");

INSERT INTO comprador(id_comprador, nome)
VALUES (1, "João");
INSERT INTO comprador(id_comprador, nome)
VALUES (2, "Ana");

#Ver dados cadastrados
SELECT * FROM erva;
#
#Exercícios cadastrando uma compra
#João comprou mate

USE alunos_21b_2026;
CREATE TABLE cliente(
    id_pessoa INT PRIMARY KEY,
    nome VARCHAR(50),
    email VARCHAR(50)
);

INSERT INTO cliente (id_pessoa, nome,email)
VALUES (1, "Ana Silva", "ana@email.com"),
(2, "Joao Santos", "joao@email.com"),
(3, "Maria Oliveira", "maria@email.com"),
(4, "Pedro Costa", "pedro@email"),
(5, "Carla Lima", "carla@email.com");

-- ver dados na tabela
SELECT * FROM cliente;

# Ver tabelas criadas.
SHOW TABLES;

# Acessando tabela "Livros"
SELECT * FROM livros;