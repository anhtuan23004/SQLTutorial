--ALIAS 
-- SELECT column_name AS alias_name
-- FROM table_name;

-- lay "CompanyName" va dat ten thay the la"Cong ty";
-- "PostalCode" va dat ten thay the la "Ma buu dien"

select [PostalCode] as "Ma buu dien",
		[CompanyName] as " Ten cong ty",
		[City] as [Thanh pho]
from [dbo].[Customers];

-- lay ra "LastName", "FirstName" va thay the "Ho", "Ten"

select LastName as "Ho",
		FirstName as "Ten"
from dbo.Employees;

-- lay ra 15 dong day tien cua tat ca cac cot trong Orders
-- dat ten thay the cho bang Orders laf "o"

select top 15 o.*
from [dbo].[Orders] as [o];

-- lay ra cac cot va dat ten thay the 
-- ProductName -> Ten san pham
-- SupplierID -> Ma nha cung cap
-- CategoryID -> Ma the loai
-- va dat ten Products = p, su dung ten thay the khi truy van cac cot ben tren
-- lay ra 5 san pham dau tien

select top 5 "p".
		[ProductName] as [Ten san pham],
		[SupplierID] as [Ma nha cung cap],
		[CategoryID] as [Ma the loai]
from [dbo].[Products] as [p];


-- tu luyen 1
select top 30 percent "c".
	CompanyName as "Ten Cong Ti",
	Country as "Quoc gia",
	Phone as "So dien thoai"
from Customers as "c"