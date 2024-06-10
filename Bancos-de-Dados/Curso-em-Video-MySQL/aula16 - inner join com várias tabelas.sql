create table gafanhoto_assiste_curso(
id int auto_increment,
data date,
id_gafanhoto int,
id_curso int,
primary key(id),
foreign key (id_gafanhoto) references gafanhotos(id),
foreign key (id_curso) references cursos(idcurso)
) default charset = utf8; # MUITO IMPORTANTE

desc cursos;
desc gafanhotos;
desc gafanhoto_assiste_curso;

insert into gafanhoto_assiste_curso values
(default, '2014-03-01', 1, 2);

select * from gafanhoto_assiste_curso;

select g.nome, gac.data, c.nome from gafanhotos g  # nome do gafanhoto, data de gafanhoto_assiste_cruso, nome do curso
join gafanhoto_assiste_curso gac
on g.id = gac.id_gafanhoto
join cursos c
on c.idcurso =  gac.id_curso;



