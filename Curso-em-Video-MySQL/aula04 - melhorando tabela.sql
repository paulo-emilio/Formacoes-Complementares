# drop database cadastro;   -> Apagando base de dados
create database cadastro
default character set  utf8
default collate utf8_general_ci;  # criando database com a configuração de caracteres bacana

use cadastro;

create table pessoas (
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('M', 'F'),  # só reconhece M ou F
peso decimal (5,2),  # 5 casas totais, 2 após a vírgula
altura decimal (3,2),
nacionalidade varchar(20) default 'Brasil',  # nacionalidade padrão vai ser Brasil
primary key (id)  
) default charset = utf8;