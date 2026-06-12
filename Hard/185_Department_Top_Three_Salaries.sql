-- =============================================
-- Problem: Department Top Three Salaries
-- Difficulty: Hard
-- LeetCode #185
-- Date: 09 June 2026
-- =============================================

-- Problem:
-- Find employees who earn top 3 unique
-- salaries in each department

-- Solution:
SELECT d.name AS Department,
       e.name AS Employee,
       e.salary AS Salary
FROM Employee e
JOIN Department d
ON e.departmentId = d.id
WHERE (
    SELECT COUNT(DISTINCT e2.salary)
    FROM Employee e2
    WHERE e2.departmentId = e.departmentId
    AND e2.salary > e.salary
) < 3;

-- How it works:
-- Subquery counts how many DISTINCT salaries
-- are HIGHER than current employee salary
-- If less than 3 salaries are higher →
-- this employee is in top 3!

-- Example →
-- Priya salary 90000 →
-- How many salaries > 90000? = 0 → top 1 ✅
-- Rahul salary 75000 →
-- How many salaries > 75000? = 1 → top 2 ✅
-- Rutuja salary 60000 →
-- How many salaries > 60000? = 2 → top 3 ✅
-- Neha salary 45000 →
-- How many salaries > 45000? = 3 → NOT top 3 ❌

-- Concepts used: Correlated Subquery,
--                COUNT DISTINCT, JOIN, WHERE
-- =============================================
