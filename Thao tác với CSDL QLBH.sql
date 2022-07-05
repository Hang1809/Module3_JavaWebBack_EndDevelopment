use quanlybanhang;

SELECT oId, oDate FROM oder;

SELECT cName, pName from oder
INNER JOIN customer ON customer.cId = oder.cID
INNER JOIN orderdetail ON orderdetail.oID = oder.oID
INNER JOIN product ON product.pID = orderdetail.pID; 

SELECT cName from oder
RIGHT JOIN customer ON customer.cID = oder.cID
WHERE oder.cID IS null;

SELECT oder.oID, oDate, odQTY*pPrice from oder
INNER JOIN orderdetail ON orderdetail.oID = oder.oID
INNER JOIN product ON product.pID = orderdetail.pID;