-- =============================================
-- Problem: Duplicate Emails
-- Difficulty: Easy
-- LeetCode #182
-- Date: 02 June 2026
-- =============================================

-- Problem:
-- Find all duplicate emails in Person table

-- Solution:
SELECT email
FROM Person
GROUP BY email
HAVING COUNT(email) > 1;

-- Concepts used: GROUP BY, HAVING, COUNT
-- =============================================
