/* Colunas:
CPF;
Nome Completo;
Endereço Completo;
Data de Nascimento;
Idade;
Sexo;
Limite de Crédito;
Volume mínimo de compra de produto;
Se já realizou alguma compra na empresa */

CREATE TABLE [TABELA DE CLIENTES](

CPF CHAR (11),
NOME VARCHAR (150),
RUA VARCHAR (150),
COMPLEMENTO VARCHAR (150),
BAIRRO VARCHAR (150),
CIDADE VARCHAR (150),
ESTADO CHAR (2),
CEP CHAR (8),
[DATA DE NASCIMENTO] DATE,
IDADE SMALLINT,
SEXO CHAR (1),
[LIMITE DE CREDITO] MONEY,
[VOLUME  MINIMO] FLOAT,
[PRIMEIRA COMPRA] BIT
);

/* Colunas:
código do produto,
nome do produto,
embalagem,
tamanho,
sabor
preço de lista */

CREATE TABLE [TABELA DE PRODUTOS](

[CODIGO DO PRODUTO] VARCHAR (20) NOT NULL PRIMARY KEY,
[NOME DO PRODUTO] VARCHAR (50),
EMBALAGEM VARCHAR (50),
TAMANHO VARCHAR (50),
SABOR VARCHAR (50),
[PRECO DE LISTA] SMALLMONEY
);

ALTER TABLE[TABELA DE CLIENTES]
ALTER COLUMN CPF CHAR (11) NOT NULL;

ALTER TABLE [TABELA DE CLIENTES]
ADD CONSTRAINT PK_TABELA_CLIENTE
PRIMARY KEY CLUSTERED (CPF);

/* DESAFIO:
O nome da tabela deve ser TABELA DE VENDEDORES.
Vendedor tem como chave o número interno da matrícula (Nome do campo MATRICULA) que deve ser um texto de 5 posições.
O nome do vendedor (Nome do campo NOME) deve ser um texto de 100 posições.
% de comissão. Este campo (Nome do campo PERCENTUAL COMISSÃO) representa o percentual de comissão garantida pelo vendedor sobre cada venda. */

CREATE TABLE [TABELA DE VENDEDORES](
MATRICULA VARCHAR (5) NOT NULL PRIMARY KEY,
NOME VARCHAR (100) NOT NULL,
[PERCENTUAL COMISSAO] DECIMAL (5,2)
);