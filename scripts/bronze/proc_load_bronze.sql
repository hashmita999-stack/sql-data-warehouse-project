/*
==================================================================================
Stored Purpose:
This stored procedure loads data into the bronze schema from external CSV files.
It performs the following actions.
- Truncate the bronze tables before loading data.
- Uses the 'BULK INSERT' command to load data from csv Files to bronze tables.

Parameters:
None.
This stored procedure does not accept any parameters or return any values.

Usage example: EXEC bronze.load_bronze;
==================================================================================
*/

CREATE OR ALTER PROCEDURE Bronze.load_bronze AS 
BEGIN 
TRUNCATE TABLE Bronze.crm_cust_info
	BULK INSERT Bronze.crm_cust_info
	FROM 'C:\Users\Hashmita\Downloads\sql\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
	WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
	)

	BULK INSERT Bronze.crm_prd_info
	FROM 'C:\Users\Hashmita\Downloads\sql\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
	WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
	)

	BULK INSERT Bronze.crm_sales_details
	FROM 'C:\Users\Hashmita\Downloads\sql\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
	WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
	)

	BULK INSERT Bronze.erp_cust_az12
	FROM 'C:\Users\Hashmita\Downloads\sql\sql-data-warehouse-project\datasets\source_erp\cust_az12.csv'
	WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
	)

	BULK INSERT Bronze.erp_loc_a101
	FROM 'C:\Users\Hashmita\Downloads\sql\sql-data-warehouse-project\datasets\source_erp\loc_a101.csv'
	WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
	)

	BULK INSERT Bronze.erp_px_cat_g1v2
	FROM 'C:\Users\Hashmita\Downloads\sql\sql-data-warehouse-project\datasets\source_erp\px_cat_g1v2.csv'
	WITH (
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
	); 
	END
