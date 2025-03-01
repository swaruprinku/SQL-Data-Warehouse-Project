--BULK INSERT SQL Statements
create or alter  procedure bronze.load_bronze as 
BEGIN
 pRINT('====================================')
 PRINT 'Loading the bronze layer'
  pRINT('====================================')
 
Truncate table bronze.crm_cust_info
BULK INSERT  bronze.crm_cust_info
FROM 'C:\Users\manor\OneDrive\Desktop\Data Warehouse\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
WITH (
FIRSTROW=2,
FIELDTERMINATOR=',',
TABLOCK

);

Truncate table bronze.crm_prd_info

BULK INSERT bronze.crm_prd_info
from 'C:\Users\manor\OneDrive\Desktop\Data Warehouse\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
with (
FIRSTROW=2,
FIELDTERMINATOR=',',
TABLOCK)
Truncate table bronze.crm_sales_details

BULK INSERT bronze.crm_sales_details
from 'C:\Users\manor\OneDrive\Desktop\Data Warehouse\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
with (
FIRSTROW=2,
FIELDTERMINATOR=',',
TABLOCK)

Truncate table bronze.erp_CUST_AZ12
BULK INSERT bronze.erp_CUST_AZ12
from 'C:\Users\manor\OneDrive\Desktop\Data Warehouse\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
with (
FIRSTROW=2,
FIELDTERMINATOR=',',
TABLOCK)
Truncate table bronze.erp_LOC_A101

BULK INSERT bronze.erp_LOC_A101
from 'C:\Users\manor\OneDrive\Desktop\Data Warehouse\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
with (
FIRSTROW=2,
FIELDTERMINATOR=',',
TABLOCK)
Truncate table bronze.erp_PX_CAT_G1V2

BULK INSERT bronze.erp_PX_CAT_G1V2
from 'C:\Users\manor\OneDrive\Desktop\Data Warehouse\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
with (
FIRSTROW=2,
FIELDTERMINATOR=',',
TABLOCK)

END
