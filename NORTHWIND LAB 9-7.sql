SELECT * --1
FROM Customers

SELECT DISTINCT Country --2
FROM Customers

SELECT * --3
FROM Customers
WHERE CustomerID LIKE 'BL%'

SELECT TOP 100 * --4
FROM Orders

Select * --5
FROM Customers
WHERE PostalCode IN ('1010','3012','12209','05023')

SELECT * --6
FROM Orders
WHERE ShipRegion IS NOT NULL

SELECT * --7
FROM Customers ORDER BY Country, City

INSERT INTO Customers (CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax) --8
VALUES ('COTCA','Cotton Candy Company','Spencer Nolton','Owner','1234 MadeUp Ln','Madeuptown',NULL,'15267','Argentina','412-467-2904',NULL)

UPDATE Orders --9
SET ShipRegion = 'EuroZone'
WHERE ShipCountry = 'France' 

DELETE [Order Details] --10
WHERE Quantity = 1

SELECT * --11
FROM Orders
WHERE OrderID = 10290

SELECT * --12
FROM Orders
JOIN Customers ON Orders.CustomerID=Customers.CustomerID

SELECT Employees.FirstName --13
FROM Employees
WHERE ReportsTo IS NULL

SELECT Employees.FirstName --14
FROM Employees
WHERE ReportsTo = 2

SELECT AVG(Quantity) --1
FROM [Order Details]
GROUP BY OrderID

SELECT MIN(Quantity)
FROM [Order Details]
GROUP BY OrderID

SELECT MAX(Quantity)
FROM [Order Details]
GROUP BY OrderID

SELECT AVG(Quantity) --2
FROM [Order Details]

SELECT MIN(Quantity)
FROM [Order Details]

SELECT MAX(Quantity)
FROM [Order Details]

SELECT * --3
FROM Customers
WHERE City IN ('London','Paris')

SELECT * --4
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID

SELECT * 
FROM Orders
LEFT JOIN Customers ON Orders.CustomerID=Customers.CustomerID

SELECT * 
FROM Orders
RIGHT JOIN Customers ON Orders.CustomerID=Customers.CustomerID

SELECT DISTINCT City --5
FROM Customers

SELECT Employees.FirstName --6
FROM Employees
GROUP BY FirstName

SELECT *, UnitPrice*Quantity AS TotalPrice --7
FROM [Order Details]