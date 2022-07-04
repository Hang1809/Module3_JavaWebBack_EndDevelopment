use classicmodels;
SELECT * FROM customers ;


-- tham so IN
DELIMITER // 
CREATE PROCEDURE getCusById 
(IN cusNum INT (11))
-- DROP procedure IF exists getCusById ;
BEGIN
SELECT * FROM customers WHERE customerNumber = cusNum;
END //
DELIMITER ; 
CALL getCusById(175);


-- Tham so OUT
DELIMITER //
CREATE PROCEDURE GetCustomersCountByCity(
    IN  in_city VARCHAR(50),
    OUT total INT
)
BEGIN
SELECT COUNT(customerNumber)
INTO total
FROM customers
WHERE city = in_city;
END//
DELIMITER ;

CALL  GetCustomersCountByCity('Lyon', @total);
SELECT @total;

-- Tham so INOUT
delimiter // 
CREATE PROCEDURE SetCounter(
INOUT counter INT,
IN inc INT)
BEGIN
SET counter = counter + inc;
END 
// DELIMITER ;

SET @counter = 1 ;
CALL SetCounter(@counter,1);
CALL SetCounter(@counter,1);
CALL SetCounter(@counter,5);
SELECT @counter ;


