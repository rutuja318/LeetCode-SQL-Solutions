-- =============================================
-- Problem: Calculate Special Bonus
-- Difficulty: Easy
-- LeetCode #1873
-- Date: 08 June 2026
-- =============================================

-- Problem:
-- Bonus = 100% salary WHEN →
--   employee_id is ODD
--   AND name does NOT start with 'M'
-- Bonus = 0 OTHERWISE

-- Solution 1: CASE WHEN (cleanest!)
SELECT employee_id,
CASE
    WHEN employee_id % 2 = 1
    AND name NOT LIKE 'M%'
    THEN salary
    ELSE 0
END AS bonus
FROM Employees
ORDER BY employee_id;

-- Solution 2: UNION approach
SELECT employee_id, 0 AS bonus
FROM Employees
WHERE employee_id % 2 = 0
OR name LIKE 'M%'
UNION
SELECT employee_id, salary AS bonus
FROM Employees
WHERE employee_id % 2 = 1
AND name NOT LIKE 'M%'
ORDER BY employee_id;

-- Verification:
-- id=2 · Meir    · even id        → 0 ✅
-- id=3 · Michael · odd but M name → 0 ✅
-- id=7 · Addilyn · odd + no M     → 7400 ✅
-- id=8 · Juan    · even id        → 0 ✅
-- id=9 · Kannon  · odd + no M     → 7700 ✅

-- Key learning:
-- CASE WHEN cleaner than UNION for this!
-- NOT LIKE 'M%' → name doesn't start with M
-- % 2 = 1 → odd number check
-- % 2 = 0 → even number check

-- Common mistake:
-- ❌ Reversing conditions → bonus to M names
-- ✅ Always verify logic with example data!

-- Concepts used: CASE WHEN, MOD operator,
--                LIKE, NOT LIKE, ORDER BY
-- =============================================
