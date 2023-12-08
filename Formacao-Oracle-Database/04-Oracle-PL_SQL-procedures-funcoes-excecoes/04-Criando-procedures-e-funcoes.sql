-- Execute o código abaixo para criar a Procedure:
CREATE PROCEDURE incluir_segmercado
(p_ID IN NUMBER, p_DESCRICAO IN VARCHAR2)
IS
BEGIN
   INSERT INTO SEGMERCADO (ID, DESCRICAO) VALUES (p_ID, UPPER(p_DESCRICAO));
   COMMIT;
END;

-- Para executar a procedure, execute:
EXECUTE incluir_segmercado(4,'Farmaceuticos');

-- De maneira alternativa, você pode executar a procedure da seguinte forma:
BEGIN
   incluir_segmercado(4,'Farmaceuticos');
END;

-- Altere a procedure:
CREATE OR REPLACE PROCEDURE incluir_segmercado
(p_ID IN SEGMERCADO.ID%type, p_DESCRICAO IN SEGMERCADO.DESCRICAO%type)
IS
BEGIN
   INSERT INTO SEGMERCADO (ID, DESCRICAO) VALUES (p_ID, UPPER(p_DESCRICAO));
   COMMIT;
END;

-- Crie a segunda procedure:
CREATE OR REPLACE PROCEDURE incluir_segmercado2
(p_ID IN SEGMERCADO.ID%type, p_DESCRICAO IN SEGMERCADO.DESCRICAO%type)
IS
BEGIN
   INSERT INTO SEGMERCADO (ID, DESCRICAO) VALUES (p_ID, UPPER(p_DESCRICAO));
   COMMIT;
END;

-- Crie a terceira procedure:
CREATE OR REPLACE PROCEDURE incluir_segmercado3
(p_ID IN SEGMERCADO.ID%type, p_DESCRICAO IN SEGMERCADO.DESCRICAO%type)
IS
BEGIN
   INSERT INTO SEGMERCADO (ID, DESCRICAO) VALUES (p_ID, UPPER(p_DESCRICAO));
   COMMIT;
END;

-- Selecione a procedure incluir_segmercado2, cliquei com o botão direito do mouse e escolha Eliminar.

-- O código para eliminar é mostrado em uma janela.

-- Clique em Aplicar para eliminar a procedure.

-- Execute o script para eliminar a procedure incluir_segmercado3:
DROP PROCEDURE incluir_segmercado3;

-- Atualize a visão do banco para verificar que a procedure foi eliminada.

-- Crie um novo script e execute o comando:
SET SERVEROUTPUT ON;

-- Crie o programa PL/SQL para criar o descritor v_DESCRIÇAO:
DECLARE
   v_ID SEGMERCADO.ID%type := 1;
   v_IDSaida SEGMERCADO.ID%type;
   v_DESCRICAO SEGMERCADO.DESCRICAO%type;
BEGIN
   SELECT DESCRICAO INTO v_DESCRICAO FROM SEGMERCADO WHERE ID = v_ID;
   SELECT ID INTO v_IDSaida FROM SEGMERCADO WHERE ID = v_ID;
   dbms_output.put_line(v_DESCRICAO);
   dbms_output.put_line(v_IDSaida);

-- Para criar a função obter_descricao_segmercado, execute o código:
CREATE OR REPLACE FUNCTION obter_descricao_segmercado
(p_ID IN SEGMERCADO.ID%type)
RETURN SEGMERCADO.DESCRICAO%type
IS
   v_DESCRICAO SEGMERCADO.DESCRICAO%type;
BEGIN
   SELECT DESCRICAO INTO v_DESCRICAO FROM SEGMERCADO WHERE ID = p_ID;
   RETURN v_DESCRICAO;
END;

-- Mostre o conteúdo, usando a função que você acabou de criar:
SELECT ID, obter_descricao_segmercado(ID), DESCRICAO, LOWER(DESCRICAO) FROM SEGMERCADO;

-- Crie um novo script. Dentro dele, crie uma variável, use a função e mostre o valor dessa variável:
VARIABLE g_DESCRICAO VARCHAR2(100);
EXECUTE :g_DESCRICAO:=obter_descricao_segmercado(3);
PRINT g_DESCRICAO;

-- Crie um programa que executa o mesmo que os passos anteriores:
SET SERVEROUTPUT ON
DECLARE
v_DESCRICAO SEGMERCADO.DESCRICAO%type;
v_ID SEGMERCADO.ID%type := 2;
BEGIN
v_DESCRICAO := obter_descricao_segmercado(v_ID);
dbms_output.put_line('A descrição do segmento de mercado é ' || v_DESCRICAO);
END;
