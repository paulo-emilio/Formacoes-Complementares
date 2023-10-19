select * from TABELA_PRODUTOS;

select nome, estado, idade from TABELA_CLIENTES;

select nome from TABELA_CLIENTES order by nome;

select nome as [Nome do Cliente], CPF, estado as UF from TABELA_CLIENTES;

/* DESAFIO */
select matricula as ID, nome as 'Nome do Vendedor' from TABELA_VENDEDORES;

/* DISTINCT */
select distinct Sabor from TABELA_PRODUTOS;