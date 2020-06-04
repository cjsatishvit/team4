create database employeedirectory;

use employeedirectory;

create table Borrower(

	B_ID VARCHAR(10) Primary Key auto_increment,
	Name VARCHAR(30) NOT NULL,
	ID_Proof VARCHAR(15) NOT NULL,
	G_ID VARCHAR(10) Foreign Key,
	Phone_no Number(10) NOT NULL,
	B_Acc_no Number Unique,
	Address VARCHAR(100) NOT NULL,
	Date_of_demise date Default = ‘NULL’,

);

create table Auction(

	J_ID Varchar Primary Key auto_increment
	Base_price number NOT NULL
	Sold_amount number Default = 0
	Bidder_ID Varchar NOT NULL
	Cur_bid_price number CHECK>0
	Bid_op date NOT NULL
	reg_cls date NOT NULL

);