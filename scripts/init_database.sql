/*
Create Database and Schemas

Purpose: To create a new database named 'DataWarehouse' after checking if already exists. 
If it exists the DB is dropped and recreated. And, the script sets up three schemsa : Bronze, Silver, Gold

Disclaimer:
	Running this script will drop the entire 'DataWarehouse' database if exists.
	Proceed with caution and ensure there is proper BACKUP
*/


-- Create Database 'DataWarehouse'

USE master;
GO

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;

-- create Schemas

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;

