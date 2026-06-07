-- =============================================
-- Problem: Find Total Time Spent by Each Employee
-- Difficulty: Easy
-- LeetCode #1741
-- Date: 07 June 2026
-- =============================================

-- Problem:
-- Calculate total time spent by each employee
-- on each day at office
-- time = out_time - in_time per entry
-- employee can enter and leave multiple times!

-- Solution:
SELECT event_day AS day,
       emp_id,
       SUM(out_time - in_time) AS total_time
FROM Employees
GROUP BY emp_id, event_day;

-- How it works:
-- out_time - in_time → time for ONE entry
-- SUM(...) → adds ALL entries per employee per day
-- GROUP BY emp_id, event_day → per employee per day

-- Key learning:
-- Never forget SUM when employee has
-- multiple entries per day!
-- Without SUM → only gets one entry's time!

-- Concepts used: SUM, GROUP BY, date alias
-- =============================================
