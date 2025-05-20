-- retail_data_setup.sql
-- Created: 2023-11-15
-- Purpose: Create and verify retail_data table

-- Create table with all columns including Gross Margin
CREATE TABLE retail_data (
    "Date" DATE NOT NULL,
    "Store" VARCHAR(10) NOT NULL,
    "Region" VARCHAR(20) NOT NULL,
    "Product Category" VARCHAR(50) NOT NULL,
    "Product Subcategory" VARCHAR(50) NOT NULL,
    "Units Sold" INTEGER,
    "Unit Price" DECIMAL(10,2),
    "Marketing Spend" DECIMAL(12,2),
    "Revenue" DECIMAL(12,2),
    "COGS" DECIMAL(12,2),
    "Gross Profit" DECIMAL(12,2),
    "Net Profit" DECIMAL(12,2),
    "Gross Margin" DECIMAL(5,4)
);

-- Check all the data
SELECT * FROM retail_data

-- Check first 5 rows
SELECT * FROM retail_data LIMIT 5;

-- Verify row count matches CSV
SELECT COUNT(*) FROM retail_data;

-- Check Gross Margin calculation
SELECT 
    "Gross Profit"/"Revenue" AS calculated_margin,
    "Gross Margin" AS imported_margin 
FROM retail_data 
LIMIT 5;
