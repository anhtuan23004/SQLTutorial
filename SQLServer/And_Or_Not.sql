-- select column1, column2,...
-- from table_name
-- where condition1 or condition2 or condition3;
-- hien thi neu co it nhat 1 dieu kien co gia tri bang true

-- select column1, column2,...
-- from table_name
-- where condition1 and condition2 and condition3;
-- hien thi neu tat ca dieu kien co gia tri bang true

-- select column1, column2,...
-- from table_name
-- where not condition;
-- hien thi neu dieu kien co gia tri bang false

-- liet ke tat ca cac san pham co so luong trong kho(UnitsInStock) thuoc khoang < 50 hoac > 100
select *
from [dbo].[Products]
where [UnitsInStock] < 50 or [UnitsInStock] > 100;

select count(*)
from [dbo].[Products]
where [UnitsInStock] < 50 or [UnitsInStock] > 100;

-- liet ke tat ca cac don hang duuoc giao den Brazil da bi giao muon, biet rang ngay can phai giao hang la RequiredDate, ngay giao hang thuc te la ShippedDate
select *
from [dbo].[Orders]
where [RequiredDate] < [ShippedDate] and [ShipCountry] = 'Brazil';

-- lay ra tat ca san pham co gia duoi 100$ va ma the loai khac 1
-- Luu y : dung not
select *
from [dbo].[Products]
where [UnitPrice] >= 100 or [CategoryID] = 1 ;

select *
from [dbo].[Products]
where not ([UnitPrice] >= 100 or [CategoryID] = 1);

-- liet ke tat ca cac don hang co gia van chuyen Freight trong khoang [50,100] dola
select *
from [dbo].[Orders]
where not([Freight] < 50 or [Freight] > 100);

select *
from [dbo].[Orders]
where [Freight] > 50 and [Freight] < 100;

-- liet ke cac san pham co so luong hang trong kho [UnitsInStock] > 20
-- va so luong hang trong don hang [UnitsOnOrder] < 20

select *
from[dbo].[Products]
where [UnitsInStock] > 20 and [UnitsOnOrder] < 20;

select count(*)
from[dbo].[Products]
where [UnitsInStock] > 20 and [UnitsOnOrder] < 20;

select count(*)
from[dbo].[Products]
where not ([UnitsInStock] <= 20 or [UnitsOnOrder] >= 20);

select *
from[dbo].[Products]
where not ([UnitsInStock] <= 20 or [UnitsOnOrder] >= 20);

