-- Example: Optimize a poorly performing query using indexing

-- Original (inefficient)
SELECT * FROM Orders WHERE YEAR(order_date) = 2023;

-- Optimized
-- Step 1: Add computed column and index
ALTER TABLE Orders ADD order_year AS YEAR(order_date);
CREATE INDEX idx_order_year ON Orders(order_year);

-- Step 2: Use optimized query
SELECT * FROM Orders WHERE order_year = 2023;
