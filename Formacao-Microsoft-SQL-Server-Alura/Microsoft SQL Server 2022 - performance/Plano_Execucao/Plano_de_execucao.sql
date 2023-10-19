SELECT * INTO NumsLinha FROM Nums;

SELECT * FROM NumsLinha WHERE N = '10001';

--Plano de execução:

--Consulta 1: Custo da consulta (relativo ao lote): 100%

--Índice Ausente (Impacto 99.932): CREATE NONCLUSTERED INDEX [<Name of Missing Index, sysname,>] ON [dbo].[NumsLinha] ([n])

-- 47,6106


--CONHECENDO INDICES

SELECT * FROM tb_cliente WHERE cidade = 'Salvador';

-- 9,66822

--Criação de índice
CREATE NONCLUSTERED INDEX idx_tb_cliente_cidade ON tb_cliente (cidade) 
INCLUDE (cpf, nome, sobrenome, email, telefone, numero, rua, complemento);

--Mensagens:

--Comandos concluídos com êxito

-- 9,66822
-- 0,09184


--INDICE NAO CLUSTERIZADO

drop table T_heap;
CREATE TABLE T_heap (a int NOT NULL, b int NOT NULL, c int NOT NULL, d int NOT NULL, e int NOT NULL, f int NOT NULL);

--Declare até end para executar outro comando.
declare @contador int
declare @max int
SET @contador = 1
SET @max = 50
WHILE @contador <= @max
BEGIN
   insert into T_heap (a,b,c,d,e,f) values ([dbo].[NumeroAleatorio](1,100), [dbo].[NumeroAleatorio](1,100),[dbo].[NumeroAleatorio](1,100),[dbo].[NumeroAleatorio](1,100),[dbo].[NumeroAleatorio](1,100),@contador)
   set @contador = @contador + 1
END

SELECT * FROM T_heap;

SELECT b, c FROM t_heap where b = 68 and c= 55;

CREATE NONCLUSTERED INDEX T_heap_a ON T_heap (a);

SELECT b FROM t_heap WHERE b = 1

SELECT a FROM t_heap WHERE a = 1

CREATE INDEX T_heap_bc ON T_heap (b, c);

SELECT b, c FROM t_heap WHERE b = 1 and c = 1;

SELECT b FROM t_heap WHERE b = 1 and c = 1;

SELECT a FROM t_heap WHERE b = 1 and c = 1;


--Cláusula INCLUDE

CREATE INDEX T_heap_d ON T_heap (d) INCLUDE (e);

SELECT e, d FROM t_heap WHERE d = 1 and e = 1;
SELECT e FROM t_heap WHERE d = 1 and e = 1;