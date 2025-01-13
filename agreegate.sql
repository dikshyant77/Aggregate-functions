
-- Create the PRODUCTS table if it does not exist
CREATE TABLE IF NOT EXISTS PRODUCTS (
PRODUCT_ID TEXT,
PRODUCT_NAME TEXT,
SUPPLIER_ID TEXT,
CATEGORY_ID TEXT,
UNIT TEXT,
PRICE REAL
);
-- Insert sample data into the PRODUCTS table
INSERT INTO PRODUCTS (PRODUCT_ID, PRODUCT_NAME, SUPPLIER_ID, CATEGORY_ID, UNIT, PRICE) VALUES
('1', 'CHAIS', '1', '1', '10 BOXES*20 BAGS', 18),
('2', 'CHANG', '1', '1', '24-12 OZ BOTTLES', 19),
('3', 'ANISEED SYRUP', '1', '2', '12-550 ML BOTTLES', 10),
('4', 'CHEF ANTON SEASONING', '2', '2', '48- 6 OZ JARS', 22),
('5', 'CHEF ANTON MIX', '2', '2', '36 BOXES', 21.35)
SELECT * FROM PRODUCTS

-- Query to count the number of products
SELECT COUNT(PRODUCT_ID) AS ABC FROM PRODUCTS 

-- Query to find the average price of products
SELECT AVG(PRICE) AS AVERAGE_PRICE FROM PRODUCTS

-- Query to find the total price of products
SELECT SUM(PRICE) FROM PRODUCTS

SELECT SUPPLIER_ID , CATEGORY_ID FROM PRODUCTS
SELECT DISTINCT SUPPLIER_ID FROM PRODUCTS
SELECT DISTINCT PRODUCT_ID , SUPPLIER_ID FROM PRODUCTS
SELECT COUNT(*) FROM PRODUCTS
SELECT MIN(PRICE) FROM PRODUCTS
SELECT MAX(PRICE) FROM PRODUCTS

CREATE TABLE IF NOT EXISTS Employee(
EmployeeID INT PRIMARY KEY,
Employee_name TEXT NOT NULL,
Email TEXT,
Salary REAL,
DepartmentID INT
);
INSERT INTO Employee(EmployeeID, Employee_name, Email, Salary, DepartmentID)VALUES
(1, 'Alice Smith', 'alice.smith@example.com', 60000.00, 101),
(2, 'Bob Johnson', 'bob.johnson@example.com', 55000.00, 102),
(3, 'Charlie Brown', 'charlie.brown@example.com', 70000.00, 103),
(4, 'Diana Prince', 'diana.prince@example.com', 72000.00, 101),
(5, 'Edward Kenway', 'edward.kenway@example.com', 65000.00, 104),
(6, 'Fiona Gallagher', 'fiona.gallagher@example.com', 48000.00, 102),
(7, 'George Costanza', 'george.costanza@example.com', 58000.00, 105),
(8, 'Hannah Baker', 'hannah.baker@example.com', 72000.00, 106),
(9, 'Irene Adler', 'irene.adler@example.com', 80000.00, 101),
(10, 'Jack Sparrow', 'jack.sparrow@example.com', 75000.00, 104);
SELECT * FROM Employee
SELECT MIN(Salary) FROM Employee
SELECT MAX(Salary) FROM Employee
SELECT AVG(Salary) FROM Employee
SELECT SUM(Salary) FROM Employee
SELECT COUNT(*) FROM Employee
SELECT DISTINCT DepartmentID FROM Employee
SELECT Employee_name FROM Employee WHERE Salary = (SELECT MAX(Salary) FROM Employee)  