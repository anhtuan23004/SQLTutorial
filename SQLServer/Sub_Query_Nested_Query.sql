-- liet ke ra toan bo san pham
select ProductID, ProductName, UnitPrice
from Products;

-- Tim gia trung binh cua cac san pham
SELECT AVG([UnitPrice])
FROM [dbo].[Products];

-- Loc nhung san pham co gia > gia trung binh
SELECT  [ProductID], [ProductName], [UnitPrice]
FROM [dbo].[Products]
WHERE [UnitPrice] > 28.4962;

-- SubQuery
SELECT  [ProductID], [ProductName], [UnitPrice]
FROM [dbo].[Products]
WHERE [UnitPrice] > (
	SELECT AVG([UnitPrice])
	FROM [dbo].[Products]
);

-- Loc ra nhung khach hang co so don hang > 10
SELECT c.CustomerID, c.CompanyName, count(o.OrderId) as [TotalOrders]
FROM [dbo].[Customers] c
LEFT JOIN [dbo].[Orders] o
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.CompanyName
HAVING count(o.OrderId) > 10;

-- Sub query
select *
from Customers
where CustomerID in (
	select CustomerID
	from Orders
	group by CustomerID
	having count(OrderID) > 10
);

-- tinh tong tien cho tung don hang
select o.*, (
	select Sum(od.Quantity * od.UnitPrice)
	from [Order Details] as od
	where o.OrderID = od.OrderID
)as [Total]
from Orders as o;


-- Loc ra ten san pham va tong so don hang cua san pham
select ProductName, TotalOrders
from (select p.ProductID, p.ProductName,(
		select count(*)
		from [Order Details] as od
		where od.ProductID = p.ProductID
)as [TotalOrders]
from Products as p) as temp;

