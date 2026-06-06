-- =============================================
-- Problem: Daily Leads and Partners
-- Difficulty: Easy
-- LeetCode #1693
-- Date: 03 June 2026
-- =============================================

-- Problem:
-- For each date_id and make_name find:
-- 1. Number of distinct lead_ids
-- 2. Number of distinct partner_ids

-- Solution:
SELECT date_id,
       make_name,
       COUNT(DISTINCT lead_id) AS unique_leads,
       COUNT(DISTINCT partner_id) AS unique_partners
FROM DailySales
GROUP BY date_id, make_name;

-- How it works:
-- GROUP BY date_id, make_name →
--   groups each product per day separately
-- COUNT(DISTINCT lead_id) →
--   counts unique leads only (no duplicates)
-- COUNT(DISTINCT partner_id) →
--   counts unique partners only (no duplicates)

-- Key learning:
-- COUNT(lead_id) → counts ALL rows including duplicates
-- COUNT(DISTINCT lead_id) → counts UNIQUE values only!
-- Always use DISTINCT when question says "unique"!

-- Concepts used: COUNT DISTINCT, GROUP BY
-- =============================================
