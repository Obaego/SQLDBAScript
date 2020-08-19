-- switch to the database
USE WideWorldImporters;
GO

BEGIN TRANSACTION
SELECT * FROM Sales.Invoices
WITH (TABLOCK, XLOCK, HOLDLOCK)
-- ROLLBACK TRANSACTION;
GO

-- execute in a second query window
SELECT * FROM Sales.Invoices;

-- investigate blocking
EXEC SP_WHO;
EXEC SP_WHO '51';

SELECT * FROM sys.dm_os_waiting_tasks;
GO
SELECT * FROM sys.dm_tran_locks;
Go

-- find details
SELECT DB_NAME(0) AS 'Database Name',
       OBJECT_SCHEMA_NAME(2018106230) AS 'schema Name',
       OBJECT_NAME(2018106230) AS 'Table Name';
GO