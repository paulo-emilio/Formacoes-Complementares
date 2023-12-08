-- 1) Você pode tratar um erro com uma mensagem amigável, modificando a procedure conforme os comandos abaixo:

CREATE OR REPLACE PROCEDURE incluir_cliente
(
   p_ID CLIENTE.ID%type,
   p_RAZAO CLIENTE.RAZAO_SOCIAL%type,
   p_CNPJ CLIENTE.CNPJ%type,
   p_SEGMERCADO CLIENTE.SEGMERCADO_ID%type,
   p_FATURAMENTO CLIENTE.FATURAMENTO_PREVISTO%type
)
IS
   v_CATEGORIA CLIENTE.CATEGORIA%type;
   v_CNPJ CLIENTE.CNPJ%type;
BEGIN
   v_CATEGORIA := categoria_cliente(p_FATURAMENTO);
   FORMATA_CNPJ(p_CNPJ, v_CNPJ);

   INSERT INTO CLIENTE
   VALUES 
   (p_ID, p_RAZAO, v_CNPJ, p_SEGMERCADO, SYSDATE, p_FATURAMENTO, v_CATEGORIA);
   COMMIT;

EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      dbms_output.put_line('******************************************');
      dbms_output.put_line('*************** CLIENTE JÁ CADASTRADO !!!!');
      dbms_output.put_line('******************************************'); 
END;

-- 2) Mas se você ajustar a procedure como abaixo, o erro virá pela interface nativa Oracle, com um número customizado por você:

CREATE OR REPLACE PROCEDURE incluir_cliente
(
   p_ID CLIENTE.ID%type,
   p_RAZAO CLIENTE.RAZAO_SOCIAL%type,
   p_CNPJ CLIENTE.CNPJ%type,
   p_SEGMERCADO CLIENTE.SEGMERCADO_ID%type,
   p_FATURAMENTO CLIENTE.FATURAMENTO_PREVISTO%type
)
IS
   v_CATEGORIA CLIENTE.CATEGORIA%type;
   v_CNPJ CLIENTE.CNPJ%type;
BEGIN
   v_CATEGORIA := categoria_cliente(p_FATURAMENTO);
   FORMATA_CNPJ(p_CNPJ, v_CNPJ);

   INSERT INTO CLIENTE
   VALUES 
   (p_ID, p_RAZAO, v_CNPJ, p_SEGMERCADO, SYSDATE, p_FATURAMENTO, v_CATEGORIA);
   COMMIT;

EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      raise_application_error(-20010,'CLIENTE JÁ CADASTRADO !!!!');
END;

-- 3) Nem sempre todos os erros Oracle estão mapeados nas exceções nominadas. 
-- Mas você pode associar um erro Oracle usando seu número interno e direcioná-lo para um texto customizado:

CREATE OR REPLACE PROCEDURE incluir_cliente
(
   p_ID CLIENTE.ID%type,
   p_RAZAO CLIENTE.RAZAO_SOCIAL%type,
   p_CNPJ CLIENTE.CNPJ%type,
   p_SEGMERCADO CLIENTE.SEGMERCADO_ID%type,
   p_FATURAMENTO CLIENTE.FATURAMENTO_PREVISTO%type
)
IS
   v_CATEGORIA CLIENTE.CATEGORIA%type;
   v_CNPJ CLIENTE.CNPJ%type;
   e_IDNULO exception;
   pragma exception_init(e_IDNULO,-1400);
BEGIN
   v_CATEGORIA := categoria_cliente(p_FATURAMENTO);
   FORMATA_CNPJ(p_CNPJ, v_CNPJ);

   INSERT INTO CLIENTE
   VALUES 
   (p_ID, p_RAZAO, v_CNPJ, p_SEGMERCADO, SYSDATE, p_FATURAMENTO, v_CATEGORIA);
   COMMIT;

EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      raise_application_error(-20010,'CLIENTE JÁ CADASTRADO !!!!');
   WHEN e_IDNULO THEN
      raise_application_error(-20015,'IDENTIFICADOR DO CLIENTE NULO !!!!');
END;

-- 4) É possível gerenciar o CURSOR usando a estrutura de repetição WHILE ... LOOP:

CREATE OR REPLACE PROCEDURE incluir_cliente
(
   p_ID CLIENTE.ID%type,
   p_RAZAO CLIENTE.RAZAO_SOCIAL%type,
   p_CNPJ CLIENTE.CNPJ%type,
   p_SEGMERCADO CLIENTE.SEGMERCADO_ID%type,
   p_FATURAMENTO CLIENTE.FATURAMENTO_PREVISTO%type
)
IS
   v_CATEGORIA CLIENTE.CATEGORIA%type;
   v_CNPJ CLIENTE.CNPJ%type;
   e_IDNULO exception;
   pragma exception_init(e_IDNULO,-1400);
   e_ERRO_NAO_ESPERADO exception;
