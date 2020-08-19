-- create a nonclustered index on a LastName column of the Access's Access File table.

USE Access;

 CREATE NONCLUSTERED INDEX IX_Access File_LastName 
 ON dbo.Acces File (LastName ASC);
