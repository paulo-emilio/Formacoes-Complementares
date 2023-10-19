--LOGIN
CREATE LOGIN jorge WITH PASSWORD = 'jorge@123';

--USER
CREATE USER jorge FOR LOGIN jorge;

--LOGIN VS USUÁRIO
--No SQL Server, "LOGIN" refere-se à entidade de autenticação no nível do servidor, que permite a entrada ao banco de dados. 
--Pode ser uma conta do Windows ou específica do SQL Server. "USUÁRIO" está relacionado a um banco de dados específico e 
--define permissões dentro desse banco. Um LOGIN pode ser associado a vários USUÁRIOS em diferentes bancos de dados. 
--A autenticação do Windows vincula o LOGIN a uma conta de usuário do Windows, enquanto a autenticação do SQL Server 
--cria credenciais independentes. LOGIN controla o acesso ao servidor, enquanto USUÁRIO controla o acesso e permissões 
--dentro de um banco de dados. Em resumo, LOGIN é para autenticação de servidor, enquanto USUÁRIO é para autorização e 
--controle de acesso em um banco de dados.