Create Database and Schemas

Script Purpose:
    This Script creates a new database named 'DataWarehouse' after checking if it already exists.
    If the database exists, it is dropped and recreated. Additionally, the cript sets up three schemas
    within the database: 'brinze', 'silver', 'gold'.

Warning: 
    Running this script will drop the entire 'DataWarehouse' database if it exists.
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script
*/

USE master;
GO

CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

CREATE SCHEMA Bronze;
GO

CREATE SCHEMA Silver;
GO

CREATE SCHEMA Gold;
GO
