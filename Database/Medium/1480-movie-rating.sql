-- ═══════════════════════════════════════════════════════
-- Problem: 1480. Movie Rating
-- Difficulty: Medium
-- Topics: Database
-- Runtime: 1657 ms (Beats 12.0%)
-- Memory: 0B (Beats 100.0%)
-- Submitted: Jul 22, 2026
-- Link: https://leetcode.com/problems/movie-rating/
-- ═══════════════════════════════════════════════════════

# Write your MySQL query statement below
(
    SELECT u.name AS results
    FROM MovieRating mr
    JOIN Users u ON mr.user_id = u.user_id
    GROUP BY u.user_id, u.name
    ORDER BY COUNT(mr.movie_id) DESC, u.name ASC
    LIMIT 1
)
UNION ALL
(
    SELECT m.title AS results
    FROM MovieRating mr
    JOIN Movies m ON mr.movie_id = m.movie_id
    WHERE mr.created_at LIKE '2020-02%'
    GROUP BY m.movie_id, m.title
    ORDER BY AVG(mr.rating) DESC, m.title ASC
    LIMIT 1
);
