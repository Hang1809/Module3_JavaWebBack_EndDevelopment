CREATE VIEW customer_views as
SELECT customerNumber, customerName, phone
FROM customers;
SELECT * FROM customer_views ;

CREATE OR REPLACE VIEW customer_views as
select customerNumber, customerName, contactFirstName, contactLastName, phone
from customers
where city = 'Nantes';
select * from customer_views;

-- DROP VIEW customer_views;