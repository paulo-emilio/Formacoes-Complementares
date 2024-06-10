-- Criar usuários
alter session set "_oracle_script"=true;

CREATE USER user_dev IDENTIFIED BY user_dev
DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE TEMP;

GRANT connect, resource TO user_dev;
GRANT create public synonym TO user_dev;
GRANT create view TO user_dev;
GRANT EXECUTE ANY PROCEDURE TO user_dev;
GRANT CREATE ANY DIRECTORY TO user_dev;

CREATE USER user_app IDENTIFIED BY user_app
DEFAULT TABLESPACE USERS TEMPORARY TABLESPACE TEMP;

GRANT connect, resource TO user_app;

ALTER USER user_dev QUOTA UNLIMITED ON USERS;
ALTER USER user_app QUOTA UNLIMITED ON USERS;

-- Criar conexões
-- ... (passos 7 a 11)

-- Conectar ao user_dev e executar script 02_Criar_Tabelas.sql
-- ...

-- Incluir dados nas tabelas
-- ...

-- Criar funções e procedimentos
-- ...

-- Conceder permissões ao user_app
GRANT EXECUTE ON ATUALIZAR_CLI_SEG_MERCADO TO user_app;
GRANT EXECUTE ON ATUALIZAR_FATURAMENTO_PREVISTO TO user_app;
GRANT EXECUTE ON EXCLUIR_CLIENTE TO user_app;
GRANT EXECUTE ON INCLUIR_CLIENTE TO user_app;

-- Incluir registro como user_dev
INSERT INTO CLIENTE (ID, RAZAO_SOCIAL, CNPJ, SEGMERCADO_ID, DATA_INCLUSAO, FATURAMENTO_PREVISTO, CATEGORIA)
VALUES (5, 'PADARIA XYZW', '22/222', 1, TO_DATE('15/01/2022','DD/MM/YYYY'), 80000, 'MEDIO GRANDE');

-- Verificar inclusão
-- ...

-- Desfazer inclusão
ROLLBACK;

-- Incluir registro como user_app
-- ...

-- Tentar inserir usando SELECT na tabela (será negado)
-- ...

-- Conceder acesso de seleção a user_app
GRANT SELECT ON CLIENTE TO user_app;
