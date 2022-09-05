--NORTHWIND LAB

--1.
SELECT *
FROM Customers
--2
SELECT DISTINCT Customers.Country
FROM Customers
--3
SELECT *
FROM Customers
WHERE CustomerID LIKE '%BL%'
--4
SELECT TOP (100) *
FROM Orders
--5
SELECT * 
FROM Customers
WHERE PostalCode IN ('1010', '3012', '12209', '05023')
--6
SELECT *
FROM Orders
WHERE ShipRegion IS NOT NULL
--7
SELECT *
FROM Customers
ORDER BY Country, City
--8
INSERT INTO Customers
VALUES ('NISNE', 'Nisnevich Niche', 'Eugene Nisnevich', 'Owner', '123 Nowhere', 'Detroit', 'MI', '48127', 'USA', '(123) 456-7890', '(123) 456-7890')
--9
UPDATE Orders
SET ShipRegion = 'EuroZone'
WHERE ShipCountry = 'France'
--10
DELETE FROM [Order Details]
WHERE Quantity = 1
--11
SELECT *
FROM Orders
WHERE OrderID = '10290'
--12
SELECT * 
FROM Customers
JOIN  Orders ON Orders.CustomerID = Customers.CustomerID
--13
SELECT Employees.FirstName
FROM Employees
WHERE ReportsTo IS NULL
--14
SELECT Employees.FirstName
FROM Employees
WHERE ReportsTo = '2'
--EC1
SELECT AVG(Quantity) as AverageQuantity, MAX(Quantity) as MaxQuantity, MIN(Quantity) as MinQuantity
FROM [Order Details]
GROUP BY OrderID --Should be ProductID instead of OrderID? 
--EC2
SELECT AVG(Quantity) as AverageQuantity, MAX(Quantity) as MaxQuantity, MIN(Quantity) as MinQuantity
FROM [Order Details]