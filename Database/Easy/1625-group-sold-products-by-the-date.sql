-- ═══════════════════════════════════════════════════════
-- Problem: 1625. Group Sold Products By The Date
-- Difficulty: Easy
-- Topics: Database
-- Runtime: 649 ms (Beats 7.2%)
-- Memory: 0B (Beats 100.0%)
-- Submitted: Jul 23, 2026
-- Link: https://leetcode.com/problems/group-sold-products-by-the-date/
-- ═══════════════════════════════════════════════════════

# Write your MySQL query statement below
SELECT 
    sell_date,
    COUNT(DISTINCT product) AS num_sold,
    GROUP_CONCAT(DISTINCT product ORDER BY product ASC SEPARATOR ',') AS products
FROM 
    Activities
GROUP BY 
    sell_date
ORDER BY 
    sell_date;
