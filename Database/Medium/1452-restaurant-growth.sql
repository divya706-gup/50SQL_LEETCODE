-- ═══════════════════════════════════════════════════════
-- Problem: 1452. Restaurant Growth
-- Difficulty: Medium
-- Topics: Database
-- Runtime: 424 ms (Beats 14.6%)
-- Memory: 0B (Beats 100.0%)
-- Submitted: Jul 22, 2026
-- Link: https://leetcode.com/problems/restaurant-growth/
-- ═══════════════════════════════════════════════════════

# Write your MySQL query statement below
WITH DailyAmount AS (
       SELECT 
        visited_on,
        SUM(amount) AS amount
    FROM Customer
    GROUP BY visited_on
),
MovingStats AS (
    
    SELECT 
        visited_on,
        SUM(amount) OVER (
            ORDER BY visited_on 
            RANGE BETWEEN INTERVAL 6 DAY PRECEDING AND CURRENT ROW
        ) AS amount,
        ROUND(
            AVG(amount) OVER (
                ORDER BY visited_on 
                RANGE BETWEEN INTERVAL 6 DAY PRECEDING AND CURRENT ROW
            ), 2
        ) AS average_amount,
        
        DATEDIFF(visited_on, MIN(visited_on) OVER ()) AS days_from_start
    FROM DailyAmount
)

SELECT 
    visited_on,
    amount,
    average_amount
FROM MovingStats
WHERE days_from_start >= 6
ORDER BY visited_on ASC;
