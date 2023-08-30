--JOIN
-- tra ve tat ca cac hang khi co it nhat mot gia tri o ca 2 hang
--select column_name(s)
--from table1
--inner join table2
--on table1.column_name = table2.column_name;

-- tu bang Products va Categories, hay in ra cac thong tin
-- ma the loai
-- ten the loai
-- ma san pham
-- ten san pham

select c.CategoryID, c.CategoryName, p.ProductID, p.ProductName
from Products as p
inner join Categories as c
on p.CategoryID = c.CategoryID;

-- tu bang Products va Categories, hay in ra cac thong tin
-- ma the loai
-- ten the loai
-- so luong san pham
select c.CategoryID, c.CategoryName, count(p.ProductID) as [NumberOfProducts]
from Products as p
join Categories as c
on p.CategoryID = c.CategoryID
group by c.CategoryID, c.CategoryName;

-- LEFT JOIN/RIGHT JOIN
-- tra lai tat ca cac dong tu bang ben trai, va cac dong dung voi dieu kien tu bang ben phai
--select column_name(s)
--from table1
--left(right) join table2
--on table1.column_name = table2.column_name;

-- tu bang Products va Categories, hay in ra cac thong tin
-- ma the loai
-- ten the loai
-- ma san pham
-- ten san pham

select c.CategoryID, c.CategoryName, p.ProductID, p.ProductName
from Categories as c
left join Products as p
on p.CategoryID = c.CategoryID;

-- tu bang Products va Categories, hay in ra cac thong tin
-- ma the loai
-- ten the loai
-- so luong san pham
select c.CategoryID, c.CategoryName, count(p.ProductID) as [NumberOfProducts]
from Categories as c
left join Products as p
on p.CategoryID = c.CategoryID
group by c.CategoryID, c.CategoryName;

-- FULL JOIN(FULL OUTER JOIN)
--select column_name(s)
--from table1
--full outer join table2
--on table1.column_name = table2.column_name
--where condition;
-- tra ve tat ca cac dong dung voi 1 trong cac bang

-- tu bang Products va Categories, hay in ra cac thong tin
-- ma the loai
-- ten the loai
-- ma san pham
-- ten san pham
select c.CategoryID, c.CategoryName, p.ProductID, p.ProductName
from Products as p
full outer join Categories as c
on p.CategoryID = c.CategoryID;

--hay liet ke ten nhan vien va ten khach hang cua cac don hang trong bang Orders
select o.OrderID,c.ContactName, e.LastName as [Employee]
from Orders as o
inner join Customers as c
on o.CustomerID = c.CustomerID 
inner join Employees as e
on e.EmployeeID = o.EmployeeID;
-- hay liet ke ten nha cung cap va ten san pham cua cac san pham trong bang 'Products'
-- bao gom san pham khong co nha cung cap
select p.ProductName, s.ContactName
from Products as p
left join Suppliers as s
on p.SupplierID = s.SupplierID;

-- Bt2:
select o.OrderID, e.FirstName, e.LastName, c.ContactName
from Orders as o
left join Employees as e 
on o.EmployeeID = e.EmployeeID
left join Customers as c
on c.CustomerID = o.CustomerID;

--Bt3
select o.OrderID, e.FirstName, e.LastName, c.ContactName
from Orders as o
right join Employees as e 
on o.EmployeeID = e.EmployeeID
right join Customers as c
on c.CustomerID = o.CustomerID;

--Bt5:liet ke ten khach hang va ten san pham da duoc dat hang trong bang Orders va Order Details.
-- su dung Orders va Order Details de lay ttin khach hang va san pham da duoc dat hang

select o.OrderID, c.ContactName, p.ProductName
from Orders as o
join [Order Details] as od
on od.OrderID = o.OrderID
join  Customers as c
on c.CustomerID = o.CustomerID
join Products as p
on p.ProductID = od.ProductID;

-- liet ke ten nhan vien va ten khach hang cua cac don hang trong bang Orders
-- bao gom ca cac don hang khong co nhan vien hoac khach hang tuong ung
-- su dung FULL JOIN hoac ket hop LEFT JOIN va RIGHT JOIN
-- Orders voi Employees va Customers 

select o.OrderID, e.FirstName, e.LastName, c.ContactName
from Orders as o
full outer join Employees as e
on e.EmployeeID = o.EmployeeID
full outer join Customers as c
on o.CustomerID = c.CustomerID;
