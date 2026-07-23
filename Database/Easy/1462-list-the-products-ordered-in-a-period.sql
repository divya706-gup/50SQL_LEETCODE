-- ═══════════════════════════════════════════════════════
-- Problem: 1462. List the Products Ordered in a Period
-- Difficulty: Easy
-- Topics: Database
-- Runtime: 834 ms (Beats 25.7%)
-- Memory: 0B (Beats 100.0%)
-- Submitted: Jul 23, 2026
-- Link: https://leetcode.com/problems/list-the-products-ordered-in-a-period/
-- ═══════════════════════════════════════════════════════

# Write your MySQL query statement below
SELECT 
    p.product_name, 
    SUM(o.unit) AS unit
FROM Products p
JOIN Orders o 
    ON p.product_id = o.product_id
WHERE o.order_date LIKE '2020-02-%'
GROUP BY p.product_id, p.product_name
HAVING unit >= 100;
