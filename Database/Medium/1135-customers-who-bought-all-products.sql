-- ═══════════════════════════════════════════════════════
-- Problem: 1135. Customers Who Bought All Products
-- Difficulty: Medium
-- Topics: Database
-- Runtime: 643 ms (Beats 26.0%)
-- Memory: 0B (Beats 100.0%)
-- Submitted: Jul 21, 2026
-- Link: https://leetcode.com/problems/customers-who-bought-all-products/
-- ═══════════════════════════════════════════════════════

# Write your MySQL query statement below
SELECT customer_id
FROM Customer
GROUP BY customer_id
HAVING COUNT(DISTINCT product_key) = (
    SELECT COUNT(*) 
    FROM Product
);
