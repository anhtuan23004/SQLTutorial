-- SELECT TOP number | percent column_name(s)
--FROM table_name
--WHERE condition;

--Lay ra 5 dong dau tien trong Customers
SELECT TOP 5*
FROM [dbo].[Customers];

SELECT TOP 5 [CustomerID]
FROM [dbo].[Customers];

-- lay ta 30% nhan vien cong ti
SELECT TOP 30 PERCENT * 
FROM [dbo].[Employees];

SELECT TOP 100 PERCENT * 
FROM [dbo].[Employees];

-- lay ra cac ma khach hang voi quy dinh ma khach hang khong trung
-- 5 dong dau tien

SELECT DISTINCT TOP 5 [CustomerID]
FROM [dbo].[Orders];

-- lay ra cac san pham co ma the loai khong trung ap
-- 3 dong dau tien
SELECT DISTINCT TOP 3 [CategoryID]
FROM [dbo].[Products];