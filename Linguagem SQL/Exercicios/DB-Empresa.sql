-- Exercícios: 
--a. Criar Banco de Dados de Empresa
--b. Colocar Banco de Dados em Uso
--c. Criar Tabelas de:
--1. Funcionário (CPF, Nome, Salário, Data de Nascimento)
--2. Dependentes (CPF, CPF do Responsável, Nome, Data de Nascimento)
--d. Inserir Registros em ambas
-- Obs.: Utilize a maior variedade de Tipos de Dados possível.

--a. Criar Banco de Dados de Notas Fiscais
--b. Colocar Banco de Dados em Uso
--c. Criar Tabelas de:
--1. Pedidos (ID do Pedido, ID do Item, Valor Total, Descrição, Data do Pedido)
--2. Itens do Pedido (ID do Item, Descrição, Valor Unitário, Quantidade)
--d. Inserir Registros em ambas
-- Obs.: Utilize a maior variedade de Tipos de Dados possível.

CREATE DATABASE DB_Empresa

USE DB_Empresa


DROP DATABASE DB_Empresa

CREATE TABLE Tb_Func
(
	Id_Funcionario	INT IDENTITY,
	CPF		BIGINT	,
	NOME	VARCHAR(50),
	SALARIO	MONEY,
	DATA_NASC	DATE

	CONSTRAINT PK_Tb_Func_CPF PRIMARY KEY (CPF)
)

INSERT Tb_Func
(CPF, NOME, SALARIO, DATA_NASC)
VALUES
	(101, 'Ana', 10000.50, '1980-01-01'),
	(102, 'Bia', 15000.50, '1980-01-01'),
	(103, 'Dai', 20000.99, '1980-01-01')


CREATE TABLE Dependentes
(
	Id_Dependente	INT IDENTITY,
	CPF		BIGINT	NOT NULL,
	CPF_Responsavel	BIGINT	NOT NULL,
	Nome		VARCHAR(50)	NOT NULL,
	Data_Nascimento		DATE

	CONSTRAINT PK_Dependentes_CPF PRIMARY KEY (CPF),
	CONSTRAINT FK_Dependentes_CPF_Responsavel FOREIGN KEY (CPF_Responsavel) REFERENCES Tb_Func(CPF)

)

INSERT Dependentes
(CPF, CPF_Responsavel, Nome, Data_Nascimento)

VALUES
	(40539964816, 101, 'Vitor Fraga', '2000-11-07')	,
	(26943002864, 101 , 'Cosmo Pereira', '2000-11-07'),
	(98765431451, 102, 'Vitoria', '2000-11-07'),
	(98765151, 102, 'Vitoria', '2000-11-07')


CREATE TABLE TB_CLIENTE
	(
			ID_Cliente		INT		IDENTITY
		,	CNPJ			BIGINT	NOT NULL
		,	Nome			VARCHAR(50)		NOT NULL
		
			CONSTRAINT		PK_Clientes_CNPJ		PRIMARY KEY (ID_Cliente),

	)

INSERT TB_CLIENTE
(CNPJ, NOME)

VALUES
(9001, 'Fusca'),
(9002, 'Trem'),
(9003, 'Trator')


SELECT * FROM TB_CLIENTE

CREATE TABLE TB_TELEFONE
	(
			DDD				CHAR(02)	NOT NULL
		,	Telefone		INT			NOT NULL
		,	Nome			VARCHAR(50)		NOT NULL
		,	ID_Cliente		INT			NOT NULL

			CONSTRAINT		PK_Telefones_Telefone	PRIMARY KEY(Telefone)
		,	CONSTRAINT		FK_Telefones_ID_Cliente	FOREIGN KEY (ID_Cliente)	REFERENCES TB_CLIENTE(ID_Cliente)
	)


INSERT TB_TELEFONE
(DDD, Telefone, Nome, ID_Cliente)

VALUES
('11', 970435347, 'Fusca',2)


-- EXERCICIO 2

CREATE TABLE TB_EMPREGADOS
(
		ID_FUNCIONARIO		INT				IDENTITY
	,	NOME				VARCHAR(50)		NOT NULL
	,	SALARIO				MONEY			NOT NULL
	,	COD_DEPARTAMENTO	INT				NOT NULL

		CONSTRAINT PK_TB_EMPREGADOS_ID_FUNCIONARIO	PRIMARY KEY(ID_FUNCIONARIO)
	,	CONSTRAINT FK_TB_EMPREGADOS_COD FOREIGN KEY(COD_DEPARTAMENTO)	REFERENCES TB_DEPARTAMENTO(COD_DEPARTAMENTO)
)

CREATE TABLE TB_DEPARTAMENTO
(
		COD_DEPARTAMENTO	INT				NOT NULL
	,	DESCRICAO			VARCHAR(50)		NOT NULL
	,	SALARIO_INIC		MONEY			NOT NULL

		CONSTRAINT	PK_TB_DEPARTAMENTO_COD_DEPARTAMENTO PRIMARY KEY(COD_DEPARTAMENTO)
)


SELECT * FROM Dependentes
DROP TABLE Clientes