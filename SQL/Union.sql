-- tu bang OrderDetails hay liet ke 
-- cac don hang co UnitPrice nam trong khoang tu 100 - 200
-- I - 22
select od.OrderID
from [Order Details] as od
where od.UnitPrice between 100 and 200;

-- dua ra cac don hang co
-- Quantity bang 10 hoac 20
-- II - 433

select od.OrderID
from [Order Details] as od
where od.Quantity in (10, 20);

-- tu bang OrderDetails hay liet ke 
-- cac don hang co UnitPrice nam trong khoang tu 100 - 200
-- va  Quantity bang 10 hoac 20
-- III = I and II =  7
select od.OrderID
from [Order Details] as od
where (od.UnitPrice between 100 and 200)
		and (od.Quantity in (10, 20));

-- tu bang OrderDetails hay liet ke 
-- cac don hang co UnitPrice nam trong khoang tu 100 - 200
-- hoac  Quantity bang 10 hoac 20
-- IV = I or II =  448
select od.OrderID
from [Order Details] as od
where (od.UnitPrice between 100 and 200)
		or (od.Quantity in (10, 20));

-- tu bang OrderDetails hay liet ke 
-- cac don hang co UnitPrice nam trong khoang tu 100 - 200
-- hoac  Quantity bang 10 hoac 20
-- V = VI + distinct = 360
select distinct od.OrderID
from [Order Details] as od
where (od.UnitPrice between 100 and 200)
		or (od.Quantity in (10, 20));


-- UNION
--select column_name(s) from table1
--union
--select column_name(s) from table2

-- V = I or II = 360
select od.OrderID from [Order Details] as od
where od.UnitPrice between 100 and 200
union
select od.OrderID from [Order Details] as od
where od.Quantity in (10, 20);

-- VI = 455 (khong distinct)
select od.OrderID from [Order Details] as od
where od.UnitPrice between 100 and 200
union all
select od.OrderID from [Order Details] as od
where od.Quantity in (10, 20);

-- hay liet ke toan bo cac thanh pho va quoc gia ton tai trong Suppliers va Customers sau day 
-- SD union or union all
-- 93 rows
select s.City, s.Country from Suppliers as s
union
select c.City, c.Country from Customers as c;
--120 rows
select s.City, s.Country from Suppliers as s
union all
select c.City, c.Country from Customers as c;

select s.Country from Suppliers as s
union 
select c.Country from Customers as c;
