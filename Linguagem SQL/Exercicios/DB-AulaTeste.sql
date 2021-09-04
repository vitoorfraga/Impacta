CREATE DATABASE TesteAulaRemota;
GO
USE TesteAulaRemota;
GO
CREATE TABLE Aluno
(
Matricula int not null IDENTITY (500, 1)
, Nome varchar(20)
, CONSTRAINT pkAluno
PRIMARY KEY (Matricula)
);
GO
CREATE TABLE Prova
(
idProva int NOT NULL IDENTITY (1, 1)
, Matricula int NOT NULL
, Nota decimal(4,2) NOT NULL
, CONSTRAINT pkProva PRIMARY KEY (idProva)
, CONSTRAINT fkProva FOREIGN KEY (Matricula)
REFERENCES Aluno(Matricula)
);

INSERT INTO Aluno ( Nome ) values ( 'José' ), ( 'Pedro' ), ( 'Mario' );
GO
INSERT INTO Prova ( Matricula, Nota )
SELECT (SELECT Matricula FROM Aluno WHERE nome = 'José' ), 9
UNION ALL
SELECT (SELECT Matricula FROM Aluno WHERE nome = 'José' ), 8
UNION ALL
SELECT (SELECT Matricula FROM Aluno WHERE nome = 'Mario' ), 7
UNION ALL
SELECT (SELECT Matricula FROM Aluno WHERE nome = 'Mario' ), 3
UNION ALL
SELECT (SELECT Matricula FROM Aluno WHERE nome = 'Mario' ), 1;
GO
SELECT * FROM aluno;
SELECT * FROM Prova;