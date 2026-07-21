-- ═══════════════════════════════════════════════════════
-- Problem: 1877. Find Followers Count
-- Difficulty: Easy
-- Topics: Database
-- Runtime: 598 ms (Beats 33.6%)
-- Memory: 0B (Beats 100.0%)
-- Submitted: Jul 21, 2026
-- Link: https://leetcode.com/problems/find-followers-count/
-- ═══════════════════════════════════════════════════════

# Write your MySQL query statement below
SELECT user_id,COUNT(follower_id) AS followers_count
FROM Followers
GROUP BY user_id
ORDER BY user_id ASC;
