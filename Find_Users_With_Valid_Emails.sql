-- =============================================
-- Problem: Find Users With Valid Emails
-- Difficulty: Easy
-- LeetCode #1517
-- Date: 02 June 2026
-- =============================================

-- Problem:
-- Find all valid email addresses where:
-- 1. Contains exactly one @ symbol
-- 2. Ends with .com
-- 3. Part before @ has only letters/numbers/underscore
-- 4. Part after @ and before .com has only letters

-- Solution:
SELECT user_id, email
FROM Users
WHERE email REGEXP '^[a-zA-Z0-9_]+@[a-zA-Z]+\\.com$'
ORDER BY user_id ASC;

-- REGEXP Pattern Explanation:
-- ^            → start of string
-- [a-zA-Z0-9_] → letters, numbers, underscore
-- +            → one or more characters
-- @            → exactly one @ symbol
-- [a-zA-Z]+   → only letters for domain name
-- \\.com       → must end with .com (\\. = literal dot)
-- $            → end of string

-- Concepts used: REGEXP, WHERE, ORDER BY
-- =============================================
