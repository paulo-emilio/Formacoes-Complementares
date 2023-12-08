-- 1) Criação de uma procedure para formatar o CNPJ
CREATE OR REPLACE PROCEDURE FORMATA_CNPJ
(p_CNPJ IN cliente.cnpj%type, p_CNPJ_SAIDA OUT cliente.cnpj%type)
IS
BEGIN
   p_CNPJ_SAIDA := SUBSTR(p_CNPJ, 1,3) || '/' || SUBSTR(p_CNPJ, 4,2) || '-' || SUBSTR(p_CNPJ,6);
END;

-- 2) Teste de parâmetros IN e OUT
SET SERVEROUTPUT ON;
DECLARE
   v_CNPJ cliente.cnpj%type;
   v_CNPJ_SAIDA cliente.cnpj%type;
BEGIN
   v_CNPJ := '1234567890';
   v_CNPJ_SAIDA := '1234567890';
   dbms_output.put_line(v_CNPJ || '      ' || v_CNPJ_SAIDA);
   FORMATA_CNPJ(v_CNPJ, v_CNPJ_SAIDA);
   dbms_output.put_line(v_CNPJ || '      ' || v_CNPJ_SAIDA);
END;

-- 3) Teste de erro ao associar um valor ao parâmetro IN
-- (Não é possível associar um valor a um parâmetro IN)
-- Experiência realizada, não precisa ser executada novamente.

-- 4) Teste de erro ao usar o parâmetro OUT como saída e atribuição de valor
-- (O valor retornado será vazio)
-- Experiência realizada, não precisa ser executada novamente.

-- 5) Criação de uma procedure com parâmetro IN OUT
CREATE OR REPLACE PROCEDURE FORMATA_CNPJ_SIMPLES_INOUT
(p_CNPJ IN OUT cliente.cnpj%type)
IS
BEGIN
   p_CNPJ := SUBSTR(p_CNPJ, 1,3) || '/' || SUBSTR(p_CNPJ, 4,2) || '-' || SUBSTR(p_CNPJ,6);
END;

-- Teste da procedure com parâmetro IN OUT
SET SERVEROUTPUT ON;
DECLARE
   v_CNPJ cliente.cnpj%type;
BEGIN
   v_CNPJ := '1234567890';
   dbms_output.put_line(v_CNPJ);
   FORMATA_CNPJ_SIMPLES_INOUT(v_CNPJ);
   dbms_output.put_line(v_CNPJ);
END;

-- 6) Alteração na procedure INCLUIR_CLIENTE para chamar a função FORMATA_CNPJ
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
  v_CNPJ_FORMATADO CLIENTE.CNPJ%type;
BEGIN
   v_CATEGORIA := categoria_cliente(p_FATURAMENTO);
   FORMATA_CNPJ(p_CNPJ, v_CNPJ_FORMATADO);

   INSERT INTO CLIENTE
   VALUES 
   (p_ID, p_RAZAO, v_CNPJ_FORMATADO, p_SEGMERCADO, SYSDATE, p_FATURAMENTO, v_CATEGORIA);
   COMMIT;
END;

-- 7) Inserção de novos clientes na tabela de clientes
EXECUTE INCLUIR_CLIENTE (5, 'MERCEARIA XYZ', '999288292999',1,10000);
EXECUTE INCLUIR_CLIENTE (6, 'FARMACIA ABC', '999277292999',1,10000);
EXECUTE INCLUIR_CLIENTE (7, 'MERCADINHO QWE', '999266292999',1,10000);
EXECUTE INCLUIR_CLIENTE (8, 'TAVERNA POI', '999244292999',1,10000);
EXECUTE INCLUIR_CLIENTE (9, 'BAR 222', '999233292999',1,10000);

-- 8) Criação de uma procedure para atualizar o segmento de mercado de um cliente
CREATE OR REPLACE PROCEDURE ATUALIZAR_SEGMERCADO
(p_ID CLIENTE.ID%type, p_SEGMERCADO_ID CLIENTE.SEGMERCADO_ID%type)
IS
BEGIN
   UPDATE CLIENTE SET SEGMERCADO_ID = p_SEGMERCADO_ID WHERE ID = p_ID;
   COMMIT;
END;
