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
id int, productCode varchar(15), productName varchar(45),
productPrice double ,productAmount int,
 productDescription varchar(225), productStatus varchar(45))
BEGIN
SELECT * FROM product;
INSERT INTO product (id,productCode, productName,productPrice ,productAmount, productDescription , productStatus)
VALUES 
(4,'PR_04','JordanGirl', 50, 10,'Jordan limited version','NEW ARRIVAL');
END //
DELIMITER ;
CALL addNewProduct(4,'PR_04','JordanGirl', 50, 10,'Jordan limited version','NEW ARRIVAL');
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





