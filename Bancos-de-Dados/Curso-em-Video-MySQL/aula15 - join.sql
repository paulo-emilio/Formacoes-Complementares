# inner join = mostra somente os que tem o campo cursopreferido preenchido pois ele que faz a ligação
select g.id, g.nome, c.nome, c.descricao # nome e id dos gafanhotos, nome e descrição dos cursos
from gafanhotos as g inner join cursos as c  # junta as tabelas
on c.idcurso = g.cursopreferido
order by g.id;   # liga o id do curso com o curso preferido (transforma o id no nome)

# outer join
select g.id, g.nome, c.nome, c.descricao          #  left vai dar preferencia pra tabela da esquerda, 
from gafanhotos as g left outer join cursos as c  #  então vai motrar todos gafanhotos independendo de ligação
on c.idcurso = g.cursopreferido
order by g.id;

select g.id, g.nome, c.nome, c.descricao     #  right vai dar preferencia pra tabela da direita, 
from gafanhotos as g right join cursos as c  #  então vai motrar todos cursos independendo de ligação
on c.idcurso = g.cursopreferido
order by g.id;


select * from gafanhotos;