USE alunos_dominic;

SHOW TABLES;

DESCRIBE tbl_Livros;

SELECT IdEditora FROM tbl_Editoras;

SELECT NomeLivro, PrecoLivro, DataPub FROM tbl_Livros WHERE IdEditora = 3; 

SELECT NomeAutor, SobrenomeAutor FROM tbl_Autores WHERE IdAutor = 4;

SELECT IdAssunto FROM tbl_Assuntos WHERE Assunto = 'Informática';

SELECT NomeLivro, IdAssunto, IdEditora FROM tbl_Livros WHERE IdAssunto = 7;

SELECT DataPub FROM tbl_Livros WHERE NomeLivro = 'Using Samba';

SELECT PrecoLivro FROM tbl_Livros WHERE NomeLivro = 'SSH, the Secure Shell';

/*
1 Nomes de livros, preços e datas de publicação, em
ordem cronológica de data de publicação, dos livros
da editora de ID igual a 3
2 Nome e sobrenome do autor cujo ID é igual a 4
3 ID do assunto “Técnico”.
4 Nomes de livros, ID de assunto e editora, do assunto
“Técnico”.
5 A Data de publicação do livro “Using Samba”;
6 O Preço do livro “SSH, o Shell Seguro”;

/*
R: Windows Server 2012 Inside..., 179.51, 2013-01-25
R: William Stanek
R: Não existe "Técnico" na tabela. O assunto equivalente é "Informática", ID 7.
R: Linux Command Line and Sh..., 7, 4
   SSH, the Secure Shell, 7, 2
   Using Samba, 7, 2
   A Arte da Eletrônica, 7, 6
   Windows Server 2012 Inside..., 7, 3
   Murach´s MySQL, 7, 10
R: 2003-12-21
R: 295.41 (gravado como "SSH, the Secure Shell")