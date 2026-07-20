-- ═══════════════════════════════════════════════════════
-- Problem: 1292. Immediate Food Delivery II
-- Difficulty: Medium
-- Topics: Database
-- Runtime: 766 ms (Beats 20.0%)
-- Memory: 0B (Beats 100.0%)
-- Submitted: Jul 20, 2026
-- Link: https://leetcode.com/problems/immediate-food-delivery-ii/
-- ═══════════════════════════════════════════════════════

# Write your MySQL query statement below
SELECT 
    ROUND(AVG(order_date = customer_pref_delivery_date) * 100, 2) AS immediate_percentage
FROM 
    Delivery
WHERE 
    (customer_id, order_date) IN (
        SELECT 
            customer_id, 
            MIN(order_date)
        FROM 
            Delivery
        GROUP BY 
            customer_id
    );
