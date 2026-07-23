-- ═══════════════════════════════════════════════════════
-- Problem: 1664. Find Users With Valid E-Mails
-- Difficulty: Easy
-- Topics: Database
-- Runtime: 951 ms (Beats 15.1%)
-- Memory: 0B (Beats 100.0%)
-- Submitted: Jul 23, 2026
-- Link: https://leetcode.com/problems/find-users-with-valid-e-mails/
-- ═══════════════════════════════════════════════════════

# Write your MySQL query statement below
SELECT user_id, name, mail
FROM Users
WHERE mail REGEXP '^[a-zA-Z][a-zA-Z0-9_.-]*@leetcode[.]com$'
  AND BINARY mail LIKE '%@leetcode.com';
