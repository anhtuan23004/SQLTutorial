-- Cách 1: Tạo bảng độc lập rồi bổ sung khóa bằng lệnh ALTER TABLE
-- Quy tắc: PK phải tạo trước FK

CREATE DATABASE mydatabase;
use mydatabase;

CREATE TABLE orders(
orderNumber INT(11) AUTO_INCREMENT NOT NULL,
orderDATE DATETIME NOT NULL,
requiredDate DATETIME NOT NULL,
shippedDate DATETIME,
status VARCHAR(15) NOT NULL,
comments TEXT,orderdetailsorderdetails
customerNumber BIGINT(11) NOT NULL,
PRIMARY KEY (orderNumber)
);

CREATE TABLE productlines(
productLine VARCHAR(50) NOT NULL,
textDescription VARCHAR(4000),
htmlDescription MEDIUMTEXT,
image MEDIUMBLOB,
PRIMARY KEY (productLine)
);

CREATE TABLE orderdetails(
orderNumber INT(11) AUTO_INCREMENT NOT NULL,
productCode VARCHAR(15) NOT NULL,
quantityOrdered INT(11) NOT NULL,
priceEach DOUBLE NOT NULL,
orderLineNumber SMALLINT(6) NOT NULL,
PRIMARY KEY (orderNumber,productCode)
);

CREATE TABLE products(
productCode VARCHAR(15) NOT NULL,
productName VARCHAR(70) NOT NULL,
productLine VARCHAR(50) NOT NULL,
productScale VARCHAR(10) NOT NULL,
productVendor VARCHAR(50) NOT NULL,
productDescription TEXT NOT NULL,
quantityInStock SMALLINT(6) NOT NULL,
buyPrice DOUBLE NOT NULL,
PRIMARY KEY (productCode)
);

ALTER TABLE products ADD FOREIGN KEY (productLine) REFERENCES productlines(productLine)
ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE orderdetails ADD FOREIGN KEY (orderNumber) REFERENCES orders(orderNumber)
ON DELETE RESTRICT ON UPDATE CASCADE;

ALTER TABLE orderdetails ADD FOREIGN KEY (productCode)REFERENCES products(productCode)
ON DELETE RESTRICT ON UPDATE CASCADE;

