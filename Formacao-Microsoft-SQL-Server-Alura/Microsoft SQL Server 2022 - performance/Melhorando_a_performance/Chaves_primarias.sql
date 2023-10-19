--Index Seek (NonClustered)
--[tb_itew].[idx th_item_numero]
--Custo: 8 %
--0.043s [
--485400 de
--263324 (184%)

ALTER TABLE tb_classificacao ADD CONSTRAINT pk_tb_classificacao PRIMARY KEY (codigo_classificaco);
ALTER TABLE tb_cliente ADD CONSTRAINT pk_tb_cliente PRIMARY KEY (cpf);
ALTER TABLE tb_estado ADD CONSTRAINT pk_tb_estado PRIMARY KEY (sigla estado);
ALTER TABLE tb_loja ADD CONSTRAINT pk_tb_loja PRIMARY KEY (codigo_loja);
ALTER TABLE tb_produto ADD CONSTRAINT pk_tb_produto PRIMARY KEY (codige_produto);

ALTER TABLE tb_nota ADD CONSTRAINT pk_tb_nota PRIMARY KEY (numero);
ALTER TABLE tb_item ADD CONSTRAINT pk_tb_item PRIMARY KEY (numero, codigo_produto);

-- 1 segundo


--Clustered Index Scan (Clustered)
--   [tb_cidade].[pk_tb_cidade]
--            Custo: 0 %
--                      0.00s
--                      33 de
--                        5 (660%)


--Busca de Indice Clusterizado (Clust...
--     [tb_estado].[pk_tb_estado]
--                Custo: 0 %
--                          0.000s
--                           1 de
--                        1 (100%)


-- 1 segundo (74,21)
-- 17 segundos (512,844)
