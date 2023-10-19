insert into pessoas
(nome, nascimento, sexo, peso, altura, nacionalidade)
values
('Godofredo', '1984-01-02', 'M', '78.5', '1.83', default);

insert into pessoas values
(default, 'Sauruman', '0000-01-01', 'M', '82.8', '1.99', 'Middle Earth'); # se estiverem todos os dados na ordem correta não precisa definir os campos

insert into pessoas values
(default, 'Dumbledore', '1881-06-08', 'M', '70.1', '1.80', 'Inglaterra'),
(default, 'Magneto', '1930-05-10', 'M', '82.8', '1.89', 'Estados Unidos'),
(default, 'Leia Organa', '9999-09-09', 'M', '50.5', '1.5', 'Alderaan');

select * from pessoas;