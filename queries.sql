-- queries.sql
-- Write your SQL query below each prompt.
-- These queries run against the products_db database.
--
-- Setup: run the seed file first.
--   Mac:       psql -f products_seed.sql
--   WSL:       sudo -u postgres psql -f products_seed.sql
--
-- Then connect:
--   Mac:       psql products_db
--   WSL:       sudo -u postgres psql products_db

-- ============================================================
-- Part 2A: Aggregate Functions
-- ============================================================

-- 1. Count the total number of products.
--    Name the result column total_products.


-- 2. Count the number of products in the 'electronics' category.
--    Name the result column electronics_count.


-- 3. Find the total number of units in stock across all products.
--    Name the result column total_stock.


-- 4. Find the average price across all products.
--    Round to 2 decimal places. Name the result column avg_price.


-- 5. Find the lowest and highest product prices in a single query.
--    Name the columns min_price and max_price.


-- 6. Find the lowest and highest product ratings in a single query.
--    Name the columns min_rating and max_rating.


-- 7. Find the total units in stock for the 'sports' category.
--    Name the result column sports_stock.


-- ============================================================
-- Part 2B: GROUP BY
-- ============================================================

-- 8. Count the number of products in each category.
--    Name the count column product_count.


-- 9. Find the average price per category, rounded to 2 decimal places.
--    Name the average column avg_price.
--    Order the results from most expensive to least expensive.


-- 10. Find the total stock per category.
--     Name the total column total_stock.
--     Order from most to least stock.


-- 11. Find the most expensive product price in each category.
--     Name the column max_price. Order by category alphabetically.


-- 12. Find the average rating per brand, rounded to 2 decimal places.
--     Name the average column avg_rating.
--     Order from highest to lowest average rating.


-- 13. Count the number of products per brand.
--     Name the count column product_count.
--     Order by count from highest to lowest.


-- ============================================================
-- Part 2C: HAVING
-- ============================================================

-- 14. Show only categories that have more than 3 products.
--     Name the count column product_count.


-- 15. Show only categories where the average price is above $80.
--     Round the average to 2 decimal places. Name it avg_price.


-- 16. Show only brands with an average rating above 4.5.
--     Round the average to 2 decimal places. Name it avg_rating.


-- 17. Among products priced under $150, show categories with
--     an average rating above 4.4.
--     Round the average to 2 decimal places. Name it avg_rating.


-- 18. Show only brands that carry more than one product.
--     Name the count column product_count.
