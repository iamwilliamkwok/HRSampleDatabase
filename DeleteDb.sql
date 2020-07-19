--USE master
--GO

-- Delete database
DECLARE @dbname NVARCHAR(128)
SET @dbname = N'hr-sample-db'

IF EXISTS(SELECT 1 FROM sys.databases WHERE name=@dbname)
BEGIN
	  EXEC ('DROP DATABASE "' + @dbname + '"')
	  PRINT 'Deleted database ' + @dbname
END
ELSE
BEGIN
    PRINT 'Database ' + @dbname + ' does not exist'
END
GO
