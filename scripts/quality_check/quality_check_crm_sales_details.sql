-- Check for Invalid Dates
-- SELECT
--     NULLIF(sls_order_dt, 0)
-- FROM silver.crm_sales_details
-- -- WHERE sls_order_dt <= 0 
-- -- OR LEN(sls_order_dt) != 8
-- -- OR sls_order_dt > 20500101
-- -- OR sls_order_dt < 19000101

--Check for invalid date orders
SELECT 
    *
FROM silver.crm_sales_details
WHERE sls_order_dt > sls_ship_dt OR sls_order_dt > sls_due_dt

-- Check Data Consistency: Between Sales, Quantity, and Price
-- >> Sales = Quantity * Price
-- >> Values must not be NULL, zero, or negative.
SELECT
    sls_sales,
    sls_quantity,
    sls_price
FROM silver.crm_sales_details
WHERE sls_sales != sls_quantity * sls_price
OR sls_sales IS NULL or sls_quantity IS NULL OR sls_price IS NULL
OR sls_sales <= 0 or sls_quantity <= 0 OR sls_price <= 0
ORDER BY sls_sales, sls_quantity, sls_price

SELECT * FROM silver.crm_sales_details
