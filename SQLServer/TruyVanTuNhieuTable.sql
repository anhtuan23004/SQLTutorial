-- tu bang Products va Categories, hay in ra cac thong tin sau day
-- ma the loai
-- ten the loai
-- ma san pham
-- ten san pham

select  c.CategoryID, c.CategoryName, p.ProductID, p.ProductName
from [dbo].[Products] as [p], [dbo].[Categories] as [c]
where c.CategoryID = p.CategoryID;

-- tu bang Employees va Orders, hay in ra cac thong tin sau day
-- ma nhan vien
-- ten nhan vien
-- so luongg son hang ma nhan vien da ban duoc
select o.EmployeeID
		, e.FirstName
		, e.LastName
		, count(o.OrderID) as [TotalOrders]
from [dbo].[Employees] as [e],
	 [dbo].[Orders] as [o]
where o.EmployeeID = e.EmployeeID
group by o.EmployeeID, e.FirstName, e.LastName;

-- tu bang Customers va Orders, hay in ra cac thong tin sau day
-- ma so khach hang 
-- ten cong ti
-- ten lien he
-- so luong don hang da mua
-- voi dieu kien: quoc gia cua khach hang la UK
select c.CustomerID, c.CompanyName, c.ContactName, count(o.OrderID) as [TotalOrders]
from Customers as [c], Orders as [o]
where c.CustomerID = o.CustomerID
group by c.CustomerID, c.CompanyName, c.ContactName;

--tu bang Orders va Shippers, hay in ra cac thong tin sau dau:
--ma nha van chuyen
--ten cong ty van chuyen
--tong so tien van chuyen
--in ra theo thu tu sap xep tong so tien van chuyen giam dan

select s.ShipperID, s.CompanyName, sum(o.[Freight]) as [TotalFreight]
from [dbo].[Orders] as [o], [dbo].[Shippers] as [s]
where o.ShipVia = s.ShipperID
group by s.ShipperID, s.CompanyName
order by sum(o.[Freight]) desc;

select [ShipperID]
from [dbo].[Shippers];

select [ShipVia]
from [dbo].[Orders];

-- tu bang Products va Suppliers, hay in ra thong tin sau day
-- ma nha cung cap
-- ten cong ty
-- tong so cac san pham khac nhau da cung cap
-- in ra man hinh duy nhat 1 nha cung cap co so luong san pham khac nhau nhieu nhat

select top 1 s.SupplierID, s.CompanyName, count(p.ProductID) as [TotalProduct]
from [dbo].[Products] as [p], [dbo].[Suppliers] as [s]
where s.SupplierID = p.SupplierID
group by s.SupplierID, s.CompanyName
order by count(p.ProductID) desc;

-- tu bang Orders va Orders Details,hay in ra cac thong tin sau day
-- ma don hang
-- tong so tien san pham cua don hang do

select o.OrderID,o.CustomerID, sum(od.UnitPrice * od.Quantity) as [TotalUnitPrice]
from [dbo].[Order Details] as [od], [dbo].[Orders] as [o]
where o.OrderID = od.OrderID
group by o.OrderID, o.CustomerID;

-- tu 3 bang Customers, Orders va Shippers hay in ra:
-- ma don hang
-- ten khach hang
-- ten cong ti van chuyen
-- chi in tra cac don hang duoc giao den 'UK' trong nam 1997
select o.OrderID, c.CustomerID, s.CompanyName, o.ShipCountry, year(o.ShippedDate)
from [dbo].[Customers] as c, [dbo].[Orders] as o, [dbo].[Shippers] as s
where (o.CustomerID = c.CustomerID and o.ShipVia = s.ShipperID) and (o.ShipCountry = 'UK'and year(o.ShippedDate) = 1997 )
group by o.OrderID, c.CustomerID, s.CompanyName, o.ShipCountry, year(o.ShippedDate);

-- Tu bang Products va Categories, hay tim ra cac san pham thuoc danh muc 'Seafood' in ra cac thong tin
-- ma the loai
-- ten the loai
-- ma san pham
-- ten san pham

select c.CategoryID, c.CategoryName, p.ProductID, p.ProductName
from Products as p, Categories as c
where c.CategoryID = p.CategoryID and c.CategoryName = 'Seafood';

-- tu 3 bang Orders, Customers va Shippers hay in ra
-- ma don hang
-- ten khach hang
-- ten cong ti van chuyen
-- chi in ra cac don hang cua khach hang den tu tp 'London'
select o.OrderID, c.ContactName, s.CompanyName, o.ShipCity
from Orders as o, Customers as c, Shippers as s
where o.CustomerID = c.CustomerID and o.ShipVia = s.ShipperID and o.ShipCity = 'London';

-- tu 3 bang Customers, Orders, Shippers hay in ra
-- ma don hang 
-- ten khach hang
-- ten cong ty van chuyen
-- ngay yeu cau chuyen hang
-- ngay giao hang
-- va chi in ra don muon hon qui dinh. RequiredDate < ShippedDate
select o.OrderID, c.ContactName, s.CompanyName, o.RequiredDate, o.ShippedDate 
from Customers as c, Orders as o, Shippers as s
where o.CustomerID = c.CustomerID and o.ShipVia = s.ShipperID and o.RequiredDate < o.ShippedDate;

-- give these shipcountries for which customers don't come from the US
-- select only this countries which is over than 100 orders
-- display Shipcountry and Number of Orders
select o.ShipCountry, count(o.OrderID) as [Number of Orders]
from Orders as o, Customers as c
where o.CustomerID = c.CustomerID and c.Country not in ('USA')
group by o.ShipCountry
having count(o.OrderID) > 100;

