-- create-and-seed.sql
-- Design and seed a table for ONE of the following scenarios:
--
--   A. A restaurant menu
--      Suggested columns: name, cuisine, price, vegetarian, calories, available
--
--   B. A music library
--      Suggested columns: title, artist, genre, year, duration_seconds, streams
--
--   C. A gym class schedule
--      Suggested columns: class_name, instructor, day_of_week, capacity, enrolled, difficulty
--
--   D. A movie collection
--      Suggested columns: title, director, genre, year, runtime_minutes, rating
--
--   E. A bookstore inventory
--      Suggested columns: title, author, genre, price, pages, in_stock
--
-- Requirements:
--   [ ] Creates a new database with an appropriate name
--   [ ] Connects to the database after creating it
--   [ ] Creates a new table with an appropriate name
--   [ ] The seed file can be executed multiple times without causing errors related to the database and/or table already existing
--   [ ] The table has a primary key column with unique, auto-generated, and sequential values
--   [ ] The table has at least 5 additional columns beyond the primary key
--   [ ] The table has at least 3 different data types used
--   [ ] The table has at least one `NOT NULL` constraint
--   [ ] The table has at least one `DEFAULT` value
--   [ ] The table has at least one `UNIQUE` constraint
--   [ ] The table has at least 8 rows of seed data inserted

-- ============================================================
-- Step 1: Create the database
-- ============================================================
DROP DATABASE IF EXISTS bookstore_inv;
CREATE DATABASE bookstore_inv;
\c bookstore_inv


-- ============================================================
-- Step 2: Create the table
-- ============================================================
DROP TABLE IF EXISTS books;
CREATE TABLE books (
    book_id     SERIAL          PRIMARY KEY,
    title       TEXT            NOT NULL UNIQUE,
    author      TEXT            NOT NULL,
    genre       TEXT            NOT NULL,
    year        INT             NOT NULL,
    price       NUMERIC(5, 2)   NOT NULL,
    in_stock    BOOLEAN         DEFAULT TRUE
);


-- ============================================================
-- Step 3: Insert seed data (at least 8 rows)
-- ============================================================
INSERT INTO books (title, author, genre, year, price, in_stock) VALUES
('The Phantom Tollbooth', 'Norton Juster', 'Fantasy', 1961, 8.99, TRUE),
('In Darkness', 'Nick Lake', 'Fiction', 2012, 10.99, FALSE ),
('Matilda', 'Roald Dahl', 'Fiction', 1988, 8.99, FALSE ),
('Holes', 'Louis Sachar', 'Adventure', 1988, 8.99, TRUE),
('From the Mixed-Up Files of Mrs. Basil E. Frankweiler', 'E.L. Konigsburg', 'Fiction', 1967, 8.99, FALSE ),
('P.S Be Eleven', 'Rita Williams-Garcia', 'Fiction', 2013, 9.99, TRUE),
('Roll of Thunder, Hear My Cry', 'Mildred D. Taylor', 'Fiction', 1976, 9.99, FALSE),
('Mondays Not Coming', 'Tiffany D. Jackson', 'Fiction', 2018, 10.99, TRUE),
('The House on Mango Street', 'Sandra Cisneros', 'Fiction', 1984, 9.99, TRUE);