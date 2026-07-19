-- ═══════════════════════════════════════════════════════
--  Problem  : 1075. Project Employees I
--  URL      : https://leetcode.com/problems/project-employees-i/?envType=study-plan-v2&envId=top-sql-50
--  Difficulty : Easy
--  Language : MySQL
--  Runtime  : 150 ms
--  Memory   : 0B
--  Solved   : July 19, 2026
-- ═══════════════════════════════════════════════════════

# Write your MySQL query statement
SELECT p.project_id,
IFNULL(ROUND(SUM(p.employee_id ) / SUM(p.project_id), 2), 0) AS average_years
FROM Project p
LEFT JOIN Employee e
ON p.employee_id=e.employee_id
