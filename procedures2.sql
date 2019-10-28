CREATE PROCEDURE SP_FATO_CIDADE
AS

IF EXISTS (SELECT * FROM SYSOBJECTS WHERE name = 'Fato_Cidade')
   BEGIN
         TRUNCATE TABLE Fato_Cidade
   END
ELSE
   BEGIN
      CREATE TABLE Fato_Cidade(FATOCIDID INT IDENTITY (1,1) PRIMARY KEY NOT NULL,
	  NM_CIDADE Varchar(60) NULL, QTD_FUNCIONARIOS INT NULL)
   END

DECLARE @QF INT
DECLARE @CDCOUNT INT
DECLARE @CIDADESNM VARCHAR(60)
SET @CDCOUNT = 1

WHILE @CDCOUNT < 21
   BEGIN
      SELECT @QF=COUNT(*) FROM FUNCIONARIO
      WHERE CIDADEID=@CDCOUNT
      SELECT @CIDADESNM=NM_CIDADE FROM CIDADE
      WHERE CIDADEID=@CDCOUNT
      SET @CDCOUNT = @CDCOUNT + 1
      INSERT INTO Fato_Cidade VALUES (@CIDADESNM, @QF)
   END

SELECT * FROM Fato_Cidade

SELECT * FROM CIDADE

SELECT * FROM FUNCIONARIO

DROP TABLE Fato_Cidade
