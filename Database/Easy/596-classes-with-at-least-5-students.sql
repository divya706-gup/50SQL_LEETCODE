-- ═══════════════════════════════════════════════════════
-- Problem: 596. Classes With at Least 5 Students
-- Difficulty: Easy
-- Topics: Database
-- Runtime: 362 ms (Beats 26.9%)
-- Memory: 0B (Beats 100.0%)
-- Submitted: Jul 21, 2026
-- Link: https://leetcode.com/problems/classes-with-at-least-5-students/
-- ═══════════════════════════════════════════════════════

# Write your MySQL query statement below
SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(student)>=5;
