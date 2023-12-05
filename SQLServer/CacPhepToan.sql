-- +/-/*/:/%

-- tinh so luong san pham con lai trong kho(UnitsInStock) sau khi ban het cac san pham da duoc dat hang(UnitsOnOrder)
-- StockRemaining = UnitsInstock - UnitOnOrder

select  [ProductID], 
		[ProductName],
		[UnitsInStock],
		[UnitsOnOrder],
		([UnitsInStock] - [UnitsOnOrder]) as [StockRemaining]
from Products;

-- tinh gia tri don hang chi tiet cho tat ca cac san pham
-- OrderDetails
-- OrderDetailsValue = UnitPrice x Quantity x (1 - Discount)

select	[OrderID], [ProductID],
		[UnitPrice], [Quantity],[Discount],
		(([UnitPrice] * [Quantity])*(1 - [Discount])) as  [OrderDetailsValue]
from [Order Details];

-- tinh ty le gia van chuyen don dat hang (Freight) trung binh cua don hang trong Orders
-- voi gia tri van chuyen cua don hang lon nhat(MaxFreight)
--  = avg(Freight) / max(Freight)
select avg([Freight]) / max([Freight]) as [FreightRatio]
from Orders;

-- liet ke danh sach cac san pham va gia (UnitPrice) cua tung san pham se duoc giam di 10%
-- c1 : dung phep nhan + phep chia
-- c2 : chi dung phep nhan
select [ProductName], [UnitPrice],
		([UnitPrice] * 9)/10 as [Price] 
from [dbo].[Products];

select [ProductName], [UnitPrice],
		([UnitPrice] * 0.9) as [Price] 
from [dbo].[Products];

-- xuat cot ContactName va ket qua SupplierID chia lay du cho 6 cua Supplier
-- sap xep theo thu tu giam dan cua cot ContactName va chi lay 6 dong dau tien
select top 6 [ContactName],
		([SupplierID] % 6) as [Ex]
from [dbo].[Suppliers]
order by [ContactName] desc;

