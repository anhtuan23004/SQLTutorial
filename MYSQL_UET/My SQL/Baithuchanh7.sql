use classicmodels;
-- Bai 1
-- select e.employeeNumber, concat(firstName, ' ', lastName) as fullname, o.officeCode
-- from employees as e -- , offices as o
-- join offices as o
-- where e.officeCode = o.officeCode 
-- on e.officeCode = o.officeCode
-- Bai 2
-- select c.customerName, p.productName
-- from customers as c
-- inner join orders as o on c.customerNumber = o.customerNumber
-- inner join orderdetails as ord on o.orderNumber = ord.orderNumber
-- inner join products as p on ord.productCode = p.productCode
-- Bai 3
-- select p.productName, ord.quantityOrdered
-- from products as p
-- left join orderdetails as ord on p.productCode = ord.productCode
-- where ord.quantityOrdered is null
-- Bai 4
-- select o.orderDate, o.requiredDate, o.status, sum(ord.priceEach * ord.quantityOrdered) as Total
-- from orders as o
-- join orderdetails as ord
-- where month(orderDate) = 3 and year(orderDate) = 2005
-- group by o.orderDate, o.requiredDate, o.status
-- Bai 5
select p.productLine, count(pd.productName) as total
from productlines as p
left join products as pd on p.productLine = pd.productLine
group by p.productLine
order by count(pd.productName) desc

