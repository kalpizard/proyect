:ON ERROR EXIT

PRINT 'RUNNING DB-CREATE.SQL, CREATING TINYTDS TEST DATABASE';
IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'tinytdstest')
BEGIN
  CREATE DATABASE [tinytdstest];
END
GO

IF EXISTS (SELECT name FROM master.dbo.sysdatabases WHERE name LIKE 'tinytdstest')
BEGIN
  PRINT 'TINY TDS TEST DB SUCCESSFULY CREATED';
END
ELSE
BEGIN
  THROW 51000, 'TINY TDS TEST DB CREATION FAILED', 1;
END
GO
