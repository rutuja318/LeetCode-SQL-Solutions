-- =============================================
-- Problem: Rearrange Products Table
-- Difficulty: Easy
-- LeetCode #1795
-- Date: 07 June 2026
-- =============================================

-- Problem:
-- Convert columns (store1, store2, store3)
-- into rows with (product_id, store, price)
-- Exclude NULL prices (product not available)

-- Solution:
SELECT product_id, 'store1' AS store, store1 AS price
FROM Products
WHERE store1 IS NOT NULL

UNION ALL

SELECT product_id, 'store2' AS store, store2 AS price
FROM Products
WHERE store2 IS NOT NULL

UNION ALL

SELECT product_id, 'store3' AS store, store3 AS price
FROM Products
WHERE store3 IS NOT NULL;

-- How it works:
-- Each SELECT handles one store column
-- 'store1' AS store → hardcoded store name as string
-- store1 AS price   → actual price value from column
-- WHERE IS NOT NULL → exclude unavailable products
-- UNION ALL         → combines all 3 results together

-- Key learning:
-- PIVOT   → rows to columns (use CASE WHEN + GROUP BY)
-- UNPIVOT → columns to rows (use UNION ALL) ← this problem!

-- UNION vs UNION ALL:
-- UNION     → removes duplicates (slower)
-- UNION ALL → keeps all rows (faster) ✅
-- Use UNION ALL when no duplicates expected!

-- Concepts used: UNION ALL, IS NOT NULL,
--                String literal as column value
-- =============================================