BEGIN
   v_CATEGORIA := categoria_cliente(p_FATURAMENTO);
   FORMATA_CNPJ(p_CNPJ, v_CNPJ);

   INSERT INTO CLIENTE
   VALUES 
   (p_ID, p_RAZAO, v_CNPJ, p_SEGMERCADO, SYSDATE, p_FATURAMENTO, v_CATEGORIA);
   COMMIT;

EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      raise_application_error(-20010,'CLIENTE JÁ CADASTRADO !!!!');
   WHEN e_IDNULO THEN
      raise_application_error(-20015,'IDENTIFICADOR DO CLIENTE NULO !!!!');
   WHEN others THEN
      raise_application_error(-20020,'ERRO NÃO ESPERADO !!!!');
END;

-- 5) Ou então você pode usar o FOR, onde muitos comandos de atualização do gerenciamento do CURSOR, dentro do programa PL/SQL, são automaticamente declaradas:

CREATE OR REPLACE PROCEDURE incluir_cliente
(
   p_ID CLIENTE.ID%type,
   p_RAZAO CLIENTE.RAZAO_SOCIAL%type,
   p_CNPJ CLIENTE.CNPJ%type,
   p_SEGMERCADO CLIENTE.SEGMERCADO_ID%type,
   p_FATURAMENTO CLIENTE.FATURAMENTO_PREVISTO%type
)
IS
   v_CATEGORIA CLIENTE.CATEGORIA%type;
   v_CNPJ CLIENTE.CNPJ%type;
   e_IDNULO exception;
   pragma exception_init(e_IDNULO,-1400);
BEGIN
   v_CATEGORIA := categoria_cliente(p_FATURAMENTO);
   FORMATA_CNPJ(p_CNPJ, v_CNPJ);

   INSERT INTO CLIENTE
   VALUES 
   (p_ID, p_RAZAO, v_CNPJ, p_SEGMERCADO, SYSDATE, p_FATURAMENTO, v_CATEGORIA);
   COMMIT;

EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      raise_application_error(-20010,'CLIENTE JÁ CADASTRADO !!!!');
   WHEN e_IDNULO THEN
      raise_application_error(-20015,'IDENTIFICADOR DO CLIENTE NULO !!!!');
   WHEN others THEN
      raise_application_error(-20020,'ERRO NÃO ESPERADO !!!!');
END;

-- 6) Muitas vezes, um erro cometido pelo usuário não é considerado um erro para o Oracle. 
-- Estes erros de negócio também podem ser customizados:

CREATE OR REPLACE PROCEDURE incluir_cliente
(
   p_ID CLIENTE.ID%type,
   p_RAZAO CLIENTE.RAZAO_SOCIAL%type,
   p_CNPJ CLIENTE.CNPJ%type,
   p_SEGMERCADO CLIENTE.SEGMERCADO_ID%type,
   p_FATURAMENTO CLIENTE.FATURAMENTO_PREVISTO%type
)
IS
   v_CATEGORIA CLIENTE.CATEGORIA%type;
   v_CNPJ CLIENTE.CNPJ%type;
   e_IDNULO exception;
   pragma exception_init(e_IDNULO,-1400);
   e_FATURAMENTO_NULO exception;
BEGIN
   IF p_FATURAMENTO IS NULL THEN
      RAISE e_FATURAMENTO_NULO;
   END IF;

   v_CATEGORIA := categoria_cliente(p_FATURAMENTO);
   FORMATA_CNPJ(p_CNPJ, v_CNPJ);

   INSERT INTO CLIENTE
   VALUES 
   (p_ID, p_RAZAO, v_CNPJ, p_SEGMERCADO, SYSDATE, p_FATURAMENTO, v_CATEGORIA);
   COMMIT;

EXCEPTION
   WHEN DUP_VAL_ON_INDEX THEN
      raise_application_error(-20010,'CLIENTE JÁ CADASTRADO !!!!');
   WHEN e_IDNULO THEN
      raise_application_error(-20015,'IDENTIFICADOR DO CLIENTE NULO !!!!');
   WHEN e_FATURAMENTO_NULO THEN
      raise_application_error(-20025,'FATURAMENTO FOI INCLUIDO COM VALOR NULO !!!!');
   WHEN others THEN
      raise_application_error(-20020,'ERRO NÃO ESPERADO !!!! - TEXTO ORIGINAL DO ERRO: ' || sqlerrm());
END;
