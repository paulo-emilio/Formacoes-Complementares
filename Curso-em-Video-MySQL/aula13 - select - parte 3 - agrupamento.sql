select * from cursos;

# agrupando
select totaulas, count(*) from cursos 
group by totaulas
order by totaulas;

# mostrando quantos cursos tem 30 aulas, agrupados por carga horária
select carga, totaulas, count(*) from cursos 
where totaulas = 30 
group by carga;

# quantos cursos em cada ano, mostrando somente os anos com mais de 4 cursos
select ano, count(*) from cursos
group by ano
having count(*) >= 5;

# mostrando qnts cursos por ano depois de 2015
select ano, count(*) from cursos
group by ano
having ano > 2015
order by ano;

select avg(carga) from cursos; # media de horas

# select dentro de select
# mostrando agrupamento por carga depois 2015 onde carga seja maior que a média geral de cargas
select carga, count(*) from cursos 
where ano > 2015
group by carga
having carga > (select avg(carga) from cursos);




