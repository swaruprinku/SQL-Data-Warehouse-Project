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

