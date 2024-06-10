-- Crie um script através do user_dev.

-- Use os comandos para criar o pacote:

CREATE OR REPLACE PACKAGE CLIENTE_PAC
IS
    PROCEDURE INCLUIR_CLIENTE 
        (p_id in cliente.id%type,
        p_razao_social in cliente.razao_social%type,
        p_CNPJ cliente.CNPJ%type ,
        p_segmercado_id cliente.segmercado_id%type,
        p_faturamento_previsto cliente.faturamento_previsto%type);

END;

-- Execute os comandos e verifique que o pacote foi criado.

-- Para criar o corpo do pacote, execute os comandos:

CREATE OR REPLACE PACKAGE BODY CLIENTE_PAC
IS
    PROCEDURE INCLUIR_CLIENTE 
        (p_id in cliente.id%type,
        p_razao_social in cliente.razao_social%type,
        p_CNPJ cliente.CNPJ%type ,
        p_segmercado_id cliente.segmercado_id%type,
        p_faturamento_previsto cliente.faturamento_previsto%type)
    IS
        v_categoria cliente.categoria%type;
        v_CNPJ cliente.cnpj%type := p_CNPJ;
        v_codigo_erro number(5);
        v_mensagem_erro varchar2(200);
        v_dummy number;
        v_verifica_segmento boolean;
        e_segmento exception;
    BEGIN
        v_verifica_segmento := verifica_segmento_mercado(p_segmercado_id);
        IF v_verifica_segmento = false THEN
            RAISE e_segmento;
        END IF;
        v_categoria := obter_categoria_cliente(p_faturamento_previsto);
        format_cnpj (v_cnpj);
        INSERT INTO cliente 
            VALUES (p_id, UPPER(p_razao_social), v_CNPJ, p_segmercado_id
                    ,SYSDATE, p_faturamento_previsto, v_categoria);
        COMMIT;   
    EXCEPTION
        WHEN dup_val_on_index then
            raise_application_error(-20010,'Cliente já cadastrado');
        WHEN e_segmento then
            raise_application_error (-20011,'Segmento de mercado inexistente');
        WHEN OTHERS then
            v_codigo_erro := sqlcode;
            v_mensagem_erro := sqlerrm;
            raise_application_error (-20000,to_char(v_codigo_erro)||v_mensagem_erro);
    END;

END;

-- Verifique a criação do corpo do pacote.

-- Para garantir o privilégio de execução ao user_app, execute:

GRANT EXECUTE ON CLIENTE_PAC TO user_app;

-- Crie um script como user_app e execute o comando:

EXECUTE user_dev.CLIENTE_PAC.INCLUIR_CLIENTE(10, 'PRIMEIRO CLIENTE INCLUIDO POR USER_APP VIA PACKAGE', '455564', 2, 120000);

-- Mostre o conteúdo da tabela:

SELECT * FROM CLIENTE;

-- Crie um sinônimo para o pacote na conexão user_dev:

CREATE PUBLIC SYNONYM CLIENTE_PAC FOR user_dev.CLIENTE_PAC;

-- Em user_app, rode o comando:

EXECUTE CLIENTE_PAC.INCLUIR_CLIENTE(11, 'SEGUNDO CLIENTE INCLUIDO POR USER_APP VIA PACKAGE', '455564', 2, 120000);

-- Crie um novo script associado à user_dev e execute os comandos para criar o cabeçalho do pacote:

CREATE OR REPLACE PACKAGE CLIENTE_PAC
IS
    PROCEDURE INCLUIR_CLIENTE 
        (p_id in cliente.id%type,
        p_razao_social in cliente.razao_social%type,
        p_CNPJ cliente.CNPJ%type ,
        p_segmercado_id cliente.segmercado_id%type,
        p_faturamento_previsto cliente.faturamento_previsto%type);

    PROCEDURE ATUALIZAR_CLI_SEG_MERCADO
        (p_id cliente.id%type,
        p_segmercado_id cliente.segmercado_id%type);

    PROCEDURE ATUALIZAR_FATURAMENTO_PREVISTO
        (p_id in cliente.id%type,
        p_faturamento_previsto in cliente.faturamento_previsto%type);

    PROCEDURE EXCLUIR_CLIENTE
        (p_id in cliente.id%type);

END;

-- Agora, execute os comandos:

-- [Conteúdo do corpo do pacote]

-- Crie um novo script com o user_app e verifique o conteúdo da tabela CLIENTE:

SELECT * FROM CLIENTE;

-- Para excluir o cliente, execute o comando:

EXECUTE CLIENTE_PAC.EXCLUIR_CLIENTE(10);

-- Confira que o cliente foi excluído.
