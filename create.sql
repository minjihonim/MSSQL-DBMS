DROP TABLE buyTBL, userTBL;
GO
CREATE TABLE userTBL (
	userID CHAR(8) NOT NULL PRIMARY KEY,
	name nvarchar(10) NOT NULL,
	birthYear int NOT NULL,
	addr nchar(2) NOT NULL,
	mobile1 char(3) null,
	mobile2 char(8) null,
	height smallint null,
	mDate date null);
GO
Create table buyTBL (
	num int IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	userID char(8) NOT NULL FOREIGN KEY References userTBL(userID),
	prodNAME nchar(6) NOT NULL,
	groupName nchar(4) null,
	price int NOT NULL,
	amount smallint NOT NULL );
GO