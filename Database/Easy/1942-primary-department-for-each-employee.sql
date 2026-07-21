-- ═══════════════════════════════════════════════════════
-- Problem: 1942. Primary Department for Each Employee
-- Difficulty: Easy
-- Topics: Database
-- Runtime: 678 ms (Beats 15.4%)
-- Memory: 0B (Beats 100.0%)
-- Submitted: Jul 21, 2026
-- Link: https://leetcode.com/problems/primary-department-for-each-employee/
-- ═══════════════════════════════════════════════════════

# Write your MySQL query statement below
SELECT 
    employee_id, 
    department_id
FROM 
    Employee
WHERE 
    primary_flag = 'Y'
    OR employee_id IN (
        SELECT employee_id
        FROM Employee
        GROUP BY employee_id
        HAVING COUNT(department_id) = 1
    );
