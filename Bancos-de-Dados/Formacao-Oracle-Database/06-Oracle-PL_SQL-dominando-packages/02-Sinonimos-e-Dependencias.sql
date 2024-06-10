-- 2) Use a conexão user_dev para criar os sinônimos das procedures e a tabela CLIENTE:

CREATE PUBLIC SYNONYM INCLUIR_CLIENTE FOR USER_DEV.INCLUIR_CLIENTE;
CREATE PUBLIC SYNONYM ATUALIZAR_CLI_SEG_MERCADO FOR USER_DEV.ATUALIZAR_CLI_SEG_MERCADO;
CREATE PUBLIC SYNONYM ATUALIZAR_FATURAMENTO_PREVISTO FOR USER_DEV.ATUALIZAR_FATURAMENTO_PREVISTO;
CREATE PUBLIC SYNONYM EXCLUIR_CLIENTE FOR USER_DEV.EXCLUIR_CLIENTE;
CREATE PUBLIC SYNONYM CLIENTE FOR USER_DEV.CLIENTE;

-- 3) Mostre a tabela CLIENTE, usando o sinônimo:

SELECT * FROM CLIENTE;

-- 4) Crie uma nova janela de script usando o usuário user_app.

-- 5) Crie a procedure APP_INCLUIR_CLIENTE:

CREATE OR REPLACE PROCEDURE APP_INCLUIR_CLIENTE
(p_ID IN cliente.id%type, 
p_RAZAO IN cliente.razao_social%type,
p_CNPJ IN cliente.cnpj%type,
p_SEGMERCADO in cliente.segmercado_id%type,
p_FATURAMENTO IN cliente.faturamento_previsto%type)
IS
BEGIN
  INCLUIR_CLIENTE(p_ID, p_RAZAO, p_CNPJ, p_SEGMERCADO, p_FATURAMENTO);
END;

-- 6) Compile a procedure e verifique sua criação.

-- 7) Execute a procedure APP_INCLUIR_CLIENTE:

EXECUTE APP_INCLUIR_CLIENTE (6, 'SEGUNDO CLIENTE INCLUIDO POR USER_APP', '23456', 2, 100000);

-- 8) Mostre o resultado, usando o sinônimo da tabela:

SELECT * FROM CLIENTE;

-- 9) Caso você ainda não tenha feito, faça o download do script utldtree.sql e copie o seu conteúdo.

-- 10) Abra uma nova janela de script com o usuário user_dev e cole o conteúdo do script baixado:

-- [Conteúdo do script utldtree.sql]

-- 11) Execute o script. Podem acontecer erros.

-- 12) Verifique se os componentes foram criados.

-- 13) Foram criados tabelas, views e procedures.

-- 14) Crie mais um script associado ao user_dev.

-- 15) Rode o comando:

SELECT * FROM DEPTREE_TEMPTAB;

-- 16) Execute o comando:

EXECUTE DEPTREE_FILL('table','user_dev','CLIENTE');

-- 17) Rode a consulta:

SELECT NESTED_LEVEL, SCHEMA, TYPE, NAME, SEQ# FROM DEPTREE ORDER BY SEQ#;

-- 18) Rode o comando:

EXECUTE DEPTREE_FILL('procedure','user_dev','INCLUIR_CLIENTE');

-- 19) Para conferir o resultado das interdependências, use o comando:

SELECT NESTED_LEVEL, SCHEMA, TYPE, NAME, SEQ# FROM DEPTREE ORDER BY SEQ#;

-- 20) Acompanhe as explicações.

-- 21) Para rodar as dependências baseadas em uma procedure, execute o comando:

EXECUTE DEPTREE_FILL('procedure','user_dev','INCLUIR_CLIENTE');
