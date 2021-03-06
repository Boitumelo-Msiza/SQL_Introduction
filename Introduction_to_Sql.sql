SELECT * FROM Customers;
SELECT FirstName FROM Customers;
SELECT FirstName FROM Customers WHERE CustomerID = 1;
UPDATE Customers SET FirstName = 'Lerato', LastName = 'Mabitso' WHERE CustomerID = 1;
DELETE FROM Customers WHERE CustomerID = 2;
SELECT COUNT(DISTINCT STATUS) FROM Orders;
SELECT MAX(Amount) FROM Payments;
SELECT * FROM Customers ORDER BY Country;
SELECT * FROM Products WHERE BuyPrice BETWEEN 100 AND 600;
SELECT * FROM Customers WHERE Country = 'Germany' AND City = 'Berlin';
SELECT * FROM Customers WHERE City = 'Cape Town' OR City = 'Durban';
SELECT * FROM Products WHERE BuyPrice > 500;
SELECT SUM(Amount) FROM Payments;
SELECT COUNT(STATUS) FROM Orders WHERE STATUS = 'Shipped';
SELECT AVG(BuyPrice) AS Rands, AVG(BuyPrice*12) AS Dollars FROM Products;
SELECT * FROM Payments INNER JOIN Customers ON Payments.CustomerID = Customers.CustomerID;
SELECT * FROM Products WHERE DESCRIPTION = 'Turnable front wheels, steering function';