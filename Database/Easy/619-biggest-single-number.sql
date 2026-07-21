-- ═══════════════════════════════════════════════════════
-- Problem: 619. Biggest Single Number
-- Difficulty: Easy
-- Topics: Database
-- Runtime: 494 ms (Beats 19.1%)
-- Memory: 0B (Beats 100.0%)
-- Submitted: Jul 21, 2026
-- Link: https://leetcode.com/problems/biggest-single-number/
-- ═══════════════════════════════════════════════════════

# Write your MySQL query statement below
SELECT MAX(num) AS num
FROM (
    SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) = 1
) AS single_numbers;
