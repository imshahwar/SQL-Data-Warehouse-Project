/*
=============================================================
Create Database and Schemas
=============================================================
Script Purpose:
    This script creates a new database named 'DataWarehouse' after checking if it already exists. 
    If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas 
    within the database: 'bronze', 'silver', and 'gold'.
	
WARNING:
    Running this script will drop the entire 'DataWarehouse' database if it exists. 
    All data in the database will be permanently deleted. Proceed with caution 
    and ensure you have proper backups before running this script.
*/


-- Create the main database for our data warehouse
USE Masters;

-- Create the DataWarehouse database which will contain our layered architecture
CREATE DATABASE DataWarehouse;

-- Switch to the newly created database
USE DataWarehouse;

-- Create the Bronze schema for raw, unprocessed data
-- This layer maintains the original data exactly as received from source systems
CREATE SCHEMA bronze;

-- Create the Silver schema for cleaned and validated data
-- In this layer we apply data quality checks and basic transformations
CREATE SCHEMA silver;

-- Create the Gold schema for business-ready data
-- This layer contains aggregated, enriched data optimized for analytics and reporting
CREATE SCHEMA gold;
