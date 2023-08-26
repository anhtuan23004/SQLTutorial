--select column_name(s)
-- from table_name
--where column_name is (not) null;

--lay ra tat ca don hang chua duoc giao hang(ShippedDate => NULL)
select *
from Orders
where [ShippedDate] is not null;

select count(*)
from Orders
where [ShippedDate] is not null;

--lay danh sach cac khach hang khong co ten cong ti(CompanyName)
select *
from Customers
where [CompanyName] is null;

--lay ra tat ca don hang chua duoc giao hang va co khu vuc giao hang(ShipRegion) khong bi null
select *
from Orders
where [ShippedDate] is null and [ShipRegion] is not null;

