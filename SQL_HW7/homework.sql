
-- Вывести ко-во товаров с ценой от 10 до 250 EUR
SELECT
COUNT(*)
FROM Products
WHERE 
Price BETWEEN 10 AND 250

-- Вывести ко-во поставщиков не из UK и не из China

SELECT
COUNT(*)
FROM Suppliers
WHERE 
NOT Country = "UK" AND 
NOT Country = "China"

--Вывести среднюю/MAX/MIN стоимости и ко-во товаров из категорий 3 и 5

COUNT(*) AS count_product,
MAX(Price) AS max_price,
MIN(Price) AS min_price
FROM Products
WHERE 
CategoryID IN (3,5)


-- Вывести общую сумму проданных товаров

SELECT 
SUM(Products.Price*OrderDetails.Quantity) AS total_order
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID

--Вывести данные о заказах (номерзаказа, имяклиента, странаклиента, фамилияменеджера, названиекомпанииперевозчика)

SELECT
Orders.OrderID,
Customers.CustomerName,
Customers.Country,
Employees.LastName,
Shippers.ShipperName
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
JOIN Employees ON Orders.EmployeeID =Employees.EmployeeID
JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID


-- Вывести сумму, на которую было отправлено товаров клиентам в Germany

SELECT
SUM(Products.Price *OrderDetails.Quantity) AS total_sumProduct
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID = Products.ProductID
JOIN Orders ON OrderDetails.OrderID = Orders.OrderID
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
WHERE 
Customers.Country = "Germany" 
