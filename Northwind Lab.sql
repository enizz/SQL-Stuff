--NORTHWIND LAB

--1.
SELECT *
FROM NORTHWND.dbo.Customers
--2
SELECT DISTINCT Customers.Country
FROM NORTHWND.dbo.Customers
--3
SELECT *
FROM NORTHWND.dbo.Customers
WHERE CustomerID LIKE '%BL%'
--4
SELECT TOP (100) *
FROM NORTHWND.dbo.Orders
--5
SELECT * 
FROM NORTHWND.dbo.Customers
WHERE PostalCode IN ('1010', '3012', '12209', '05023')
--6
SELECT *
FROM NORTHWND.dbo.Orders
WHERE ShipRegion IS NOT NULL
--7
SELECT *
FROM NORTHWND.dbo.Customers
ORDER BY Country, City
--8
INSERT INTO NORTHWND.dbo.Customers
VALUES ('NISNE', 'Nisnevich Niche', 'Eugene Nisnevich', 'Owner', '123 Nowhere', 'Detroit', 'MI', '48127', 'USA', '(123) 456-7890', '(123) 456-7890')
--9
UPDATE NORTHWND.dbo.Orders
SET ShipRegion = 'EuroZone'
WHERE ShipCountry = 'France'
--10
DELETE FROM NORTHWND.dbo.[Order Details]
WHERE Quantity = 1
--11
SELECT *
FROM NORTHWND.dbo.Orders
WHERE OrderID = '10290'
--12
SELECT * 
FROM NORTHWND.dbo.Customers
JOIN  NORTHWND.dbo.Orders ON Orders.CustomerID = Customers.CustomerID
--13
SELECT Employees.FirstName
FROM NORTHWND.dbo.Employees
WHERE ReportsTo IS NULL
--14
SELECT Employees.FirstName
FROM NORTHWND.dbo.Employees
WHERE ReportsTo = '2'
--EC1
SELECT AVG(Quantity) as AverageQuantity, MAX(Quantity) as MaxQuantity, MIN(Quantity) as MinQuantity
FROM NORTHWND.dbo.[Order Details]
GROUP BY OrderID --Should be ProductID instead of OrderID? 
--EC2
SELECT AVG(Quantity) as AverageQuantity, MAX(Quantity) as MaxQuantity, MIN(Quantity) as MinQuantity
FROM NORTHWND.dbo.[Order Details]
--EC3
SELECT * 
FROM NORTHWND.dbo.Customers
WHERE City IN('London', 'Paris')
--EC4

--EC5
SELECT DISTINCT City
FROM NORTHWND.dbo.Customers
WHERE City IS NOT NULL
--EC6
SELECT FirstName
FROM NORTHWND.dbo.Employees
ORDER BY FirstName ASC
--EC7
SELECT ([Order Details].Quantity * ([Order Details].UnitPrice - [Order Details].Discount)) AS Total 
FROM NORTHWND.dbo.[Order Details]
--EC8
SELECT *
FROM NORTHWND.dbo.Employees
WHERE HireDate BETWEEN '1993-01-01' AND getdate() -- when do you need to wrap dates with '#'?
--EC9

