-- loc du lieu
-- select column1, column2,...
-- from table_name
-- where condition;

-- liet ke tat ca cac nhan vien den tu thanh pho London

select *
from [dbo].[Employees]
where [City] = 'London';

-- liet ke tat ca cac nhan vien den tu thanh pho London
-- sap xep ket qua theo LastName A-Z

select *
from [dbo].[Employees]
where [City] = 'London'
order by [LastName] asc;

--liet ke tat ca cac don hang bi giao muon, biet rang ngay can giao hang la RequiredDate
--ngay giao hang thuc te laf ShippedDate

select [OrderID], [RequiredDate], [ShippedDate]
from [dbo].[Orders]
where [RequiredDate] < [ShippedDate];

select count(*) as [So don giao hang muon]
from [dbo].[Orders]
where [RequiredDate] < [ShippedDate];

-- lay ra tat ca cac don hang chi tiet duoc giam gia nhieu hon 10%
select *
from [dbo].[Order Details]
where [Discount] > 0.1;

select count(*) as[So don hang duoc giam gia]
from [dbo].[Order Details]
where [Discount] > 0.1;

-- liet ke tat ca don hang duoc gui den quoc gia France
select *
from [dbo].[Orders]
where [ShipCountry] = 'France' and [RequiredDate] < [ShippedDate];

select count(*)
from [dbo].[Orders]
where [ShipCountry] = 'France' and [RequiredDate] < [ShippedDate];

--Liệt kê những nhân viên cùng Title = Sales Representative , City = London va Seattle ,cùng Country KHÁC 'UK' (Bảng Employees)
--sắp xếp lastname tăng dần

select *
from [dbo].[Employees]
where [Title] = 'Sales Representative' and [City] = 'London' and [City] = 'Seattle' or [Country] <> 'UK'
order by [LastName] asc;
