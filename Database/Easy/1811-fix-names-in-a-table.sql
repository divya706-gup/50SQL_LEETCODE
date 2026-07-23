-- ═══════════════════════════════════════════════════════
-- Problem: 1811. Fix Names in a Table
-- Difficulty: Easy
-- Topics: Database
-- Runtime: 825 ms (Beats 13.8%)
-- Memory: 0B (Beats 100.0%)
-- Submitted: Jul 23, 2026
-- Link: https://leetcode.com/problems/fix-names-in-a-table/
-- ═══════════════════════════════════════════════════════

# Write your MySQL query statement below
SELECT 
    user_id,
    CONCAT(
        UPPER(SUBSTRING(name, 1, 1)),
        LOWER(SUBSTRING(name, 2))
    ) AS name
FROM Users
ORDER BY user_id;
