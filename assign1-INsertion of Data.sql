--Inserting 10 values into Customer table 
Insert into Customers values (446,'Anabelle','Andrews','Ana@gmail.com',1236547891,'Canada'),(123,'Ben','Ten','benten@gmail.com',1456123121,'Columbia'),(021,'Tom &','Jerry','TOMMY@gmail.com',1256897496,'North Carolina');
Insert into Customers values (111,'Elsa','Frozen','elsa@gmail.com',213654789,'USA');
Insert into Customers values (100,'Super','Man','superman@gmail.com',14725869,'UK');
Insert into Customers values (450,'Henry','Mathews','henryM@gmail.com',78945869,'North Carolina'),(500,'Elena','Gilbert','ElenaG@gmail.com',7894000,'London');
Insert into Customers values (211,'Stefan','Salvotore','Stefan@gmail.com',20200009,'Times Square'),(220,'Damon','Salvotore','DamonS@gmail.com',22224000,'Paris');
alter table Orders
alter column OrderDate date not null
alter table Customers 
alter column PhoneNumber bigint not null 
select * from Customers
--Inserting 10 values into Orders Table 
Insert into Orders values (10,21,'2023-10-21',10000),(11,100,'2023-10-22',1000) , (12,111,'2023-11-15',20000),(13,123,'2023-11-01',15000),(14,211,'2022-11-20',5000),
(15,220,'2022-11-30',6000),(16,445,'2023-01-11',7500),(17,446,'2022-12-31',20000),(18,450,'2022-12-25',30000),(19,500,'2023-05-21',9000);

select * from Orders;
--Inserting 10 values into Products table 
select * from Products;
Insert into Products values (1001,'samsung mobile','Good Internet Connectivity , GPS Navigation ',50000),(1002,'Lenevo','Display size 14.00-inch,Processor Core i7,RAM 12GB',75000),
(1003,'VU TV','75 inches, QLED TV,4K Resolution,Wifi.',50000),(1004,'One Plus Nord mobile','Good Internet Connectivity , GPS Navigation ',30000),
(1005,'womens-maxi dress','Cotton,pink',500),(1006,'Furniture sofa','smooth and soft , teak wood ',35000),
(1007,'womens-bags-sling','2 compartments , chain handler',2500),(1008,'iPhone 9','An apple mobile which is nothing like apple',45000),
(1009,'perfume Oil','Realaxation',550),(1010,'HP','Good Internet Connectivity , GPS Navigation ',48000);
select * from Products;
--inserting 10 values into orderdetails
select * from OrderDetails;
select * from Orders;
Select * from Products
Insert into OrderDetails values (5000,10,1001,15),(5001,11,1002,30),(5002,12,1003,15),(5003,13,1004,100),(5004,14,1005,550),(5005,15,1006,48),(5006,16,1007,40),(5007,17,1008,60),
(5008,18,1009,500),(5009,19,1010,50);
--inserting values into inventory 
select * from Inventory
alter table Inventory 
alter column QuantityInStock int not null ;
alter table Inventory 
alter column LastStockUpdate date not null ;

Insert into Inventory values (1,1001,20,'2023-03-10'),(2,1002,10,'2023-02-10'),(3,1003,50,'2023-01-10'),(4,1004,70,'2023-03-21'),(5,1005,80,'2023-03-30'),(6,1006,100,'2023-04-10'),
(7,1007,55,'2023-03-15'),(8,1008,85,'2023-08-14'),(9,1009,20,'2023-03-21'),(10,1010,30,'2023-05-16');

--Query 1 :- Write an SQL query to retrieve the names and emails of all customers. 
select FirstName , LastName , Email from Customers ;

--Query 2 :-  Write an SQL query to list all orders with their order dates and corresponding customer names.

--Query 3 :- Write an SQL query to insert a new customer record into the "Customers" table. Include customer information such as name, email, and address.
