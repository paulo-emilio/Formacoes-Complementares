-- Execute o comando para permitir a execução do script
ALTER SESSION SET "_ORACLE_SCRIPT" = true;

-- Crie o usuário cursoplsql
CREATE USER cursoplsql IDENTIFIED BY cursoplsql DEFAULT TABLESPACE USERS;

-- Dê privilégios de acesso ao usuário
GRANT connect, resource TO cursoplsql;

-- Conecte-se ao Oracle SQL Developer usando o usuário cursoplsql que você criou

-- Crie a tabela SEGMERCADO
CREATE TABLE SEGMERCADO
(
  ID NUMBER(5),
  DESCRICAO VARCHAR2(100)
);

-- Crie a tabela CLIENTE
CREATE TABLE CLIENTE
(
  ID NUMBER(5),
  RAZAO_SOCIAL VARCHAR2(100),
  CNPJ VARCHAR2(20),
  SEGMERCADO_ID NUMBER(5),
  DATA_INCLUSAO DATE,
  FATURAMENTO_PREVISTO NUMBER(10,2),
  CATEGORIA VARCHAR2(20)
);

-- Adicione a chave primária à tabela SEGMERCADO
ALTER TABLE SEGMERCADO ADD CONSTRAINT SEGMERCACO_ID_PK
PRIMARY KEY (ID);

-- Adicione a chave primária à tabela CLIENTE
ALTER TABLE CLIENTE ADD CONSTRAINT CLIENTE_ID_PK
PRIMARY KEY (ID);

-- Adicione a chave estrangeira à tabela CLIENTE
ALTER TABLE CLIENTE ADD CONSTRAINT CLIENTE_SEGMERCADO_ID
FOREIGN KEY (SEGMERCADO_ID) REFERENCES SEGMERCADO (ID);
