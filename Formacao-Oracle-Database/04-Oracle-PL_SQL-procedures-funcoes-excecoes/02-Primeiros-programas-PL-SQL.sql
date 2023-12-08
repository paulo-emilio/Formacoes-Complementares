-- O que é o PL/SQL e sua estrutura.
-- Como criar um programa em PL/SQL.
-- A habilitar o Oracle para mostrar o resultado na tela.
-- O que são erros de compilação.

SET SERVEROUTPUT ON;
DECLARE
   v_ID NUMBER(5) := 1;
BEGIN 
   dbms_output.put_line(v_ID);
   v_ID := 2 ;
   dbms_output.put_line(v_ID);
END;