CREATE TABLE dados_produto(
PRODUTO_ID int IDENTITY (1,1) NOT NULL,
NOME_PRODUTO VARCHAR(50) NOT NULL,
PRECO_PRODUTO INT NOT NULL,
DESCRICAO VARCHAR(60) NULL,
CONSTRAINT PK_PRODUTO PRIMARY KEY (PRODUTO_ID)
)

INSERT INTO dados_produto VALUES 
('TV', 2662, 'FRAGIL'),
('CELULAR', 962, 'FRAGIL'),
('CAMERA', 456, 'FRAGIL'),
('ALMOFADA', 10, 'NAO FRAGIL')

SELECT * FROM dados_produto

--Deleta um dado especifico
DELETE dados_produto WHERE DESCRICAO = 'NAO FRAGIL'

-- Deleta todos os dados de uma tabela
DELETE  dados_produto