-- Data Standardization & Consistency
SELECT DISTINCT
    REPLACE(cntry, CHAR(13), '') cntry
FROM silver.erp_loc_a101

SELECT * FROM silver.erp_loc_a101
