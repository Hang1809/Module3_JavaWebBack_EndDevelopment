create database QuanLyBanHang;
use QuanLyBanHang;
create table Customer (
cID INT primary key,
cName VARCHAR (20),
cAge INT );

create table Oder (
oID INT PRIMARY KEY,
oDate Date,
oTotalPrice INT,
cID INT,
foreign key (cID) references Customer(cID));

create table Product(
pID INT PRIMARY KEY,
pName VARCHAR(40),
pPrice INT);

create table OrderDetail(
oID INT,
pID INT,
foreign key (oID) references Oder(oID),
foreign key (pID) references Product(pID),
odQTY INT);