-- ═══════════════════════════════════════════════════════
-- Problem: 196. Delete Duplicate Emails
-- Difficulty: Easy
-- Topics: Database
-- Runtime: 1115 ms (Beats 7.5%)
-- Memory: 0B (Beats 100.0%)
-- Submitted: Jul 23, 2026
-- Link: https://leetcode.com/problems/delete-duplicate-emails/
-- ═══════════════════════════════════════════════════════

# Write your MySQL query statement below
DELETE p1 
FROM Person p1, Person p2
WHERE p1.email = p2.email 
  AND p1.id > p2.id;
