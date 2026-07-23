-- ═══════════════════════════════════════════════════════
-- Problem: 176. Second Highest Salary
-- Difficulty: Medium
-- Topics: Database
-- Runtime: 429 ms (Beats 7.3%)
-- Memory: 0B (Beats 100.0%)
-- Submitted: Jul 23, 2026
-- Link: https://leetcode.com/problems/second-highest-salary/
-- ═══════════════════════════════════════════════════════

# Write your MySQL query statement below
SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (
    SELECT MAX(salary) 
    FROM Employee
);
