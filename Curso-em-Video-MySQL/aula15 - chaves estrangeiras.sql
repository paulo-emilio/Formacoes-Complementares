# criando chave estrangeira saindo de cursos indo para gafanhotos
describe gafanhotos;
desc cursos;  # olhando a chave primária pois tem q ser do mesmo tipo e tamanho

alter table gafanhotos
add column crusopreferido int; # criando chave que será estrangeiracursos

ALTER TABLE gafanhotos
CHANGE crusopreferido cursopreferido int; # renomeando pq errei o nome

alter table gafanhotos
add foreign key (cursopreferido) # adicionando chave estrangeira a 'cursopreferido'
references cursos(idcurso); # ligando em idcurso da tabela cursos

select nome, cursopreferido from gafanhotos;
select * from cursos;

update gafanhotos set cursopreferido = 6
where id = 1;  # colocando o curso preferido do Daniel Morais (que tem id = 1)

delete from cursos where idcurso = '6';  # não vai ser deletado pq ja esta ligando a algum gafanhoto










