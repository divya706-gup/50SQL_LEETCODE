-- ═══════════════════════════════════════════════════════
-- Problem: 1670. Patients With a Condition
-- Difficulty: Easy
-- Topics: Database
-- Runtime: 516 ms (Beats 11.7%)
-- Memory: 0B (Beats 100.0%)
-- Submitted: Jul 23, 2026
-- Link: https://leetcode.com/problems/patients-with-a-condition/
-- ═══════════════════════════════════════════════════════

# Write your MySQL query statement below
SELECT 
    patient_id, 
    patient_name, 
    conditions
FROM 
    Patients
WHERE 
    conditions LIKE 'DIAB1%' 
    OR conditions LIKE '% DIAB1%';
