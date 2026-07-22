-- ═══════════════════════════════════════════════════════
-- Problem: 626. Exchange Seats
-- Difficulty: Medium
-- Topics: Database
-- Runtime: 850 ms (Beats 5.0%)
-- Memory: 0B (Beats 100.0%)
-- Submitted: Jul 22, 2026
-- Link: https://leetcode.com/problems/exchange-seats/
-- ═══════════════════════════════════════════════════════

# Write your MySQL query statement below
SELECT 
    id,
    CASE 
        WHEN id % 2 = 1 THEN COALESCE(LEAD(student) OVER (ORDER BY id), student)
        ELSE LAG(student) OVER (ORDER BY id)
    END AS student
FROM 
    Seat;
