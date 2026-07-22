-- ═══════════════════════════════════════════════════════
-- Problem: 180. Consecutive Numbers
-- Difficulty: Medium
-- Topics: Database
-- Runtime: 662 ms (Beats 18.7%)
-- Memory: 0B (Beats 100.0%)
-- Submitted: Jul 22, 2026
-- Link: https://leetcode.com/problems/consecutive-numbers/
-- ═══════════════════════════════════════════════════════

# Write your MySQL query statement below
SELECT DISTINCT
    l1.num AS ConsecutiveNums
FROM
    Logs l1
    JOIN Logs l2 ON l1.id = l2.id - 1
    JOIN Logs l3 ON l1.id = l3.id - 2
WHERE
    l1.num = l2.num
    AND l2.num = l3.num;

