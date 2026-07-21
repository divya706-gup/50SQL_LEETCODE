-- ═══════════════════════════════════════════════════════
-- Problem: 1882. The Number of Employees Which Report to Each Employee
-- Difficulty: Easy
-- Topics: Database
-- Runtime: 859 ms (Beats 10.3%)
-- Memory: 0B (Beats 100.0%)
-- Submitted: Jul 21, 2026
-- Link: https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/
-- ═══════════════════════════════════════════════════════

# Write your MySQL query statement below
SELECT 
    m.employee_id,
    m.name,
    COUNT(e.employee_id) AS reports_count,
    ROUND(AVG(e.age)) AS average_age
FROM Employees e
JOIN Employees m 
    ON e.reports_to = m.employee_id
GROUP BY m.employee_id, m.name
ORDER BY m.employee_id;
