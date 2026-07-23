-- ═══════════════════════════════════════════════════════
-- Problem: 185. Department Top Three Salaries
-- Difficulty: Hard
-- Topics: Database
-- Runtime: 1157 ms (Beats 33.7%)
-- Memory: 0B (Beats 100.0%)
-- Submitted: Jul 23, 2026
-- Link: https://leetcode.com/problems/department-top-three-salaries/
-- ═══════════════════════════════════════════════════════

# Write your MySQL query statement below
WITH RankedSalaries AS (
    SELECT 
        d.name AS Department,
        e.name AS Employee,
        e.salary AS Salary,
        DENSE_RANK() OVER (
            PARTITION BY e.departmentId 
            ORDER BY e.salary DESC
        ) AS rnk
    FROM Employee e
    JOIN Department d ON e.departmentId = d.id
)
SELECT 
    Department,
    Employee,
    Salary
FROM RankedSalaries
WHERE rnk <= 3;
