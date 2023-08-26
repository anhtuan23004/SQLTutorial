-- select column_name(s)
-- from table_name
-- where column_name (not) in (value1, value2,..)

--loc ra tat ca cac don hang voi dieu kien
-- a: don hang duoc giao den Germany,UK,Brazil
-- b: don hang duoc giao den cac quoc gia khac Germany,UK,Brazil
select *
from [dbo].[Orders]
where [ShipCountry] in ('Germany', 'UK', 'Brazil');

select *
from [dbo].[Orders]
where [ShipCountry] not in ('Germany', 'UK', 'Brazil');

select *
from [dbo].[Orders]
where [ShipCountry] = 'Germany' or [ShipCountry] = 'UK' or [ShipCountry] = 'Brazil';

-- lay ra cac san pham co ma the loai khac voi 2,3 va 4
select *
from [dbo].[Products]
where [CategoryID] not in (2, 3, 4);

--liet ke cac nhan vien khong phai la nu tu bang nhan vien
--liet ke cac nhan vien nu tu bang nhan vien
select *
from [dbo].[Employees]
where [TitleOfCourtesy]  in ('Dr.') ;

select *
from [dbo].[Employees]
where [TitleOfCourtesy]  in ('Ms.', 'Mrs.') ;

--lay ra tat ca cac khach hang den tu cac thanh pho sau day: Berlin, London, Warszama
select *
from Customers
where [Country] in ('Berlin', 'London', 'Warszama');

select [Country], [Address], [Region]
from Customers;

--Liệt kê danh sách Customers có ContactTitle không phải là ('Sales Representative','Owner') (Bảng Customers).
select *
from Customers
where [ContactTitle] not in ('Sales Representative','Owner');