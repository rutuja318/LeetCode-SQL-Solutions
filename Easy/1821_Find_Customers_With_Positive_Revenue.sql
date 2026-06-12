-- =============================================
-- Problem: Find the Missing IDs
-- Difficulty: Easy
-- LeetCode #1965
-- Date: 09 June 2026
-- =============================================

-- Problem:
-- Find employee IDs with missing information
-- Missing name OR missing salary

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

-- Key learning:
-- UNION combines both missing cases!
-- ORDER BY goes at very END after UNION!
-- NOT IN finds records missing in other table!

-- Concepts used: UNION, NOT IN,
--                Subquery, ORDER BY
-- =============================================
