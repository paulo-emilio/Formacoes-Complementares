-- Cria o Trace
DECLARE @trace_id INT
EXEC sp_trace_create @traceid = @trace_id OUTPUT

-- Inicializa os eventos de Trace
EXEC sp_trace_setevent @traceid = @trace_id, @eventid = 10, @columnid =1, @on = 1
EXEC sp_trace_setevent @traceid = @trace_id, @eventid = 12, @columnid = 1, @on 1

-- Inicializa os filtros do Trace
EXEC sp_trace_setfilter @traceid = @trace_id, @columnid = 1, @logical_operator = 0, @comparison_operator = 0, @value = N'example_user'

-- Inicia o Trace
EXEC sp_trace_start @traceid = @trace_id

-- Espera alguns segundos
WAITFOR DELAY '00:00:05'

-- Para o Trace
EXEC sp_trace_stop @traceid = @trace_id

-- Limpa o Trace
EXEC sp_trace_delete @traceid = @trace_id


--sp_trace_create: cria uma nova seção de rastreamento;
--sp_trace_setevent: configura os eventos a serem capturados durante a seção de rastreamento;
--sp_trace_setfilter: configura os filtros que serão aplicados durante a seção de rastreamento;
--sp_trace_start: inicia a seção de rastreamento;
--sp_trace_stop: interrompe ou para a seção de rastreamento;
--sp_trace_delete: exclui uma seção de rastreamento;
--sptracegetdata: recupera dados que foram capturados durante uma sessão de rastreamento.