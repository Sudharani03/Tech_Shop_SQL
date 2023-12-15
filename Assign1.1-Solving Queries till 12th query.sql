select * from Customers;
select * from Products ;
select * from OrderDetails;
select * from Orders ;
select * from Inventory;

-- Query 1 :-  Write an SQL query to retrieve the names and emails of all customers. 
select FirstName,LastName,Email from Customers ;

-- Query 2 :- Write an SQL query to list all orders with their order dates and corresponding customer names .

select  Orders.OrderDate , Customers.FirstName,Customers.LastName 
from Orders join Customers 
on Orders.CustomerID = Customers.CustomerID;

--Query 3 :- Write an SQL query to insert a new customer record into the "Customers" table. Include customer information such as name, email, and address.
Insert into Customers values (501,'Caroline','Forbes','Caroline@gmail.com',1236547890,'London');
select * from Customers;

--Query 4 :- Write an SQL query to update the prices of all electronic gadgets in the "Products"
--table by increasing them by 10%.
-----Adding seperate column for updated price---
Alter table Products 
Add UpdatedPrice bigint ; 
------Updating Price---
update Products 
set UpdatedPrice = Price * 1.10;
select ProductName , Price , UpdatedPrice from Products ;

--Query 5 :-Write an SQL query to delete a specific order and its associated order details from the "Orders" and "OrderDetails" tables. Allow users to input the order ID as a parameter.

Declare @OrderIDtodelete INT = 19
Delete from OrderDetails where OrderID=@OrderIDtoDelete 
Delete from Orders where OrderID=@OrderIDtoDelete 
select * from Orders  ;
select * from OrderDetails;

--Query 6 :-Write an SQL query to insert a new order into the "Orders" table. Include the customer ID, order date, and any other necessary information.
select * from Orders;
Insert into Orders values(19,500,'2023-11-28',35000);
select * from Orders ;

--Query 7 :- Write an SQL query to update the contact information (e.g., Phonenumber and address) of a specific 
--customer in the "Customers" table. Allow users to input the customer ID and new contact information.

Declare @CustomerID INT = 500 , @PhoneNumber BIGINT = 3256987410 , @Address varchar(50) = 'Times Square'
Update Customers 
set PhoneNumber = @PhoneNumber , Address=@Address 
where CustomerID=@CustomerID
select * from Customers

--Query 8 :- Write an SQL query to recalculate and update the total cost of each order in the "Orders" table based on the prices and quantities 
--in the "OrderDetails" table.
select * from Orders 
Select * from OrderDetails
update Orders
set Orders.TotalAmount=OrderDetails.Quantity * TotalAmount
from Orders 
join OrderDetails on OrderDetails.OrderID=Orders.OrderID

select * from Orders

--Query9 :- Write an SQL query to delete all orders and their associated order details for a specific 
--customer from the "Orders" and "OrderDetails" tables. Allow users to input the customer ID as a parameter.

Declare @custID int = 111

Delete from OrderDetails where OrderID 
IN (select OrderID from Orders where CustomerID = @custID);--deletes 111 record from orderdetails table 

Delete from Orders where CustomerID=@custID-- deletes 111 record from orders table

select * from Orders
select * from OrderDetails

--Query10 :- Write an SQL query to insert a new electronic gadget product into the "Products" table, 
--including product name, category, price, and any other relevant details.

Insert into Products values (1011,'Water Heater','2L capacity,2 min heating ',2999,2999*1.01);--updated price --> 10% increase on original price.
select * from Products ;

--Query 11 :- Write an SQL query to update the status of a specific order in the "Orders" table (e.g., from 
--"Pending" to "Shipped"). Allow users to input the order ID and the new status.

alter table Orders
add status varchar(50) default 'Pending'

update Orders 
set status = 'Pending' where status IS NULL 

Declare @OrderIDToBeUpdated INT = 10 , @statusToBeUpdated varchar(50) = 'Shipped :) '
update Orders
set status = @statusToBeUpdated where OrderID = @OrderIDToBeUpdated

select * from Orders ;

--Query 12 :-Write an SQL query to calculate and update the number of orders placed by each customer 
--in the "Customers" table based on the data in the "Orders" table.

alter table Customers 
add NumberOfOrders INT ;

Update Customers 
SET NumberOfOrders = (
select count(*) from Orders 
where Orders.CustomerID = Customers.CustomerID);

select * from Customers ;
