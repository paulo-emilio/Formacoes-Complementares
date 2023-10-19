# só as gafanhotas   1
select * from gafanhotos 
where sexo = 'F'; 

# nasceram entre 01/01/2000 e 31/12/2015   2
select * from gafanhotos
where nascimento between '2000-01-01' and '2015-12-31'
order by nascimento;

# todos homens programadores   3
select * from gafanhotos
where sexo = 'M' and profissao like 'Programa%'
order by nome;

# mulheres brasileiras nome começa com J   4
select * from gafanhotos
where sexo = 'F' and nacionalidade = 'Brasil' and nome like 'j%';

# nome e nacionalidade de homens que tem Silva no nome, não nasceram no brasil e pesam menos de 100kg   5
select nome, nacionalidade from gafanhotos
where nome like '%Silva%' and nacionalidade not like 'Brasil' and peso < 100;

# maior altura homens moram no brasil   6
select max(altura) from gafanhotos
where sexo = 'M'and nacionalidade = 'Brasil';

# média dos pesos cadastrados   7
select avg(peso) from gafanhotos;

# menor peso mulheres fora brasil entre 01-01-1990 e 31-12-2000   8
select min(peso) from gafanhotos
where sexo = 'F' and nacionalidade not like 'Brasil' and nascimento between '1990-01-01' and '2000-12-31';

# quantas mulheres mais de 1.90 de altura   9
select count(*) from gafanhotos
where sexo = 'F' and altura > 1.9;

