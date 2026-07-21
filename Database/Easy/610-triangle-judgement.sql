-- ═══════════════════════════════════════════════════════
-- Problem: 610. Triangle Judgement
-- Difficulty: Easy
-- Topics: Database
-- Runtime: 311 ms (Beats 39.6%)
-- Memory: 0B (Beats 100.0%)
-- Submitted: Jul 21, 2026
-- Link: https://leetcode.com/problems/triangle-judgement/
-- ═══════════════════════════════════════════════════════

# Write your MySQL query statement below
SELECT 
    x,
    y,
    z,
    CASE 
        WHEN x + y > z AND x + z > y AND y + z > x THEN 'Yes'
        ELSE 'No'
    END AS triangle
FROM 
    Triangle;
