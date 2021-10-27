use tableDB;
GO

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

INSERT INTO userTBL values('LSG', N'이승기', 1987, N'서울', '011', '1111111', 182, '2008-8-8');
INSERT INTO userTBL values('KBS', N'김범수', 1979, N'경남', '011', '2222222', 173, '2012-4-4');
INSERT INTO userTBL values('KKH', N'김경호', 1971, N'전남', '019', '3333333', 177, '2007-7-7');

INSERT INTO buyTBL values('KBS', N'운동화', NULL, 30, 2);
INSERT INTO buyTBL values('KBS', N'노트북', N'전자', 1000, 1);
INSERT INTO buyTBL values('JYP', N'모니터', N'전자', 200, 1);

