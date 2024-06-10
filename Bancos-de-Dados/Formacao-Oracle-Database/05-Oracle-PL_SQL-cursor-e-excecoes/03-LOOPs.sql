-- 1) O objetivo agora é atualizar todos os segmentos de mercados de todos os clientes atualmente cadastrados na tabela. 
-- Para isso, você tem que repetir a execução da procedure diversas vezes para cada um dos clientes:

EXECUTE ATUALIZAR_SEGMERCADO (1,4);
EXECUTE ATUALIZAR_SEGMERCADO (2,4);
EXECUTE ATUALIZAR_SEGMERCADO (3,4);
EXECUTE ATUALIZAR_SEGMERCADO (4,4);
EXECUTE ATUALIZAR_SEGMERCADO (5,4);
EXECUTE ATUALIZAR_SEGMERCADO (6,4);
EXECUTE ATUALIZAR_SEGMERCADO (7,4);
EXECUTE ATUALIZAR_SEGMERCADO (8,4);
EXECUTE ATUALIZAR_SEGMERCADO (9,4);

-- 2) Mas como o identificador do cliente é um número sequencial, podemos fazer um programa em PL/SQL para fazer essa atualização:

DECLARE
   v_SEGMERCADO CLIENTE.SEGMERCADO_ID%type := 2;
   v_ID CLIENTE.ID%type := 1;
BEGIN
   ATUALIZAR_SEGMERCADO (v_ID,v_SEGMERCADO);
   v_ID := v_ID + 1;
   ATUALIZAR_SEGMERCADO (v_ID,v_SEGMERCADO);
   v_ID := v_ID + 1;
   ATUALIZAR_SEGMERCADO (v_ID,v_SEGMERCADO);
   v_ID := v_ID + 1;
   ATUALIZAR_SEGMERCADO (v_ID,v_SEGMERCADO);
   v_ID := v_ID + 1;
   ATUALIZAR_SEGMERCADO (v_ID,v_SEGMERCADO);
   v_ID := v_ID + 1;
   ATUALIZAR_SEGMERCADO (v_ID,v_SEGMERCADO);
   v_ID := v_ID + 1;
   ATUALIZAR_SEGMERCADO (v_ID,v_SEGMERCADO);
   v_ID := v_ID + 1;
   ATUALIZAR_SEGMERCADO (v_ID,v_SEGMERCADO);
   v_ID := v_ID + 1;
   ATUALIZAR_SEGMERCADO (v_ID,v_SEGMERCADO);
END;

-- 3) Como você repetiu um bloco de comando diversas vezes, uma vez para cada cliente, é possível substituir esta repetição por um looping usando a estrutura LOOP ... END LOOP:

DECLARE
   v_SEGMERCADO CLIENTE.SEGMERCADO_ID%type := 3;
   v_ID CLIENTE.ID%type := 1;
BEGIN
   LOOP
      ATUALIZAR_SEGMERCADO (v_ID,v_SEGMERCADO);
      v_ID := v_ID + 1;
   EXIT WHEN v_ID > 9;
   END LOOP;
END;

-- 4) No código acima, é preciso conhecer, de antemão, o número de clientes existentes na tabela, neste momento. 
-- Mas isso pode ser feito pelo próprio programa PL/SQL:

DECLARE
   v_SEGMERCADO CLIENTE.SEGMERCADO_ID%type := 3;
   v_ID CLIENTE.ID%type := 1;
   v_NUMCLI INTEGER;
BEGIN
   SELECT COUNT(*) INTO v_NUMCLI FROM CLIENTE;
   LOOP
      ATUALIZAR_SEGMERCADO (v_ID,v_SEGMERCADO);
      v_ID := v_ID + 1;
   EXIT WHEN v_ID > v_NUMCLI;
   END LOOP;
END;

-- 5) Não temos à disposição apenas o comando de repetição LOOP ... END LOOP. 
-- Essa repetição pode ser feita com a estrutura de repetição FOR. 
-- Inclusive, é a mais apropriada quando temos o número de interações previamente definido:

DECLARE
   v_SEGMERCADO CLIENTE.SEGMERCADO_ID%type := 4;
   v_NUMCLI INTEGER;
BEGIN
   SELECT COUNT(*) INTO v_NUMCLI FROM CLIENTE;
   FOR v_ID IN 1..v_NUMCLI LOOP
      ATUALIZAR_SEGMERCADO (v_ID,v_SEGMERCADO);
   END LOOP;
END;

-- 6) É possível passar os parâmetros de forma nomeada para a procedure:

DECLARE
   v_SEGMERCADO CLIENTE.SEGMERCADO_ID%type := 1;
   v_NUMCLI INTEGER;
BEGIN
   SELECT COUNT(*) INTO v_NUMCLI FROM CLIENTE;
   FOR v_ID IN 1..v_NUMCLI LOOP
      ATUALIZAR_SEGMERCADO ( p_SEGMERCADO_ID => v_SEGMERCADO, p_ID => v_ID);
   END LOOP;
END;

-- 7) O comando de saída do LOOP ... END LOOP pode ser chamado em qualquer linha do bloco de comandos do programa PL/SQL, desde que dentro da estrutura de repetição:

DECLARE
   v_SEGMERCADO CLIENTE.SEGMERCADO_ID%type := 2;
   v_ID CLIENTE.ID%type := 1;
   v_NUMCLI INTEGER;
BEGIN
   SELECT COUNT(*) INTO v_NUMCLI FROM CLIENTE;
   LOOP
      IF v_ID <= v_NUMCLI THEN
         ATUALIZAR_SEGMERCADO (v_ID,v_SEGMERCADO);
         v_ID := v_ID + 1;
      ELSE
         EXIT;
      END IF;
   END LOOP;
END;

-- 8) Outra estrutura de repetição apresentada foi o WHILE ... LOOP:

DECLARE
   v_SEGMERCADO CLIENTE.SEGMERCADO_ID%type := 3;
   v_ID CLIENTE.ID%type := 1;
   v_NUMCLI INTEGER;
BEGIN
   SELECT COUNT(*) INTO v_NUMCLI FROM CLIENTE;
   WHILE v_ID <= v_NUMCLI LOOP
      ATUALIZAR_SEGMERCADO (v_ID,v_SEGMERCADO);
      v_ID := v_ID + 1;
   END LOOP;
END;
