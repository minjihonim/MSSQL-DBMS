USE tempdb;
create table mixedTbl
(	userID char(8) NOT NULL,
	name nvarchar(10) NOT NULL,
	addr nchar(2)
);
GO
INSERT INTO mixedTbl values('LSG', '이승기', '서울');
INSERT INTO mixedTbl values('KBS', '김범수', '경남');
INSERT INTO mixedTbl values('KKH', '김경호', '전남');
INSERT INTO mixedTbl values('JYP', '조용필', '경기');
INSERT INTO mixedTbl values('SSK', '성시경', '서울');
INSERT INTO mixedTbl values('LJB', '임재범', '서울');
INSERT INTO mixedTbl values('YJS', '윤종신', '경남');
INSERT INTO mixedTbl values('EJW', '은지원', '경북');
INSERT INTO mixedTbl values('JKW', '조관우', '경기');
INSERT INTO mixedTbl values('BBK', '바비킴', '서울');

ALTER table mixedTbl
	ADD constraint pk_mixedTbl_userID
		primary key (userID);

ALTER table mixedTbl
	ADD constraint UK_mixedTbl_name
		UNIQUE (name) ;

EXEC sp_helpindex mixedTbl;