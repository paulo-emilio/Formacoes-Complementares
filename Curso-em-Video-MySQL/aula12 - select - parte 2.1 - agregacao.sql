select distinct carga from cursos  # somente 1 de cada (ex: tem 3 com carga 40, vai mostrar só 1)
order by carga;  
select distinct nacionalidade from gafanhotos  # mostra todos países sem repetir
order by nacionalidade;  

select count(*) from cursos; # quantos cursos tem listados
select count(*) from cursos
where carga > 40;  # quantos cursos tem mais de 40 horas

select max(carga) from cursos; # maior carga em cursos 
select nome, min(totaulas) from cursos # mostrando nome do curso tbm
where ano = 2016; # menor número de aulas dos cursos de 2016

select sum(totaulas) from cursos; # soma do totaulas na tabela cursos

select avg(totaulas) from cursos where ano = 2016; # media do total de aulas em 2016

