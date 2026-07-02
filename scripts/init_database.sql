IF EXISTS (SELECT * FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
DROP DATABASE DataWarehouse;
END;
GO

Database Creation: It creates the new database:
sql
CREATE DATABASE DataWarehouse;
GO

Schema Setup: It defines the three core layers of the data warehouse architecture:
sql
USE DataWarehouse;
GO
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
