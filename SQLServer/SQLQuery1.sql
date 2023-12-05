-- Lay ra ten san pham, gia ban tren 1 dvi, so luong
--SELECT[ProductName]
--FROM[dbo].[Products];

SELECT[ProductName], [UnitPrice], [QuantityPerUnit]
FROM[dbo].[Products];


-- Lay ra ten CONG TI khach hang va quoc gia

SELECT[CompanyName], [Country]
FROM[dbo].[Customers];

SELECT CompanyName, Country
FROM dbo.Customers;

-- Lay ra ten cong ti va sdt cua tat ca nha cung cap
SELECT CompanyName, Phone
FROM dbo.Suppliers;

-- Lay ra tat ca du lieu
SELECT *
FROM [dbo].[Products];