CREATE LOGIN loki WITH PASSWORD = 'loki@123';

--USUARIO WINDOWS

CREATE LOGIN [DESKTOP-XXXXX\poliveira] FROM WINDOWS;


--logins e senhas
SELECT * FROM MASTER.SYS.sql_logins;

SELECT name, LOGINPROPERTY(name, 'PasswordLastSetTime') FROM MASTER.SYS.sql_logins;

SELECT name, password_hash  FROM MASTER.SYS.sql_logins;

CREATE LOGIN pedro WITH PASSWORD = 'pedro';

SELECT name FROM MASTER.SYS.sql_logins
WHERE PWDCOMPARE(name, password_hash) = 1;

CREATE LOGIN joao WITH PASSWORD = 'joao123';

SELECT name FROM MASTER.SYS.sql_logins
WHERE PWDCOMPARE(name + '123', password_hash) = 1;


--Dar permissões a usuários

ALTER SERVER ROLE [dbcreator] ADD MEMBER [loki];

--Remover autorização

ALTER SERVER ROLE [dbcreator] DROP MEMBER [marcos];

--Lista de regras do SQL Server

SELECT * FROM sys.server_principals WHERE is_fixed_role = 1;

--Regra sysadmin: usuários com controle total sobre o servidor e de todos os objetos do banco de dados. Por exemplo, o usuário sa é sysadmin;
--Regra securityadmin: usuários com poder de gerenciar as funções de servidor de logins e de permissões. Desse modo, pode criar usuário e dar permissões a esses usuários;
--Regra serveradmin: usuários com poder de gerenciar as configurações a nível de servidor e também gerenciar o servidor como um todo.
--Regra setupadmin: usuários com poder de gerenciar as instalações de SQL Servers;
--Regra processadmin: usuários com poder de gerenciar de processos que são executados dentro do servidor do SQL Server;
--Regra diskadmin: usuários com poder de gerenciar os discos associados as bases de dados do SQL Server;
--Regra dbcreator: usuários com poder de criar, alterar, excluir e restaurar banco de dados;
--Regra bulkadmin: usuários com poder de executar operações de importação e exportação de dados em massa, usando uma função interna do SQL Server chamada BULK INSERT.
