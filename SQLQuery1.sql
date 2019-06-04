CREATE TABLE PRODUTO 
(ID_PRODUTO INT IDENTITY (1,1) NOT NULL,
NOME_PRODUTO VARCHAR(60) NOT NULL,
PRECO_PRODUTO INT NOT NULL,
DESCRICAO VARCHAR (60) NULL,
CONSTRAINT PK_PRODUTO PRIMARY KEY (ID_PRODUTO)
)


INSERT INTO PRODUTO VALUES
('CELULAR', 1200, 'FRAGIL'),
('TELEVISAO', 3250, 'FRAGIL'),
('FERRO', 685, 'FRAGIL'),
('GELADEIRA', 850, 'FRAGIL')

SELECT * FROM PRODUTO

DELETE PRODUTO 

CREATE TABLE CLIENTE
(
ID_CLIENTE INT IDENTITY (1,1) NOT NULL,
NOME_CLIENTE VARCHAR (60) NOT NULL,
CONSTRAINT PK_CLIENTE PRIMARY KEY (ID_CLIENTE)
)

INSERT INTO CLIENTE VALUES 
('BRUNO'),
('ANA'),
('LETICIA'),
('GEOVANNA')

SELECT * FROM CLIENTE

SELECT * FROM PRODUTO P INNER JOIN CLIENTE C
ON P.ID_PRODUTO = C.ID_CLIENTE