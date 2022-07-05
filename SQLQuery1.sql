--#1
select *
from Orders
--#2
select *
from Employees
--#3
select FirstName,HireDate,Region,Country
from Employees
--#4
select CustomerID,OrderID,OrderDate
from Orders
--#5
select ProductID as prold ,ProductName as ProNm,UnitPrice as UntPr 
from Products 
--#6
select Address as 'Add',City as Ct,Region as reg
from Employees
--#7
select CustomerID,Address + '    ' +City as 'full address'
from Customers
--#8
select FirstName + '  ' + LastName AS FullName,
BirthDate + 8 as BirthDay,
ReportsTo AS #Manger 
from Employees 
--#9
select DISTINCT City
from Employees
--#10
select DISTINCT Country
from Employees
--#11
select DISTINCT Title
from Employees
--#12.?
select City,Country
from Customers
--12.?
select DISTINCT City,Country
from Customers
--#13
select FirstName,BirthDate,BirthDate + 5 
from Employees
--#14
select ProductID,UnitPrice,UnitPrice + 10 
from Products
--#15
select ProductID,
ProductName,
UnitPrice,
UnitPrice * 1.165,
UnitsInStock,
UnitPrice,
UnitsInStock - UnitPrice 
from Products
--#16
select ProductID,ProductName,
(UnitsInStock - UnitPrice) * UnitPrice as NewPrice
from Products