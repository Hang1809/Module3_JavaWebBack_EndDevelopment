-- LOOP :
DELIMITER //
CREATE PROCEDURE Loop_ex()
BEGIN
DECLARE x,y integer;
Set x = 0;
Set y = 10;
My_Loop : Loop
Set x = x+1 ;
set y = y-2 ;
if x > y then 
leave My_Loop;
END if;
END loop My_Loop;
SELECT Concat('x,y = ', x,', ', y) as Log_Info;
END //
DELIMITER ;
CALL Loop_ex();

-- loop ex 2 :
DROP procedure if exists Loop_ex2;
DELIMITER //
CREATE PROCEDURE Loop_ex2()
BEGIN
Declare x,y integer;
Set x = 0;
Set y = 10;
My_Loop : Loop
Set x = x+1;
set y = y -2 ;
if x <=y then 
Iterate My_Loop;
End if;
Leave My_Loop;
end loop My_Loop;
SELECT concat('x,y = ', x, ',',y) as Log_Info;
END //
 DELIMITER ;
CALL Loop_ex2();


-- Vi Du ve REPEAT ... UNTIL:
DELIMITER //
CREATE PROCEDURE Repeat_UntilEx()
BEGIN
Declare x integer ;
Set x = 0 ;
My_Loop : Repeat
SET x = x+1;
SELECT concat('x=',x) as Log_Info;
Until x > 3 
END Repeat My_Loop;
END //
DELIMITER ; 
CALL Repeat_UntilEx();

-- Vi Du Ve FUNCTION:
DROP function if exists Sum_Ab;
DELIMITER //
CREATE FUNCTION Sum_Ab(a integer, b integer )
RETURNS Integer deterministic
Begin
   return a + b;
End //
DELIMITER ;
SELECT Sum_Ab(1,2);

-- Vi Du ve WHILE...DO:
DELIMITER //
CREATE procedure While_DoEx()
BEGIN
Declare x integer;
Set x = 0 ;
My_Loop : While x < 5 Do
Set x = x + 2 ;
SELECT concat('x=',x) as Log_Info;
END while My_Loop;
END //
DELIMITER ;
CALL While_DoEx();


-- Vi Du Handle Exception:
Drop procedure if exists handling_exceptionEX() 
DELIMITER //
CREATE procedure handling_exceptionEX()
BEGIN
Declare error1048 Varchar(1) default 'N';
DECLARE CONTINUE HANDLER FOR 1048 SELECT 'Found Error: Ignore to Continue'  as My_Message;
	select 'three';
    Insert into student (id, name, email)
    values (null, 'Tung', 'tung@gmail.com');
    
    select 'two';
    Insert into student (id, name, email)
    values (4, 'Loc', 'loc@gmail.com');
    
    select 'one, lets go';
    
END //
DELIMITER ;
CALL handling_exceptionEX();








