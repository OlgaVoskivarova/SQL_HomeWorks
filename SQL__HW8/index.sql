--Найти мин/стоимость товаров для каждой категории

SELECT
Categories.CategoryName,
MIN(Price) AS min_Price
FROM Products
JOIN Categories ON Categories.CategoryID = Products.CategoryID
GROUP BY Categories.CategoryName

--Вывести названия категорий, в которых более 10 товаров

SELECT
Categories.CategoryName,
COUNT(*) AS total_products
FROM Products
JOIN Categories ON Products.CategoryID=Categories.CategoryID
GROUP BY Products.CategoryID
HAVING total_products > 10
ORDER BY total_products DESC

--Вывести три самых дешевых заказа

SELECT
OrderDetails.OrderID AS order_id,
MIN(OrderDetails.Quantity * Products.Price) AS order_cost
FROM OrderDetails
JOIN Products ON OrderDetails.ProductID=Products.ProductID
GROUP BY OrderDetails.OrderID
ORDER BY order_cost DESC
LIMIT 3

--Вывести имена и фамилии (и ко-во заказов) менеджеров, у которых ко-во заказов менее 15
SELECT
Employees.LastName,
Employees.FirstName,
COUNT(*) AS total_order
FROM Employees
JOIN Orders ON  Employees.EmployeeID = Orders.EmployeeID
JOIN OrderDetails ON Orders.OrderID = OrderDetails.OrderID
GROUP BY Orders.OrderID
HAVING total_order <=15
ORDER BY total_order DESC



--Вывести ТОП-1 стран по ко-ву клиентов
SELECT
Country,
COUNT(*) AS total_customer
FROM Customers
GROUP BY Customers.Country
ORDER BY total_customer DESC
LIMIT 1
