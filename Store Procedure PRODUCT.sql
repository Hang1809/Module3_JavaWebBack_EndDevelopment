CREATE SCHEMA productdemo ;
use productdemo;
CREATE TABLE product (
id int, productCode varchar(15),productName varchar(45),
productPrice double, productAmount int, 
productDescription varchar (225), productStatus varchar(45));
  
-- Tạo Unique Index:
CREATE UNIQUE INDEX idx_productCode ON product(productCode) ;
CREATE UNIQUE INDEX idx_products ON product(productName, productPrice) ;
EXPLAIN SELECT * FROM product;
EXPLAIN SELECT * FROM product
WHERE productCode = 'PR_2';


-- Tạo view :
CREATE VIEW product_views as
SELECT productCode, productName, productPrice, productStatus
FROM product;
SELECT * FROM product_views  ;

-- sửa đổi view:
CREATE OR REPLACE VIEW product_views as
SELECT productCode, productName, productPrice, productStatus, productAmount
FROM product;
SELECT * FROM product_views  ;

-- Xoa View:
DROP VIEW product_views ;

-- Tạo store procedure :
DELIMITER //
CREATE  procedure findAllProducts()
BEGIN
SELECT * FROM product ;
END //
DELIMITER ;
CALL findAllProducts();

-- Tạo store procedure thêm một sản phẩm mới:
DELIMITER //
DROP PROCEDURE IF EXISTS AddNewProduct;
CREATE procedure AddNewProduct(
IN pid int,IN pCode varchar(15), IN pName varchar(45),
IN pPrice double ,IN pAmount int,
IN pDescription varchar(225),IN pStatus varchar(45))
BEGIN
INSERT INTO product (id,productCode, productName,productPrice ,productAmount, productDescription , productStatus)
VALUES 
(pid,pCode,pName,pPrice,pAmount,pDescription,pStatus);
END //
DELIMITER ;
CALL addNewProduct(7,'PR_07','JordanGirl', 70, 3,'Jordan limited version','NEW ARRIVAL');
CALL findAllProducts();

-- store procedure xoá sản phẩm theo id:
DELIMITER //
DROP PROCEDURE IF EXISTS RemoveById;
CREATE PROCEDURE RemoveById(id int) 
BEGIN 
DELETE FROM product
WHERE product.id = id;
END //
DELIMITER ;
CALL RemoveById(2);
CALL findAllProducts();

-- store procedure sửa thông tin sản phẩm theo id:
DELIMITER //
DROP PROCEDURE IF EXISTS UpdateProduct;
CREATE PROCEDURE UpdateProduct( id int, productPrice double)
BEGIN 
UPDATE product
SET product.productPrice = productPrice
WHERE product.id = id ;
END //
DELIMITER ;
CALL UpdateProduct(1,25);
CALL findAllProducts();





