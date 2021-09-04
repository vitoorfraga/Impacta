CREATE DATABASE DB_CONCE
USE DB_CONCE

CREATE TABLE TB_ANO
(
		IdAno	SMALLINT	IDENTITY	
	,	Ano		SMALLINT	NOT NULL

		CONSTRAINT PK_TB_ANO_IDANO	PRIMARY KEY(IdAno)
)

INSERT TB_ANO
(Ano)
VALUES
(2021), (2021), (2020), (2019), (2018)


CREATE TABLE TB_MES
(
		IdMes	SMALLINT	IDENTITY(15,3)	
	,	Mes		SMALLINT	NOT NULL

		CONSTRAINT PK_TB_MES_IdMes	PRIMARY KEY(IdMes)
)


INSERT TB_MES
(Mes)
VALUES
(01), (02), (03), (04), (05), (06), (07), (08), (09), (10), (11), (12)



CREATE TABLE TB_MODELO
(
		IdModelo	SMALLINT	IDENTITY
	,	Descrição	VARCHAR(50) NOT NULL


		CONSTRAINT PK_TB_MODELO_IdModelo	PRIMARY KEY(IdModelo)
)



INSERT TB_MODELO
(Descrição)
VALUES
('Fusca'), ('Combe'), ('Corolla'), ('Jeep')



CREATE TABLE TB_FABRICANTE
(
		idFabricante	SMALLINT		IDENTITY
	,	Nome			VARCHAR(50)		NOT NULL
	,	Cidade			VARCHAR(50)		NOT NULL
	,	Endereço		VARCHAR(50)		
	,	Telefone		VARCHAR(50)		
	,	Contato			VARCHAR(50)		
	,	UF				CHAR(02)		NOT NULL


		CONSTRAINT PK_TB_FABRICANTE_IdFabricante	PRIMARY KEY(Idfabricante)

)

INSERT TB_FABRICANTE
(Nome, Cidade, Endereço, Telefone, Contato, UF)
VALUES
		('Fiat', 'São Paulo', 'Rua 2', '119704351', 'nome@gmail.com', 'SP')
	,	('Jeep', 'Rio de Janeiro', 'Rua 1', '119745451', 'JOGOgmail.com', 'RJ')
	,	('Mercedez', 'Butatã', 'Rua 3', '119453453451', 'fred@gmail.com', 'BH')
	,	('Hyundai', 'dkjgmkdgm', 'Rua 4', '11452452451', 'sim@gmail.com', 'BA')

CREATE TABLE TB_VEICULO
(
		IdVeiculo		SMALLINT		IDENTITY
	,	Descrição		VARCHAR(50)		NOT NULL
	,	Valor			MONEY			NOT NULL
	,	idModelo		SMALLINT		
	,	IdFabricante	SMALLINT		
	,	IdAnoFabricação	SMALLINT		
	,	DataCompra		DATE			NOT NULL

		CONSTRAINT PK_TB_VEICULO_IdVeiculo	PRIMARY KEY(IdVeiculo)
	,	CONSTRAINT FK_TB_VEICULO_IdFabricante FOREIGN KEY(IdFabricante) REFERENCES TB_FABRICANTE(idfabricantE)
	,	CONSTRAINT FK_TB_VEICULO_IdAnoFabricação FOREIGN KEY(IdAnoFabricação) REFERENCES TB_ANO(IdAno)
	,	CONSTRAINT FK_TB_VEICULO_IdModelo FOREIGN KEY(IdModelo) REFERENCES TB_MODELO(IdModelo)
)

--DROP TABLE TB_VEICULO

INSERT TB_VEICULO
(Descrição, Valor, IdModelo, IdFabricante, IdAnoFabricação, DataCompra)
VALUES
('Compass', 77999.60, 4, 2,3, '07-11-21'), 
('Toro', 77999.60, 1, 1,5, '25-01-00')


SELECT * FROM TB_VEICULO

CREATE TABLE TB_VENDAS
(
		IdVenda		INT			IDENTITY
	,	Qtd			SMALLINT	NOT NULL	
	,	idVeiculo	SMALLINT		
	,	IdAnoVenda	SMALLINT	
	,	IdMesVenda	SMALLINT	

		CONSTRAINT PK_TB_VENDAS_IdVendas	PRIMARY KEY(IdVenda)
	,	CONSTRAINT FK_TB_VENDAS_IdVeiculo	FOREIGN KEY (IdVeiculo) REFERENCES TB_VEICULO(IdVeiculo)
	,	CONSTRAINT FK_TB_VENDAS_IdAnoVenda	FOREIGN KEY (IdAnoVenda) REFERENCES TB_ANO(IdAno)
	,	CONSTRAINT FK_TB_VENDAS_IdMesVenda	FOREIGN KEY (IdMesVenda) REFERENCES TB_MES(IdMes)
)


INSERT TB_VENDAS
(Qtd, idVeiculo, IdAnoVenda, IdMesVenda)
VALUES
	(3000, 2, NULL, NULL)
,	(6000, 1, 5, 30)


SELECT * FROM TB_MES
SELECT * FROM TB_ANO
--SELECT * FROM TB_MODELO
--SELECT * FROM TB_FABRICANTE
SELECT * FROM TB_VEICULO
SELECT * FROM TB_VENDAS
