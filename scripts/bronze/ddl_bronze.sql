/*
===============================================================================
DDL Script: Create Bronze Tables
===============================================================================

Script Purpose:

    This script creates tables in the 'bronze' schema, dropping existing tables
    if they already exist.

    Run this script to re-define the DDL structure of 'bronze' Tables

===============================================================================
*/


If OBJECT_ID ('bronze.crm_cust_info', 'U') is not null
	drop table bronze.crm_cust_info;
Create Table bronze.crm_cust_info (
	cst_id int,
	cst_key nvarchar(50),
	cst_firstname nvarchar(50),
	cst_lastname nvarchar(50),
	cst_marital_status nvarchar(50),
	cst_gender nvarchar(50),
	cst_create_date date
);

If OBJECT_ID ('bronze.crm_prod_info', 'U') is not null
	drop table bronze.crm_prod_info;
Create Table bronze.crm_prod_info (
	prd_id int,
	prd_key nvarchar(50),
	prd_nm nvarchar(50),
	prd_cost int,
	prd_line nvarchar(50),
	prd_start_dt datetime,
	prd_end_dt datetime
);

If OBJECT_ID ('bronze.crm_sales_details', 'U') is not null
	drop table bronze.crm_sales_details;
Create Table bronze.crm_sales_details (
	sls_ord_num nvarchar(50),
	sls_prd_key nvarchar(50),
	sls_cust_id int,
	sls_order_dt int,
	sls_ship_dt int,
	sls_due_dt int,
	sls_sales int,
	sls_quantity int,
	sls_price int
);

If OBJECT_ID ('bronze.erp_loc_a101', 'U') is not null
	drop table bronze.erp_loc_a101;
Create Table bronze.erp_loc_a101 (
	cid nvarchar(50),
	cntry nvarchar(50)
);

If OBJECT_ID ('bronze.erp_cust_az12', 'U') is not null
	drop table bronze.erp_cust_az12;
Create Table bronze.erp_cust_az12 (
	cid nvarchar(50),
	bdate date,
	gen nvarchar(50)
);

If OBJECT_ID ('bronze.erp_px_cat_g1v2', 'U') is not null
	drop table bronze.erp_px_cat_g1v2;
Create Table bronze.erp_px_cat_g1v2 (
	id nvarchar(50),
	cat nvarchar(50),
	subcat nvarchar(50),
	maintenance nvarchar(50)
);
