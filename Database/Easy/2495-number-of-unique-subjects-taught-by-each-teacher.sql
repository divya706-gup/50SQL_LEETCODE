-- ═══════════════════════════════════════════════════════
-- Problem: 2495. Number of Unique Subjects Taught by Each Teacher
-- Difficulty: Easy
-- Topics: Database
-- Runtime: 585 ms (Beats 23.0%)
-- Memory: 0B (Beats 100.0%)
-- Submitted: Jul 20, 2026
-- Link: https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/
-- ═══════════════════════════════════════════════════════

# Write your MySQL query statement below
SELECT 
    teacher_id, 
    COUNT(DISTINCT subject_id) AS cnt
FROM 
    Teacher
GROUP BY 
    teacher_id;
