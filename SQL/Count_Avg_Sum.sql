-- select count/sum/avg(column_name) || count(*) : dem so luong ban ghi
-- from table_name
-- bo qua null

-- dem so luong khach hang trong Customers
select count([CustomerID]) as [NumberOfCustomers]
from Customers;

select count(*) as [NumberOfCustomers]
from Customers;

-- tong so tien van chuyen (Freight) cua tat ca cac don dat hang
select sum([Freight]) as [SumFreight]
from Orders;

-- trung binh so luong dat hang(Quantity) cua tat ca san pham trong bang [Order Details]
select [Quantity]
from [Order Details];

select count([Quantity]) as [NumberOfQuantity]
from [Order Details];

select sum([Quantity]) as [SumQuantity]
from [Order Details];

select avg([Quantity]) as [AvgQuantity]
from [Order Details];

--dem so luong , tong so luong hang trong kho va trung binh gia cua san pham co trong Product
select count([UnitsInStock]) as [NumberOfProducts],
		sum([UnitsInStock]) as [SumUnitsInstock], 
		avg([UnitPrice]) as [AvgUnitPrice]
from Products;

--  dem so luong don hang tu Orders voi 2 cach 
--1: dung *
--2: dung ma don hang
select count(*)
from Orders;

select count([OrderID])
from Orders;

--tu bang [Order Details] hay tinh trung binh cho cot UnitPrice 
-- va tinh tong cho cot Quantity

select avg([UnitPrice]) as [AvgUnitPrice],
		sum([Quantity]) as [SumQuantity]
from [Order Details];

-- tinh tong Category khac nhau tu Products
select sum(distinct[CategoryID]) as [SumDistinct]
from[dbo].[Products];

select sum([CategoryID]) as [Sum]
from[dbo].[Products];
