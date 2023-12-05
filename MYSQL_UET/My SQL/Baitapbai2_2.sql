-- Cách 2: Tạo ràng buộc Foreign Key cùng lúc với Primary Key
/* Quy tắc: PK phải tạo trước FK 
 => Các bảng, các cột chứa PK phải tạo trước các bảng, các cột chứa FK
 => Ở đây ta phải tạo bảng orders trước bảng orderdetails
					  bảng productlines trước bảng products
                      bảng products trước orderdetails
 => Thứ tự: orders -> productlines -> products -> orderdatails  */

CREATE DATABASE mydatabase2;
USE mydatabase2;

CREATE TABLE orders(
orderNumber INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
orderDate DATETIME NOT NULL,
requiredDate DATETIME NOT NULL,
shippedDate DATETIME,
status VARCHAR(15) NOT NULL,
comments TEXT,
customerNumber INT(11) NOT NULL
);

CREATE TABLE productlines(
productLine VARCHAR(50) NOT NULL PRIMARY KEY,
textDescription VARCHAR(4000),
htmlDescription MEDIUMTEXT,
image MEDIUMBLOB
);

CREATE TABLE products(
productCode VARCHAR(15) NOT NULL PRIMARY KEY,
productName VARCHAR(70) NOT NULL,
productLine VARCHAR(50) NOT NULL,
productScale VARCHAR(10) NOT NULL,
productVendor VARCHAR(50) NOT NULL,
productDescription TEXT NOT NULL,
quantityInStock SMALLINT(6) NOT NULL,
buyPrice DOUBLE NOT NULL,
FOREIGN KEY (productLine) REFERENCES productlines(productLine) ON UPDATE CASCADE
);

CREATE TABLE orderdetails(
orderNumber INT(11) NOT NULL,
productCode VARCHAR(15) NOT NULL,
quantityOrdered INT(11) NOT NULL,
priceEach DOUBLE NOT NULL,
orderLineNumber SMALLINT(6) NOT NULL,
FOREIGN KEY(orderNumber) REFERENCES orders(orderNumber) ON UPDATE CASCADE,
FOREIGN KEY(productCode) REFERENCES products(productCode) ON UPDATE CASCADE,
CONSTRAINT pk_detail PRIMARY KEY(orderNumber, productCode)
);




