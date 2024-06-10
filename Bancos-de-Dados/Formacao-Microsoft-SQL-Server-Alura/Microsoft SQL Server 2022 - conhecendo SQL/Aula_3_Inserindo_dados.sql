insert into TABELA_PRODUTOS values (
'1040107',
'Light - 350 ml - Melância',
'Lata',
'350 ml',
'Melancia',
4.56
);


insert into [TABELA_PRODUTOS] values
('1037797', 'Clean - 2 Litros - Laranja', 'PET', '2 Litros', 'Laranja', 16.01),
('1000889', 'Sabor da Montanha - 700 ml - Uva', 'Garrafa', '700 ml', 'Uva', 6.31),
('1004327', 'Videira do Campo - 1,5 Litros - Melancia', 'PET', '1,5 Litros', 'Melancia', 19.51),
('1088126', 'Linha Citrus - 1 Litro - Limão', 'PET', '1 Litro', 'Limão',7.00);


/*'00384393431', 'João da Silva', 'Rua Projetada A', 'Número 233', 'Copacabana', 'Rio de janeiro, 'RJ', '20000000',21/03/1965, 57, 'M', 200000, 3000.30,1*/

insert into tabela_clientes values
('00384393431', 'João da Silva', 'Rua Projetada A', 'Número 233', 'Copacabana', 'Rio de janeiro', 'RJ', '20000000','1965-03-21', '57', 'M', 200000, 3000.30, 1),
('00384393555', 'Maria Clara', 'Rua Projetada A', 'Número 233', 'Copacabana', 'Rio de janeiro', 'RJ', '20000000','1975-03-21', '47', 'F', 200000, 3000.30, 0);


/* DESAFIO */
insert into TABELA_VENDEDORES values 
('00236', 'Cláudia Morais', 8),
('00237', 'Marcela Ferreira', 9),
('00238', 'Márcio Almeida', 8);

/* Inserindo em ordem diferente da tabela */
INSERT INTO [TABELA_PRODUTOS]
([CODIGO DO PRODUTO], [NOME DO PRODUTO], [EMBALAGEM], [TAMANHO], [PRECO DE LISTA], [SABOR])
VALUES
('5449310', 'Frescor do Verão - 350 ml - Limão', 'Lata', '350 ml',2.45, 'Limão'),
('1078680', 'Frescor do Verão - 350 ml - Manga', 'Lata', '350 ml',3.18, 'Manga');

/* DESAFIO */
--Clientes
INSERT INTO [TABELA_CLIENTES]
VALUES
('1471156710','Erica Carvalho','R. Iriquitia',' ','Jardins', 'São Paulo','SP','80012212','1990-09-01',32,'F',1700000000,24500,0),
('19290992743','Fernando Cavalcante','R. Dois de Fevereiro',' ','Agua Santa', 'Rio de Janeiro','RJ','22000000','2000-02-12',23,'M',1000000000,20000,1),
('2600586709','Cesar Teixeira','Rua Conde de Bonfim',' ','Tijuca', 'Rio de Janeiro','RJ','22020001','2000-03-12',23,'M',1200000000,22000,0),
('3623344710','Marcos Nogueira','Av. Pastor Martin Luther King Junior',' ','Inhauma', 'Rio de Janeiro','RJ','22002012','1995-01-13',28,'M',1100000000,22000,1),
('492472718','Eduardo Jorge','R. Volta Grande',' ','Tijuca', 'Rio de Janeiro','RJ','22012002','1994-07-19',28,'M',750000000,9500,1),
('50534475787','Abel Silva','Rua Humaita',' ','Humaita', 'Rio de Janeiro','RJ','22000212','1995-09-11',27,'M',1700000000,26000,0),
('5576228758','Petra Oliveira','R. Benicio de Abreu',' ','Lapa', 'São Paulo','SP','88192029','1995-11-14',27,'F',700000000,16000,1),
('5648641702','Paulo Cesar Mattos','Rua Helio Beltrao',' ','Tijuca', 'Rio de Janeiro','RJ','21002020','1991-08-30',31,'M',1200000000,22000,0),
('5840119709','Gabriel Araujo','R. Manuel de Oliveira',' ','Santo Amaro', 'São Paulo','SP','80010221','1985-03-16',37,'M',1400000000,21000,1),
('7771579779','Marcelo Mattos','R. Eduardo Luis Lopes',' ','Bras', 'São Paulo','SP','88202912','1992-03-25',30,'M',1200000000,20000,1),
('8502682733','Valdeci da Silva','R. Srg. Edison de Oliveira',' ','Jardins', 'São Paulo','SP','82122020','1995-10-07',27,'M',1100000000,19000,0),
('8719655770','Carlos Eduardo','Av. Gen. Guedes da Fontoura',' ','Jardins', 'São Paulo','SP','81192002','1983-12-20',39,'M',2000000000,24000,0),
('9283760794','Edson Meilelles','R. Pinto de Azevedo',' ','Cidade Nova', 'Rio de Janeiro','RJ','22002002','1995-10-07',27,'M',1500000000,25000,1),
('94387575700','Walber Lontra','R. Cel. Almeida',' ','Piedade', 'Rio de Janeiro','RJ','22000201','1989-06-20',33,'M',600000000,12000,1),
('95939180787','Fabio Carvalho','R. dos Jacarandas da Peninsula',' ','Barra da Tijuca', 'Rio de Janeiro','RJ','22002020','1992-01-05',31,'M',900000000,18000,1);


