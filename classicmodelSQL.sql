use classicmodels;
DROP PROCEDURE IF EXISTS checkPhoneExists;
delimiter //
create procedure checkPhoneExists(
IN phoneNumber varchar(50),
OUT message varchar(50)
)
begin
if(exists(select * from classicmodels.customers where phone = phoneNumber)) then
set message ='ton tai';
else 
set message ='ko ton tai';
end if ;
end //
delimiter ;
 
 
-- Them 1 khach hang vao table
drop procedure if exists AddNewCus;
delimiter //
create procedure AddNewCus(
in cNumber integer,
in cName varchar(50),
in cLastName varchar(50),
in cFirstName varchar(50),
in cPhone varchar(50),
in cAddress varchar(50),
in cCity varchar(50),
in cCountry varchar(50),
in cCreditLimit decimal(10,2),
out message varchar(50)
)
begin
	declare maxNumber integer;
    declare flag Boolean;
    set maxNumber = (SELECT max(customerNumber) From customers) +1 ;
    
    if ( exists( select phone from customers where phone = cNumber)) then
		set message = 'Da ton tai so dien thoai';
	end if; 
    if (cCountry not in (SELECT distinct country from customers)) then
		set message = 'Chua ton tai dat nuoc nay ';
	end if;
	
    if (exists(select phone from customers where phone = cNumber) and 
    cCountry  in (SELECT distinct country from customers)) then
	Insert into customers(customerNumber,customerName,contactLastName,contactFirstName,phone,addressLine1,city,country,creditLimit)
	Values (maxNumber,cName,cLastName,cFirstName,cPhone,cAddress,cCity,cCountry,cCreditLimit);
	set message = 'Them Thanh Cong' ;
    end if;
end //
delimiter ;
Call AddNewCus(5754,'Ngan Huynh','Ngan','Huynh',0981234567,'188PCT','Hue','VN');
