-- Use the database
USE ECommerceDB;

-- 1. SELECT * (fetch all columns from Customers)
SELECT * FROM Customers;

-- 2. SELECT specific columns
SELECT First_Name, Last_Name, Contact, City FROM Customers;

-- 3. WHERE clause: filter rows
-- Example: Customers from 'India'
SELECT * FROM Customers
WHERE Country = 'India';

-- 4. WHERE with AND
-- Example: Customers from 'India' AND City 'Indore'
SELECT * FROM Customers
WHERE Country = 'India' AND City = 'Indore';

-- 5. WHERE with OR
-- Example: Customers from 'India' OR 'USA'
SELECT * FROM Customers
WHERE Country = 'India' OR Country = 'USA';

-- 6. WHERE with LIKE (pattern matching)
-- Example: Customers whose first name starts with 'A'
SELECT * FROM Customers
WHERE First_Name LIKE 'A%';

-- Example: Customers whose last name contains 'sh'
SELECT * FROM Customers
WHERE Last_Name LIKE '%sh%';

-- 7. WHERE with BETWEEN (range filter)
-- Example: Customers with Contact numbers between 9000000000 and 9999999999
SELECT * FROM Customers
WHERE Contact BETWEEN 9000000000 AND 9999999999;

-- 8. ORDER BY (sorting)
-- Sort customers by First_Name ascending
SELECT * FROM Customers
ORDER BY First_Name ASC;

-- Sort customers by First_Name descending
SELECT * FROM Customers
ORDER BY First_Name DESC;

-- 9. LIMIT (limit number of output rows)
-- Show only first 5 customers
SELECT * FROM Customers
LIMIT 5;

-- 10. DISTINCT (unique values)
-- Show unique countries of customers
SELECT DISTINCT Country FROM Customers;

-- 11. Aliasing (renaming columns)
-- Example: Rename First_Name as 'Name'
SELECT First_Name AS Name, Last_Name AS Surname, City AS Location
FROM Customers;

-- 12. Combining WHERE, ORDER BY, LIMIT
-- Example: Customers from 'India', sorted by First_Name descending, limit 5 rows
SELECT First_Name, Last_Name, City
FROM Customers
WHERE Country = 'India'
ORDER BY First_Name DESC
LIMIT 5;

-- 13. Using IN (alternative to multiple OR)
-- Example: Customers from India, USA, or UK
SELECT * FROM Customers
WHERE Country IN ('India', 'USA', 'UK');
