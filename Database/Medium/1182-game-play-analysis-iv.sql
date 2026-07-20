-- ═══════════════════════════════════════════════════════
-- Problem: 1182. Game Play Analysis IV
-- Difficulty: Medium
-- Topics: Database
-- Runtime: 649 ms (Beats 25.6%)
-- Memory: 0B (Beats 100.0%)
-- Submitted: Jul 20, 2026
-- Link: https://leetcode.com/problems/game-play-analysis-iv/
-- ═══════════════════════════════════════════════════════

# Write your MySQL query statement below
SELECT 
    ROUND(COUNT(a.player_id) / (SELECT COUNT(DISTINCT player_id) FROM Activity), 2) AS fraction
FROM 
    (
        SELECT 
            player_id, 
            MIN(event_date) AS first_login
        FROM 
            Activity
        GROUP BY 
            player_id
    ) AS first_logins
JOIN 
    Activity a
ON 
    first_logins.player_id = a.player_id 
    AND a.event_date = DATE_ADD(first_logins.first_login, INTERVAL 1 DAY);
