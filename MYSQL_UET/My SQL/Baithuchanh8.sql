-- Bai 1,2
SELECT p.productName, o.orderDate
FROM products p
straight_join orderdetails od ON p.productCode = od.productCode
straight_join orders o on o.orderNumber = od.orderNumber
-- WHERE o.orderDate >= '2005-03-01' AND o.orderDate < '2005-04-01';
where o.orderDate between '2005-03-01' and '2005-03-31';

select o.orderDate, (
	select p.productName
    from products p
    where p.productCode = od.productCode
) as ProductName
from orders o
join orderdetails od on od.orderNumber = o.orderNumber
where o.orderDate between '2005-03-01' and '2005-03-31';
-- where o.orderDate in (
-- 	select orderDate
--     from orders
--     where orderDate between '2005-03-01' and '2005-03-31'
-- )
select productName
from products
where productCode in 
(
	select productCode
    from orderdetails
    where orderNumber in 
    (
		select orderNumber
        from orders
        where orderDate between '2005-03-01' and '2005-03-31'
    )
);

select od.productCode, (
	select o.orderDate
    from orders o
    where o.orderNumber = od.orderNumber and o.orderDate between '2005-03-01' and '2005-03-31'
) as OrderDate
from orderdetails od
having OrderDate is not null
order by OrderDate asc;


-- Bai 3
SELECT o.*
FROM orders o
WHERE DATE_FORMAT(o.orderDate, '%Y-%m') = (
    SELECT MAX(DATE_FORMAT(orderDate, '%Y-%m'))
    FROM orders
);
-- Bai 4
select o.*, (
	select sum(od.quantityOrdered * od.priceEach)
    from orderdetails od
    where od.orderNumber = o.orderNumber
) as Total
from orders o;

select *
from orderdetails