-- select column_name(s)
-- from table_name
-- where column_name between value1 and value2

-- lay danh sach cac san pham co gia ban trong khoang tu 10 - 20 dola
select *
from [dbo].[Products]
where [UnitPrice] between 10 and 20;

select *
from [dbo].[Products]
where [UnitPrice] >= 10 and [UnitPrice] <= 20;

-- lay danh sach cac don dat hang duoc dat trong khoang tu ngay 1996-07-01 den ngay 1996-07-31
select *
from [dbo].[Orders]
where [OrderDate] between '1996-07-01' and '1996-07-31';
-- tinh tong so tien van chuyen(Freight)
select sum([Freight]) as [TotalJullyFreight]
from [dbo].[Orders]
where [OrderDate] between '1996-07-01' and '1996-07-31';

-- lay danh sach cac don dat hang co ngay dat hang trong khaong tu ngay 1/1/97 - 31/12/97
-- va duoc van chuyen bang tau thuy(ShipVia = 3)

select *
from[dbo].[Orders]
where ([OrderDate] between '1997-01-01' and '1997-12-31') and [ShipVia] = 3;

--TÌM RA TÊN, ĐỊA CHỈ, QUÊN QUÁN CỦA TOP 2 NHÂN VIÊN BẮT ĐẦU LÀM VIỆC TRONG NĂM 1993
select top 2 [FirstName], [Address], [Country], [HireDate]
from [dbo].[Employees]
where [HireDate] between '1993-01-01' and '1993-12-31' 
order by [HireDate] asc;

select [HireDate]
from [dbo].[Employees]
where [HireDate] between '1993-01-01' and '1993-12-31' ;

select [HireDate]
from [dbo].[Employees]
where [HireDate] > '1993-01-01'
order by [HireDate] asc;
