-- Sap xep ket qua tra ve

-- select column1, column2, ..
-- from table_name
-- order by column1, column2, ... ASC|DESC;
-- ASC : sap xep tang dan(mac dinh neu khong ghi) ascending
-- DESC : sap xep giam dan descending

--liet ke tat ca cac nha cung cao theo thu tu don vi CompanyName
select s.*
from [dbo].[Suppliers] as [s]
order by [CompanyName];

select top 15 [CompanyName],[ContactName]
from [dbo].[Suppliers]
order by [CompanyName] asc ,[ContactName];

-- liet ke tat ca cac san pham theo thu tu gia giam dan
select *
from [dbo].[Products]
order by [UnitPrice] desc;

-- liet ke tat ca cac nhan vien theo thu tu ho va ten dem A - Z
-- khong dung asc/desc
select * 
from [dbo].[Employees]
order by [LastName] asc, [FirstName] desc;

-- lay ra 1 san pham co so luong ban cao nhat tu bang[Order Details]
-- khong dung Max
select top 1 *
from [dbo].[Order Details]
order by [Quantity] desc;

--liet ke danh sach cac don dat hang(OrderId) trong bang Orders
-- theo thu tu giam dan cua ngay dat hang (OrderDate)
select [OrderID],[OrderDate]
from [dbo].[Orders]

select [OrderID]
from [dbo].[Orders]
order by [OrderDate] desc;

-- liet ke ten, don gia, so luong trong kho(UnitsInStock) cua tat ca cac san pham trong bang Products
-- theo thu tu giam dan cua UnitsInStock

select [ProductName], [UnitPrice], [UnitsInStock]
from [dbo].[Products]
order by [UnitsInStock] desc;