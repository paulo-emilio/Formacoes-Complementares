select * from cursos
where nome like 'p%'; # todos que começam com P (o % substitui qualquer sequência de caracteres, incluise nenhum caracter

select * from cursos
where nome like '%a'; # terminam com A 

select * from cursos
where nome like '%a%';  # tem A em algum lugar

select * from cursos
where nome not like '%a%';  # nao tem A em lugar nenhum

select * from cursos
where nome not like 'a%'; # nao começa com A 

select * from cursos
where nome like 'ph%p%'; # começa com PH e tem com P no meio ou no final

select * from cursos
where nome like 'ph%p_'; # underline quer dizer que precisa ter algo depois do P

select * from cursos
where nome like 'p_p%'; # P, algo depois, P, qualquer coisa

select * from gafanhotos
where nome like '%silva%'; # quem tiver silva nome (pega inclusive a Silvana)

select * from gafanhotos
where nome like '______silva%'; # só quem tem 6 espaços antes do Silva

select * from gafanhotos
where nome like '%_Silva%'; # só quem tem silva como sobrenome








