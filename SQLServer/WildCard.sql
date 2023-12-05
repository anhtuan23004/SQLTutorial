-- loc ra tat ca cac khach hang co ten lien he bat dau bang chu'A'
select *
from [dbo].[Customers]
where [ContactName] like 'A%';

--loc ra tat ca cac khach hang co tenn lien he bat dau bang chu 'H', va co chu thu 2 la bat ki ki tu nao
select *
from [dbo].[Customers]
where [ContactName] like 'H_%';

--loc ra tat ca cac don hang duoc gui den thanh pho co chu bat dau la 'L'
-- chu ca thu 2 la u hoac o
select *
from [dbo].[Orders]
where [ShipCity] like 'L[u,o]%';

-- lay ra tat ca cac nha cung cap hang co ten cong ty bat dau bang chu'A' va khong chua ki tu 'b'
select [CompanyName]
from [dbo].[Suppliers]
where [CompanyName] like 'A[^b]%';