-- =============================================
-- Problem: Library Books Zero Copies Available
-- Difficulty: Medium
-- LeetCode #2230
-- Date: 09 June 2026
-- =============================================

-- Problem:
-- Find books currently borrowed with
-- zero copies available
-- available = total_copies - current_borrowers = 0

-- Solution:
SELECT L.book_id,
       L.title,
       L.author,
       L.genre,
       L.publication_year,
       COUNT(*) AS current_borrowers
FROM library_books AS L
JOIN borrowing_records AS B
ON L.book_id = B.book_id
WHERE B.return_date IS NULL
GROUP BY L.book_id, L.title, L.author,
         L.genre, L.publication_year
HAVING COUNT(*) = L.total_copies
ORDER BY current_borrowers DESC, L.title ASC;

-- How it works:
-- WHERE return_date IS NULL → currently borrowed
-- COUNT(*) = current borrowers per book
-- HAVING COUNT(*) = total_copies →
--   means 0 copies available!
-- ORDER BY borrowers DESC then title ASC

-- Key learning:
-- HAVING COUNT(*) = L.total_copies
-- is the key condition!
-- Don't forget GROUP BY ALL select columns!

-- Concepts used: JOIN, COUNT, GROUP BY,
--                HAVING, WHERE IS NULL,
--                ORDER BY multiple columns
-- =============================================
