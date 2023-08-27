-- select column_name(s)
-- from table_name
-- where condition
-- group by column_name(s)
-- having condition
-- order by column_name(s);

-- hay cho biet nhung khach hang nao da dat nhieu hon 20 don hang
-- sap xep theo thu tu tong so don hang giam dan
select [CustomerID], count([OrderID]) as [TotalOrders]
from [dbo].[Orders]
--where count([OrderID]) > 20 (error)
group by [CustomerID]
having count([OrderID]) > 20
order by count([OrderID]) desc;

-- loc ra nhung nha cung cap san pham co tong luong hang trong kho ([UnitsInStock]) > 30
-- co trung binh don gia ([UnitPrice]) < 50
select [SupplierID], sum([UnitsInStock]) as [TotalUnitsInStock],
		avg([UnitPrice]) as [AvgUnitPrice]
from [dbo].[Products]
group by [SupplierID]
having sum([UnitsInStock]) > 30 and avg([UnitPrice]) < 50;

-- hay cho biet tong so tien van chuyen cua tung thang
-- trong nua nam sau cua nam 1996, sap xep theo thang tang dan
-- tong tien van chuyen lon hon 1000$
select month([ShippedDate]) as [Month], sum([Freight]) as [TotalFreight]
from [dbo].[Orders]
where  month([ShippedDate]) > 6 and year([ShippedDate]) = 1996
group by month([ShippedDate])
having sum([Freight]) > 1000
order by month([ShippedDate]) asc;

-- loc ra nhung thanh pho co so luong don hang > 16 
-- sap xep theo tong so luong giam dan

select [ShipCity], count([OrderID]) as [TotalOrders]
from [dbo].[Orders]
group by [ShipCity]
having  count([OrderID]) > 16
order by count([OrderID]) desc;

--Lấy danh sách sản phẩm có tổng số lượng >75, có tỷ lệ giảm giá trung bình >7%, và sắp xếp theo tỷ lệ giảm giá trung bình giảm dần
select [ProductID], sum([Quantity]) as [TotalQuantity], avg([Discount]) as [AvgDiscount]
from [dbo].[Order Details]
group by [ProductID]
having sum([Quantity]) > 75 and avg([Discount]) > 0.07
order by avg([Discount]) desc;

--Lấy danh sách các quốc gia tên có chứa ký tự 'e' và 'a' , có tổng số lượng các thành phố >2 và tổng số lượng khách hàng <10, sắp xếp tên các quốc gia theo thứ tự alphabet
select [Country], 
		count([City]) as [TotalCity],
		count([CustomerID]) as [TotalCustomer]
from [dbo].[Customers]
where [Country] like '%[e,a]%'
group by [Country]
having count([City]) > 2 and count([CustomerID]) < 10
order by [Country] asc;

-- hay cho biet nhung thanh pho nao co so luong don hang duoc giao la khac 1 va 2, ngay dat hang tu ngay '1997-04-01' den '1997-08-31'
select [ShipCity], count([OrderID]) as [TotalOrders]
from [dbo].[Orders]
where [OrderDate] between '1997-04-01' and '1997-08-31'
group by [ShipCity]
having count([OrderID]) not in (1, 2);
--having count([OrderID]) <> 1 and count(*) <> 2;


