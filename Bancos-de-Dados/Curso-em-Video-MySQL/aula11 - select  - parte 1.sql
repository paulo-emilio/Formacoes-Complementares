select * from cursos order by nome;  # tudo ordenado por nome em ordem alfabética
select * from gafanhotos order by nome desc; # ordenado ordem alfabética ao contrario (descendent)
select * from gafanhotos order by nome asc; # ascendent
select nome, carga, ano from cursos;  # mostra so isso ai
select ano, nome, descricao from cursos order by ano, nome;  # isso ai ordenado por ano, e se ano igual ordena por nome

select nome, carga from cursos
where ano = 2016  # somente 2016
order by nome;

select nome, descricao, ano from cursos
where ano <= 2015
order by ano, nome;

select nome, ano from cursos
where ano between 2014 and 2016 # somente entre 2014 e 2016
order by ano desc, nome;  # ordenado por ano decrescente, depois por nome normal (crescente)

select * from cursos where ano in (2014, 2016) order by descricao;  # somente cursos de 2014 e 2016

# and
select nome, carga, totaulas from cursos 
where carga > 35 and totaulas < 30  # somente selecionado se carga maior que 35 E totaulas menor que 30
order by carga, totaulas;

# or
select nome, carga, totaulas from cursos 
where carga > 35 or totaulas < 30  # somente selecionado se carga maior que 35 OU totaulas menor que 30
order by carga, totaulas;









