--select column_name(s)
--from table_name
--where condition
--group by column_name(s)
--order by column_name(s);
-- Dung de nhom cac dong du lieu co cung gia tri
-- thuong duoc dung voi cac ham: count, max, min, sum, avg


--cho biet moi khac hang da dat bao nhieu don hang
select [CustomerID], count([OrderID]) as [TotalOrders]
from [dbo].[Orders]
group by [CustomerID];

-- tinh gia tri don gia trung binh theo moi nha cung cap san pham
select [SupplierID], avg([UnitPrice]) as [AvgUnitPrice]
from Products
group by[SupplierID];

--cho biet moi the loai co tong so bao nhieu san pham trong kho(UnitsInStock)
select [CategoryID], sum([UnitsInStock]) as [TotalUnitsInStock]
from [dbo].[Products]
group by [CategoryID];

-- cho biet gia van chuyen thap nhat va lon nhat cua cac don hang theo tung thanh pho va quoc gia khac nhau
select [ShipCity], [ShipCountry],
		min([Freight]) as [MinFreight],
		max([Freight]) as [MaxFreight]
from [dbo].[Orders]
group by [ShipCity], [ShipCountry]
order by [ShipCity] asc, [ShipCountry] asc ;

--thong ke so luong nhan vien theo tung quoc gia
select [Country], count([EmployeeID]) as [TotalEmployeeID]
from Employees
group by [Country];
--Hãy cho biết tổng số khách hàng theo từng quốc gia và thành phố, và lọc theo quốc gia từ a-z 
select [Country], [City], count([CustomerID])
from Customers
group by [Country], [City]
order by [Country] asc;

--Hãy cho biết 'số lượng sản phẩm trong kho' theo nhà cung cấp. 
select [SupplierID], count([UnitsInStock])
from Products
group by [SupplierID];