-- Min Max 
--select min/max(column_name)
-- from table_name;

-- tim gia thap nhat cua cac san pham trong bang Product
select min([UnitPrice]) as [MinPrice]
from Products;

-- lay ra ngay dat hang gan nhat tu bang Orders
select max([OrderDate]) as [MinOrderDate]
from Orders;

-- tim ra so luong hang ton kho(UnitsInStock) lon nhat
select max([UnitsInStock]) as "MaxUnitsInStock"
from Products;

-- tim tuoi doi cua nhan vien lon nhat cong ti
select min([BirthDate]) as "Elderly"
from Employees;

-- tu luyen 1
select max([Phone]) as "So dien thoai dai nhat"
from [dbo].[Customers];