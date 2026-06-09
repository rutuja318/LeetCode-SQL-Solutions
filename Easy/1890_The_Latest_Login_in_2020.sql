-- =============================================
-- Problem: The Latest Login in 2020
-- Difficulty: Easy
-- LeetCode #1890
-- Date: 08 June 2026
-- =============================================

-- Problem:
-- Find latest login for each user in 2020
-- Exclude users who did not login in 2020

-- Solution:
SELECT user_id,
       MAX(time_stamp) AS last_stamp
FROM Logins
WHERE YEAR(time_stamp) = 2020
GROUP BY user_id;

-- How it works:
-- WHERE YEAR(time_stamp) = 2020
--   → filters only 2020 logins
--   → automatically excludes non-2020 users!
-- MAX(time_stamp) → latest login per user
-- GROUP BY user_id → one row per user

-- Key learning:
-- YEAR() extracts year from datetime
-- MAX() on datetime → returns latest date!
-- WHERE before GROUP BY → filters first!

-- Concepts used: YEAR(), MAX(), GROUP BY,
--                datetime filtering
-- =============================================
