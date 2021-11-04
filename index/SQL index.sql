Create table tbl1 (
a INT PRIMARY KEY,
b INT,
c INT );

EXEC sp_helpindex tbl1;

Create table tbl2 (
a INT PRIMARY KEY,
b INT UNIQUE,
c INT UNIQUE,
d INT );

EXEC sp_helpindex tbl2;

Create table tbl4 (
a INT PRIMARY KEY NONCLUSTERED,
b INT UNIQUE CLUSTERED,
c INT UNIQUE,
d INT );

EXEC sp_helpindex tbl4;

Create table tbl5 (
a INT PRIMARY KEY,
b INT UNIQUE CLUSTERED,
c INT UNIQUE,
d INT );

EXEC sp_helpindex tbl5;

Create table tbl6 (
a INT PRIMARY KEY,
b INT UNIQUE CLUSTERED,
c INT UNIQUE CLUSTERED,
d INT );

EXEC sp_helpindex tbl6; -- 클러스터형 인덱스는 1개만 지정 가능하다.

CREATE table userTbl
(	userID char(8) NOT NULL PRIMARY KEY,
	name varchar(10) NOT NULL,
	birthYear int NOT NULL,
	addr nchar(2) NOT NULL,
);

insert into userTbl VALUES ('LSG', '이승기', 1987, '서울');
insert into userTbl VALUES ('KBS', '김범수', 1979, '경남');
insert into userTbl VALUES ('KKH', '김경호', 1971, '전남');
insert into userTbl VALUES ('JYP', '조용필', 1950, '경기');
insert into userTbl VALUES ('SSK', '성시경', 1979, '서울');

select * from userTBL;