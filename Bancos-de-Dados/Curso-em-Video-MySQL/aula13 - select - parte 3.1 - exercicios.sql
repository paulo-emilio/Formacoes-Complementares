select * from gafanhotos
order by nacionalidade;

# profissoes e seus quantitativos		1
select profissao, count(*) from gafanhotos
group by profissao
order by profissao;

# qnts M e F nasceram após 01-01-2005
select sexo, count(*) from gafanhotos
where nascimento > 2005-01-01
group by sexo;

# nacionalidade e total de pessoas em cada fora do Brasil. Só países que tem mais de 3
select nacionalidade, count(*) from gafanhotos
where nacionalidade not like 'Brasil'
group by nacionalidade
having count(*) > 3;

# lista agrupada pela altura, qnts pessoas mais de 100kg e estao acima da média de altura
select avg(altura) from gafanhotos;

select altura, count(*) from gafanhotos
where peso > 100
group by altura
having altura > (select avg(altura) from gafanhotos);


















