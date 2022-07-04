SELECT * FROM classicmodels.customers;
EXPLAIN SELECT * FROM customers WHERE customerName = 'Land of Toy Inc.';
-- Them chi muc
ALTER TABLE customers ADD INDEX idx_customerName(customerName);
EXPLAIN SELECT * FROM customers WHERE customerName = 'Land of Toy Inc.';

ALTER TABLE customers ADD INDEX idx_fullname(contactFirstName, contactLastName);
EXPLAIN SELECT * FROM customers 
WHERE contactFirstName = 'Jean' 
OR contactFirstName = 'King';

ALTER TABLE customers DROP INDEX idx_fullname;