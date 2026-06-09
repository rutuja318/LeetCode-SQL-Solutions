-- =============================================
-- Problem: Employees With Missing Information
-- Difficulty: Easy
-- LeetCode #1965
-- Date: 08 June 2026
-- =============================================

-- Problem:
-- Find employee IDs where either
-- name is missing OR salary is missing

-- Solution:
SELECT employee_id
FROM Salaries
WHERE employee_id NOT IN (
    SELECT employee_id FROM Employees
)

UNION

SELECT employee_id
FROM Employees
WHERE employee_id NOT IN (
    SELECT employee_id FROM Salaries
)

ORDER BY employee_id ASC;

-- How it works:
-- Part 1 → in Salaries but NOT in Employees
--          = name is missing!
-- Part 2 → in Employees but NOT in Salaries
--          = salary is missing!
-- UNION  → combines both, removes duplicates
-- ORDER BY at end → sorts final result ASC

-- Common mistake:
-- ❌ Forgetting ORDER BY after UNION
-- ✅ ORDER BY goes at very END after all queries!

-- Key learning:
-- UNION = combines + removes duplicates
-- UNION ALL = combines + keeps duplicates
-- ORDER BY after UNION applies to full result!

-- Concepts used: UNION, NOT IN,
--                Subquery, ORDER BY
-- =============================================
