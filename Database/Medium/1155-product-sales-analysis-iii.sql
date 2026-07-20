-- ═══════════════════════════════════════════════════════
-- Problem: 1155. Product Sales Analysis III
-- Difficulty: Medium
-- Topics: Database
-- Runtime: 734 ms (Beats 52.7%)
-- Memory: 0B (Beats 100.0%)
-- Submitted: Jul 20, 2026
-- Link: https://leetcode.com/problems/product-sales-analysis-iii/
-- ═══════════════════════════════════════════════════════

# Write your MySQL query statement below
SELECT 
    product_id, 
    year AS first_year, 
    quantity, 
    price
FROM 
    Sales
WHERE 
    (product_id, year) IN (
        SELECT 
            product_id, 
            MIN(year) 
        FROM 
            Sales 
        GROUP BY 
            product_id
    );
