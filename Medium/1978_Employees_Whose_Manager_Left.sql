-- =============================================
-- Problem: Employees Whose Manager Left
-- Difficulty: Easy
-- LeetCode #1978
-- Date: 09 June 2026
-- =============================================

-- Problem:
-- Find employees with salary < 30000
-- whose manager has left the company
-- Manager left = manager_id not in employee_id!

-- Solution:
SELECT employee_id
FROM Employees
WHERE salary < 30000
AND manager_id IS NOT NULL
AND manager_id NOT IN (
    SELECT employee_id FROM Employees
)
ORDER BY employee_id;

-- How it works:
-- salary < 30000 → low salary condition
-- manager_id IS NOT NULL → has a manager
-- manager_id NOT IN (all emp ids) →
--   manager not found = left company!

-- Key learning:
-- Manager left ≠ manager_id is NULL
-- Manager left = manager_id exists but
--   that ID not found in employee table!

-- Concepts used: NOT IN, Subquery,
--                IS NOT NULL, ORDER BY
-- =============================================
