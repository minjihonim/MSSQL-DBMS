USE tempdb;
create table mixedTbl
(	userID char(8) NOT NULL,
	name nvarchar(10) NOT NULL,
	addr nchar(2)
);
GO
INSERT INTO mixedTbl values('LSG', '�̽±�', '����');
INSERT INTO mixedTbl values('KBS', '�����', '�泲');
INSERT INTO mixedTbl values('KKH', '���ȣ', '����');
INSERT INTO mixedTbl values('JYP', '������', '���');
INSERT INTO mixedTbl values('SSK', '���ð�', '����');
INSERT INTO mixedTbl values('LJB', '�����', '����');
INSERT INTO mixedTbl values('YJS', '������', '�泲');
INSERT INTO mixedTbl values('EJW', '������', '���');
INSERT INTO mixedTbl values('JKW', '������', '���');
INSERT INTO mixedTbl values('BBK', '�ٺ�Ŵ', '����');

ALTER table mixedTbl
	ADD constraint pk_mixedTbl_userID
		primary key (userID);

ALTER table mixedTbl
	ADD constraint UK_mixedTbl_name
		UNIQUE (name) ;

EXEC sp_helpindex mixedTbl;