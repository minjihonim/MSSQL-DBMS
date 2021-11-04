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

EXEC sp_helpindex tbl6; -- Ŭ�������� �ε����� 1���� ���� �����ϴ�.

CREATE table userTbl
(	userID char(8) NOT NULL PRIMARY KEY,
	name varchar(10) NOT NULL,
	birthYear int NOT NULL,
	addr nchar(2) NOT NULL,
);

insert into userTbl VALUES ('LSG', '�̽±�', 1987, '����');
insert into userTbl VALUES ('KBS', '�����', 1979, '�泲');
insert into userTbl VALUES ('KKH', '���ȣ', 1971, '����');
insert into userTbl VALUES ('JYP', '������', 1950, '���');
insert into userTbl VALUES ('SSK', '���ð�', 1979, '����');

select * from userTBL;