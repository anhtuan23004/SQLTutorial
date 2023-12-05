--select day/month/year(date | datetime)

--so luong don dat hang trong nam 1997 cua tung khach hang
select [CustomerID], count([OrderID]) as [TotalOrders],
		 year([OrderDate]) as [Year]
from Orders
where year([OrderDate]) = 1997
group by [CustomerID], year([OrderDate]);

--loc ra cac don hang duoc dat hang vao thang 5 nam 1997
select *
from [dbo].[Orders]
where Day([OrderDate]) = 5 and Year([OrderDate]) = 1997;

--lay danh sach khach hang dat hang trong nam 1998
--va so don hang moi thang, sap xep theo thang tang dan
select [CustomerID], month([OrderDate]) as [Month], count(*) as [TotalOrders]
from [dbo].[Orders]
where year([OrderDate]) = 1998
group by [CustomerID], month([OrderDate])
order by month([OrderDate]) asc;

-- loc cac don dat hang da duoc giao vao thang 5, sap xep tang dan theo nam

select [CustomerID], month([ShippedDate]) as [Month], year([ShippedDate]) as [Year]
from [dbo].[Orders]
where month([ShippedDate]) = 5
group by [CustomerID], month([ShippedDate]), year([ShippedDate])
order by year([ShippedDate]) asc;
