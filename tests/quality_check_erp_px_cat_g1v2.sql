-- Check for unwanted Spaces
SELECT * FROM silver.erp_px_cat_g1v2
WHERE cat != TRIM(cat) OR subcat != TRIM(subcat) OR maintenance != TRIM(maintenance)

-- Data Standardization & Consistency
SELECT DISTINCT
    subcat
FROM silver.erp_px_cat_g1v2

SELECT * FROM silver.erp_px_cat_g1v2    
