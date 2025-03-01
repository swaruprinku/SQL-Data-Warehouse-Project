create table bronze.crm_cust_info(
cst_id INT,
cst_key NVARCHAR(50),
cst_firstname NVARCHAR(50),
cst_lastname NVARCHAR(50),
cst_material_status NVARCHAR(50),
cst_gndr NVARCHAR(50),
cst_create_date DATE
)

CREATE TABLE bronze.crm_prd_info (
    prd_id INT,
    prd_key NVARCHAR(50),
    prd_nm NVARCHAR(50),
    prd_cost INT,
    prd_line NVARCHAR(50),
    prd_start_dt DATETIME,
    prd_end_dt DATETIME
);

-- Create table 'crm_sales_details' in 'bronze' schema using source file: sales_details.csv
-- This table holds raw sales transaction data ingested from the CRM source system

CREATE TABLE bronze.crm_sales_details (
    sls_ord_num NVARCHAR(50),
    sls_prd_key NVARCHAR(50),
    sls_cust_id INT,
    sls_order_dt INT,
    sls_ship_dt INT,
    sls_due_dt INT,
    sls_sales INT,
    sls_quantity INT,
    sls_price INT
);

-- Create table 'erp_loc_a101' in 'bronze' schema
-- Stores location data from ERP system

CREATE TABLE bronze.erp_loc_a101 (
    cid NVARCHAR(50),
    cntry NVARCHAR(50)
);


-- Create table 'erp_cust_az12' in 'bronze' schema
-- Stores customer demographic data from ERP system

CREATE TABLE bronze.erp_cust_az12 (
    cid NVARCHAR(50),
    bdate DATE,
    gen NVARCHAR(50)
);

-- Create table 'erp_px_cat_g1v2' in 'bronze' schema
-- Stores product category and maintenance data from ERP system


CREATE TABLE bronze.erp_px_cat_g1v2 (
    id NVARCHAR(50),
    cat NVARCHAR(50),
    subcat NVARCHAR(50),
    maintenance NVARCHAR(50)
);

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
