use classicmodels;
-- Bai 1
-- select substring(textDescription, 1, 50) as "Title of products"
-- from productlines
-- Bai 2
-- select concat(concat(lastName, ' ', firstName), ' ;' , jobTitle) as 'Fullname, jobTitle.'
-- from employees
select concat_ws(';', lastName, firstName, jobTitle) as Fullname_jobTitle
from employees;
-- Bai 4
-- select *
-- from orders where requiredDate > shippedDate and status = 'Shipped'
-- Bai 5
-- select *
-- from orders
-- where month(orderDate) = 5 and year(orderDate) = 2005 and shippedDate is null
-- Bai 3

SET SQL_SAFE_UPDATES = 0;
 ALTER TABLE products
 DROP FOREIGN KEY products_ibfk_1;

UPDATE products 
SET 
    productLine = REPLACE(productLine,
        'Cars',
        'Automobiles');

UPDATE productlines 
SET 
    productLine = REPLACE(productLine,
        'Cars',
        'Automobiles');

ALTER TABLE products
ADD CONSTRAINT products_ibfk_1
FOREIGN KEY (productLine) REFERENCES productlines(productLine)
ON DELETE RESTRICT ON UPDATE CASCADE;
