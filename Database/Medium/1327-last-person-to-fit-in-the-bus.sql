-- ═══════════════════════════════════════════════════════
-- Problem: 1327. Last Person to Fit in the Bus
-- Difficulty: Medium
-- Topics: Database
-- Runtime: 927 ms (Beats 37.3%)
-- Memory: 0B (Beats 100.0%)
-- Submitted: Jul 22, 2026
-- Link: https://leetcode.com/problems/last-person-to-fit-in-the-bus/
-- ═══════════════════════════════════════════════════════

# Write your MySQL query statement below
SELECT person_name
FROM (
    SELECT 
        person_name,
        SUM(weight) OVER (ORDER BY turn) AS cumulative_weight
    FROM Queue
) AS total_weights
WHERE cumulative_weight <= 1000
ORDER BY cumulative_weight DESC
LIMIT 1;
