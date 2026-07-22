-- ═══════════════════════════════════════════════════════
-- Problem: 2057. Count Salary Categories
-- Difficulty: Medium
-- Topics: Database
-- Runtime: 2094 ms (Beats 5.7%)
-- Memory: 0B (Beats 100.0%)
-- Submitted: Jul 22, 2026
-- Link: https://leetcode.com/problems/count-salary-categories/
-- ═══════════════════════════════════════════════════════

# Write your MySQL query statement below
SELECT 
    'Low Salary' AS category,
    COUNT(account_id) AS accounts_count
FROM 
    Accounts
WHERE 
    income < 20000

UNION ALL

SELECT 
    'Average Salary' AS category,
    COUNT(account_id) AS accounts_count
FROM 
    Accounts
WHERE 
    income >= 20000 AND income <= 50000

UNION ALL

SELECT 
    'High Salary' AS category,
    COUNT(account_id) AS accounts_count
FROM 
    Accounts
WHERE 
    income > 50000;
