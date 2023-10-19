--CRIANDO INDICES PADROES

DECLARE @ESTE_MES INT DECLARE @ESTADP VARCHAR(2)
SET @ESTE_MES = 3
SET @ESTADO = 'RJ'
SELECT VENDAS.classificacao AS CLASSIFICACAO,
       ROUND(VENDAS.VALOR_MES, 2) AS VALOR,
             ROUND(VENDAS.VALOR_MES/ TOTAL.VALOR_TOTAL) * 100, 2) AS PERCENTUAL

// código omitido 


--Consulta 1: Custo da consulta (relativo ao lote: 100%
--SELECT VENDAS.classificacao AS CLASSIFICACAO, ROUND(VENDAS.VALOR_MES, 2) AS VALOR, ROUND(VENDAS.VALOR_MES/ TOTAL.VALOR_TOTAL) * 
--Índice Ausente (Impacto 46.4102): CREATE NONCLUSTERED INDEX [<Name of Missing Index, sysname,>] ON [dbo].[tb_item] ([codigo_prod...

CREATE NONCLUSTERED INDEX idx_tb_item_codigo_produto ON tb_item (codigo_produto)
INCLUDE (numero, quantidade, preco);


USE DB_VENDAS
ALTER DATABASE DB_VENDAS SET RECOVERY SIMPLE
DBBC SHRINKDATABASE ('DB_VENDAS', NOTRUNCATE)
DBCC SHRINKDATABASE ('DB_VENDAS', TRUNCATEONLY)
ALTER DA DATABASE DB_VENDAS SET RECOVERY FULL

--Verificaremos o tempo e o custo da consulta.

DECLARE @ESTE_MES INT DECLARE @ESTADP VARCHAR(2)
SET @ESTE_MES = 4
SET @ESTADO = 'MG'
SELECT VENDAS.classificacao AS CLASSIFICACAO,
       ROUND(VENDAS.VALOR_MES, 2) AS VALOR,
             ROUND(VENDAS.VALOR_MES/ TOTAL.VALOR_TOTAL) * 100, 2) AS PERCENTUAL
     AND MONTH(tb_nota.data) * @ESTE_MES
       AND tb_estado.sigla_estado * @ESTADO
   GROUP BY tb_classificacao.classificacao) VENDAS
ORDER BY (VENDAS.VALOR_MES/TOTAL.VALOR_TOTAL) * 100 DESC

-- 17 segundos (512,844)

CREATE NONCLUSTERED INDEX idx_tb_item_codigo_produto ON tb_item (codigo_produto)
INCLUDE (numero, quantidade, preco);

-- 6 segundos
