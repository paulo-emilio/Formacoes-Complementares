create table if not exists cursos (  # cria a tabela cursos se não existir uma tabela com esse nome
	nome varchar(30) not null unique,  # unique para nao poder criar com nome igual
    descricao text,
    carga int unsigned, # sem sinal, ou seja, nao é possivel numeros negativos (ex: -99) -> para ocupar menos espaço na memória
    totaulas int unsigned,
    ano year default '2022'        
) default charset=utf8;

desc cursos;

alter table cursos
add idcurso int first; # add a coluna idcurso na primeira posição

alter table cursos
add primary key (idcurso); # colocando idcurso como chave primária

create table if not exists teste(id int primary key auto_increment, nome varchar(10));
insert into teste(nome) value ('Paulo');
select * from teste;
drop table if exists teste; # apagando a tabela teste e seus dados