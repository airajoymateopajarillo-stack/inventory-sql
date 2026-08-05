-- Create tables for suppliers and products
CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    SupplierName VARCHAR(50)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Stock INT,
    SupplierID INT,
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);

-- Insert sample data
INSERT INTO Suppliers VALUES (1, 'Tech Supplies Inc');
INSERT INTO Suppliers VALUES (2, 'Office Essentials Co');

INSERT INTO Products VALUES (101, 'Laptop', 10, 1);
INSERT INTO Products VALUES (102, 'Printer', 5, 2);
INSERT INTO Products VALUES (103, 'Mouse', 50, 1);

-- Query examples
-- Show products with low stock
SELECT ProductName, Stock FROM Products WHERE Stock < 20;

-- Show products with their suppliers
SELECT p.ProductName, s.SupplierName
FROM Products p
JOIN Suppliers s ON p.SupplierID = s.SupplierID;
