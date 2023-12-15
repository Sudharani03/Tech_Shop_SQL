--Retrieving all tables and data
select * from Customers;
select * from Products;
select * from Orders;
select * from OrderDetails;
select * from Inventory;

--Aggregate Functions 
---Query 1 :- Write an SQL query to find out which customers have not placed any orders.

select CustomerID,FirstName,LastName,Email,PhoneNumber from Customers where NumberOfOrders = 0;

select * from Customers 
Select * from Orders

select Customers.FirstName , Customers.Email , Customers.PhoneNumber From Customers 
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
Where Orders.OrderID IS NULL

--Query 2 :- Write an SQL query to find the total number of products available for sale. 

select distinct(count(ProductName)) AS TotalNumberOfProductsAvailable from Products;

--Query 3:- Write an SQL query to calculate the total revenue generated by TechShop.

select sum(TotalAmount) AS TOTALREVENUE from Orders;

--Query 4 :- Write an SQL query to calculate the average quantity ordered for products in a specific category.
--Allow users to input the category name as a parameter.
 
Declare @Category varchar(50) = 'Electronic Gadgets'
select AVG(Quantity) from OrderDetails 
join Products ON OrderDetails.ProductID = Products.ProductID 
where Products.Category = @Category

Declare @Category varchar(50) = 'Womens'
select AVG(Quantity) from OrderDetails 
join Products ON OrderDetails.ProductID = Products.ProductID 
where Products.Category = @Category

select * from OrderDetails

--Query 5 :- Write an SQL query to calculate the total revenue generated by a specific customer. Allow users to input the customer ID as a parameter.

Declare @CustomerID INT = 100
select sum(TotalAmount) AS TotalRevenue from Orders
where CustomerID = @CustomerID;

--Query 6 :- Write an SQL query to find the customers who have placed the most orders. List their names and the number of orders they've placed.

select TOP 3 Customers.FirstName , COUNT (Orders.OrderID) as OrderCount
From Customers join Orders 
ON Customers.CustomerID = Orders.CustomerID
Group By Customers.CustomerID,Customers.FirstName
Order BY OrderCount DESC


--Query 7 :- Write an SQL query to find the most popular product category, which is the one with the highest total quantity ordered across all orders.
select * from Products
select * from OrderDetails

select Top 1 Products.Category , SUM(OrderDetails.Quantity)  as totalQuantityOrdered
From OrderDetails 
join Products on Products.ProductID = OrderDetails.ProductID
Group By  Products.Category
Order By totalQuantityOrdered DESC 



--Query 8 :- Write an SQL query to find the customer who has spent the most money (highest total revenue) on electronic gadgets. 
-------------List their name and total spending.
select * from Products
select * from Customers
select * from Orders
select * from OrderDetails



select TOP 5 Customers.CustomerID,Customers.FirstName,SUM(TotalAmount) as TotalSpending
From Customers join Orders 
ON Customers.CustomerID=Orders.CustomerID
join OrderDetails 
ON Orders.OrderID = OrderDetails.OrderID
join Products 
ON OrderDetails.ProductID = Products.ProductID
WHERE Products.Category = 'Electronic Gadgets'
GROUP BY Customers.CustomerID,Customers.FirstName
ORDER BY TotalSpending desc


--Query 9 :-  Write an SQL query to calculate the average order value (total revenue divided by the number of orders) for all customers.

select Avg(TotalAmount) AS AvgOrderValue from Orders; 

--Query 10:- Write an SQL query to find the total number of orders placed by each customer and list their names along with the order count

select * from Orders
select * from Customers

select Customers.FirstName , COUNT(Orders.OrderID) as OrderCount
From Customers 
LEFT JOIN Orders 
ON Customers.CustomerID = Orders.CustomerID
Group By FirstName
Order By OrderCount DESC

--Here Left join is used instead of join to also print the customernames who havnt ordered anything 
--if join is used the records of customers with 0 orders are not retrieved . 
