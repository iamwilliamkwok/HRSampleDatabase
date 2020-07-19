--USE master
--GO

-- Create database
DECLARE @dbname NVARCHAR(128)
SET @dbname = N'hr-sample-db'
IF NOT EXISTS(SELECT 1 FROM sys.databases WHERE name=@dbname)
BEGIN
	EXEC ('CREATE DATABASE "' + @dbname + '"')
	PRINT 'Created database ' + @dbname
END
ELSE
BEGIN
    PRINT 'Database ' + @dbname + ' already exists'
END
