--EXEC sp_revokelogin 'MSSQLSERVER\grupa11';
--EXEC sp_revokelogin 'MSSQLSERVER\grupa2';

CREATE LOGIN [MSSQLSERVER\grupa11] FROM WINDOWS WITH DEFAULT_DATABASE=[AdventureWorks];
EXEC sp_denylogin 'MSSQLSERVER\grupa2';
ALTER LOGIN [MSSQLSERVER\grupa2] WITH DEFAULT_DATABASE =[AdventureWorks];

--DROP USER grupa11;
--DROP USER grupa2;

--Do zadania 3
--CREATE USER grupa11 FOR LOGIN [MSSQLSERVER\grupa11];
--CREATE USER grupa2 FOR LOGIN [MSSQLSERVER\grupa2];