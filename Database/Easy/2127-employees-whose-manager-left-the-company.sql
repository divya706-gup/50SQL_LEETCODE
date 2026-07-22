-- ═══════════════════════════════════════════════════════
-- Problem: 2127. Employees Whose Manager Left the Company
-- Difficulty: Easy
-- Topics: Database
-- Runtime: 508 ms (Beats 7.1%)
-- Memory: 0B (Beats 100.0%)
-- Submitted: Jul 22, 2026
-- Link: https://leetcode.com/problems/employees-whose-manager-left-the-company/
-- ═══════════════════════════════════════════════════════

# Write your MySQL query statement below
SELECT employee_id
FROM Employees
WHERE salary < 30000
  AND manager_id IS NOT NULL
  AND manager_id NOT IN (
      SELECT employee_id 
      FROM Employees
  )
ORDER BY employee_id;
