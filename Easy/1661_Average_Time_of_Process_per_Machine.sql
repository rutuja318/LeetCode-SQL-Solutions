-- =============================================
-- Problem: Average Time of Process per Machine
-- Difficulty: Medium
-- LeetCode #1661
-- Date: 03 June 2026
-- =============================================

-- Problem:
-- Find average time each machine takes
-- to complete a process
-- end timestamp - start timestamp = process time

-- Solution:
SELECT A1.machine_id,
ROUND(AVG(A2.timestamp - A1.timestamp), 3)
AS processing_time
FROM Activity AS A1
JOIN Activity AS A2
ON A1.machine_id = A2.machine_id
AND A1.process_id = A2.process_id
AND A1.activity_type = 'start'
AND A2.activity_type = 'end'
GROUP BY A1.machine_id;

-- Concepts used: SELF JOIN, AVG, ROUND,
--                GROUP BY, activity_type filter
-- Key learning: Use SELF JOIN when start and end
--               are in different rows same table!
-- =============================================
