select* from Orders; 
select * from Customers; 

SELECT * 
FROM Customers
Inner Join Orders
On Customers.CustomerID = Orders.CustomerID

SELECT * 
FROM Customers
Left Join Orders
On Customers.CustomerID = Orders.CustomerID