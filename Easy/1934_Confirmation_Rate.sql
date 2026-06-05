-- =============================================
-- Problem: Bank Account Summary II
-- Difficulty: Easy
-- LeetCode #1587
-- Date: 03 June 2026
-- =============================================

-- Problem:
-- Find users who have balance strictly
-- greater than 10000
-- Balance = SUM of all transaction amounts
-- (negative amounts = withdrawals)

-- Solution:
SELECT U.name, SUM(T.amount) AS balance
FROM Users AS U
JOIN Transactions AS T
ON U.account = T.account
GROUP BY T.account, U.name
HAVING balance > 10000;

-- Key learning:
-- > 10000 not >= 10000!
-- "Greater than 10000" means strictly MORE
-- "At least 10000" would mean >= 10000

-- Mistakes to avoid:
-- ❌ HAVING balance >= 10000 (includes 10000!)
-- ✅ HAVING balance > 10000 (excludes 10000!)
-- ❌ GROUP BY account only
-- ✅ GROUP BY account, name (always group all SELECT cols!)

-- Concepts used: JOIN, SUM, GROUP BY,
--                HAVING, Negative amounts
-- =============================================
