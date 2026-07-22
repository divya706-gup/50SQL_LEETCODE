-- ═══════════════════════════════════════════════════════
-- Problem: 602. Friend Requests II: Who Has the Most Friends
-- Difficulty: Medium
-- Topics: Database
-- Runtime: 626 ms (Beats 5.0%)
-- Memory: 0B (Beats 100.0%)
-- Submitted: Jul 22, 2026
-- Link: https://leetcode.com/problems/friend-requests-ii-who-has-the-most-friends/
-- ═══════════════════════════════════════════════════════

# Write your MySQL query statement below
WITH AllFriends AS (
    SELECT requester_id AS id FROM RequestAccepted
    UNION ALL
    SELECT accepter_id AS id FROM RequestAccepted
)
SELECT 
    id, 
    COUNT(*) AS num
FROM AllFriends
GROUP BY id
ORDER BY num DESC
LIMIT 1;
