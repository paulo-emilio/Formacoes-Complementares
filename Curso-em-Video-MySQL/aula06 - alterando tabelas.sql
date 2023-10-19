alter table pessoas  
add column profissao varchar (10);  # adiciona uma coluna em pesoas

desc pessoas;  # descreve a tabela pessoas
select * from pessoas;  # mostra todos cadastros

alter table pessoas
drop column profissao; # deleta a coluna profissao

alter table pessoas  
add column profissao varchar (10) after nome; # readicionando a coluna escolhando o lugar que ela vai ficar (depois da coluna 'nome)
									
alter table pessoas
add codigo int first; # adiciona como primeiro da tabela

alter table pessoas
drop codigo;

alter table pessoas
modify profissao varchar(20); # alterando profissao (colocando varchar 20)

alter table pessoas
change profissao prof varchar(20); # alterando a coluna (tem que colocar o novo nome ('prof'), e todas suas definições novamente

alter table pessoas
rename to peoples; # muda o nome da tabela

desc peoples;


