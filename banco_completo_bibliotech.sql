
-- Adicione essas tabelas ao seu Banco de Dados
USE alunos_dominic;
CREATE TABLE IF NOT EXISTS autores (
  id SMALLINT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL,
  sobrenome VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS editoras (
  id SMALLINT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS assuntos (
  id TINYINT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(25) NOT NULL
);

CREATE TABLE IF NOT EXISTS livros (
  id SMALLINT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(70) NOT NULL,
  isbn13 VARCHAR(13) NOT NULL,
  data_pub DATE,
  preco DECIMAL(10,2) NOT NULL,
  paginas SMALLINT NOT NULL,
  editora_id SMALLINT NOT NULL,
  assunto_id TINYINT NOT NULL,
  FOREIGN KEY (editora_id) REFERENCES editoras(id) ON DELETE CASCADE,
  FOREIGN KEY (assunto_id) REFERENCES assuntos(id) ON DELETE CASCADE
);

ALTER TABLE livros AUTO_INCREMENT = 100;

CREATE TABLE IF NOT EXISTS livros_autores (
  livro_id SMALLINT NOT NULL,
  autor_id SMALLINT NOT NULL,
  PRIMARY KEY (livro_id, autor_id),
  FOREIGN KEY (livro_id) REFERENCES livros(id),
  FOREIGN KEY (autor_id) REFERENCES autores(id)
);

INSERT INTO autores (nome, sobrenome) VALUES
('Daniel','Barret'),('Gerald','Carter'),('Mark','Sobell'),
('William','Stanek'),('Richard','Blum'),('Christine','Bresnahan'),
('Richard','Silverman'),('Robert','Byrnes'),('Jay','Ts'),
('Robert','Eckstein'),('Paul','Horowitz'),('Winfield','Hill'),
('Joel','Murach'),('Paul','Scherz'),('Simon','Monk');

INSERT INTO editoras (nome) VALUES
('Prentice Hall'),('O''Reilly'),('Microsoft Press'),('Wiley'),
('Mc Graw Hill'),('Bookman'),('Novatec'),('Apress'),
('Sybex'),('Mike Murach and Associates');

INSERT INTO assuntos (nome) VALUES
('Ficção'),('Botânica'),('Eletrônica'),('Matemática'),
('Aventura'),('Literatura'),('Informática'),('Suspense');

INSERT INTO livros (nome, isbn13, data_pub, preco, paginas, assunto_id, editora_id) VALUES
('Linux Command Line and Shell Scripting','9781118983843','2015-01-09',165.55,816,7,4),
('SSH, the Secure Shell','9780596008956','2005-05-17',295.41,672,7,2),
('Using Samba','9780596002565','2003-12-21',158.76,449,7,2),
('A Arte da Eletrônica','9788582604342','2017-03-08',176.71,1160,7,6),
('Windows Server 2012 Inside Out','9780735666313','2013-01-25',179.51,1584,7,3),
('Murach''s MySQL','9781943872367','2019-05-01',227.64,650,7,10),
('Practical Electronics for Inventors','9781259587542','2016-07-11',119.58,1056,3,5);

INSERT INTO livros_autores (livro_id, autor_id) VALUES
(100,5),(100,6),
(101,1),(101,7),(101,8),
(102,2),(102,9),(102,10),
(103,11),(103,12),
(104,4),
(105,13),
(106,14),(106,15);

-- ##teste
SELECT preco FROM livros;
