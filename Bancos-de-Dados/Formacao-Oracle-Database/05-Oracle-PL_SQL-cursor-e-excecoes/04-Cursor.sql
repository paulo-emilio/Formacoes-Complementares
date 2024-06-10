-- 1) Execute o comando abaixo para incluir um novo cliente:

EXECUTE INCLUIR_CLIENTE(30, 'Loja NNM','56854960854906',2,60000);

-- Você verá que, após esta inclusão, se executarmos o programa PL/SQL abaixo para atualizar os segmentos, ela não irá funcionar:
-- Isso porque os identificadores dos clientes não respeitam uma ordem sequencial. 
-- A solução para esse problema é usar um CURSOR.

-- 2) Execute os comandos abaixo para ver como funciona a estrutura de CURSOR:

SET SERVEROUTPUT ON;
DECLARE
   v_ID CLIENTE.ID%type;
   v_RAZAO CLIENTE.RAZAO_SOCIAL%type;
   CURSOR cur_CLIENTE IS SELECT ID, RAZAO_SOCIAL FROM CLIENTE;
BEGIN
   OPEN cur_CLIENTE;
   LOOP
      FETCH cur_CLIENTE INTO v_ID, v_RAZAO;
   EXIT WHEN cur_CLIENTE%NOTFOUND;
      dbms_output.put_line('ID = ' || v_ID || ', RAZAO = ' || v_RAZAO);
   END LOOP;
END;

-- 3) Edite a procedure de atualização dos segmentos para levar em consideração o uso do CURSOR e o problema de atualização ser solucionado quando os identificadores dos clientes não respeitarem uma ordem sequencial:

DECLARE
   v_SEGMERCADO CLIENTE.SEGMERCADO_ID%type := 3;
   v_ID CLIENTE.ID%type;
   CURSOR cur_CLIENTE IS SELECT ID FROM CLIENTE;
BEGIN
   OPEN cur_CLIENTE;
   LOOP
      FETCH cur_CLIENTE INTO v_ID;
   EXIT WHEN cur_CLIENTE%NOTFOUND;
      ATUALIZAR_SEGMERCADO(v_ID, v_SEGMERCADO);
   END LOOP;
   CLOSE cur_CLIENTE;
END;

-- 4) É possível gerenciar o CURSOR usando a estrutura de repetição WHILE ... LOOP:

DECLARE
   v_SEGMERCADO CLIENTE.SEGMERCADO_ID%type := 3;
   v_ID CLIENTE.ID%type;
   CURSOR cur_CLIENTE IS SELECT ID FROM CLIENTE;
BEGIN
   OPEN cur_CLIENTE;
   FETCH cur_CLIENTE INTO v_ID;
   WHILE cur_CLIENTE%FOUND LOOP
      ATUALIZAR_SEGMERCADO(v_ID, v_SEGMERCADO);
      FETCH cur_CLIENTE INTO v_ID;
   END LOOP;
   CLOSE cur_CLIENTE;
END;

-- 5) Ou então você pode usar o FOR, onde muitos comandos de atualização do gerenciamento do CURSOR, dentro do programa PL/SQL, são automaticamente declaradas:

DECLARE
   v_SEGMERCADO CLIENTE.SEGMERCADO_ID%type := 1;
   CURSOR cur_CLIENTE IS SELECT ID FROM CLIENTE;
BEGIN
   FOR linha_cur_CLIENTE IN cur_CLIENTE LOOP
      ATUALIZAR_SEGMERCADO (linha_cur_CLIENTE.ID, v_SEGMERCADO);
   END LOOP;
END;
