-- ═══════════════════════════════════════════════════════
-- Problem: 1245. User Activity for the Past 30 Days I
-- Difficulty: Easy
-- Topics: Database
-- Runtime: 504 ms (Beats 58.1%)
-- Memory: 0B (Beats 100.0%)
-- Submitted: Jul 20, 2026
-- Link: https://leetcode.com/problems/user-activity-for-the-past-30-days-i/
-- ═══════════════════════════════════════════════════════

# Write your MySQL query statement below
SELECT 
    activity_date AS day, 
    COUNT(DISTINCT user_id) AS active_users
FROM 
    Activity
WHERE 
    activity_date > '2019-06-27' AND activity_date <= '2019-07-27'
GROUP BY 
    activity_date;
