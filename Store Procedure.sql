CREATE SCHEMA storeprocedure;
use storeprocedure;
create table SumOfAll(
   Amount int
);
insert into SumOfAll VALUES (100);
insert into SumOfAll VALUES (330);
insert into SumOfAll VALUES (450);
insert into SumOfAll VALUES (400);

SELECT * FROM sumofall;
 DELIMITER //
DROP PROCEDURE IF EXISTS sp_ChechValue;
create procedure sp_ChechValue(IN value1 int,OUT value2 int)
begin
   set value2=(select Amount from SumOfAll where Amount=value1);
   
END;
// DELIMITER ;


-- kiểm tra giá trị trong biến
call sp_ChechValue(300,@isPresent);
select @isPresent;

call sp_ChechValue(330,@isPresent);
select @isPresent;

