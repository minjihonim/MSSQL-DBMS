USE tempdb;
RESTORE DATABASE sqlDB FROM DISK ='c:\SQL\sqlDB2012.bak' WITH REPLACE;


USE sqlDB;
SELECT * FROM userTbl;


USE sqlDB;
GO

EXEC sp_helpindex userTbl;


CREATE INDEX idx_userTbl_addr
	ON userTbl (addr);


CREATE UNIQUE INDEX idx_userTbl_birtyYear
	ON userTbl (birthYear);

CREATE UNIQUE INDEX idx_userTbl_name
	ON userTbl (name);

EXEC sp_helpindex userTbl

CREATE UNIQUE INDEX idx_userTbl_name
	ON userTbl (name);

INSERT INTO userTbl VALUES('GPS', '±è¹ü¼ö', 1983, '¹Ì±¹', NULL ,NULL , 162, NULL);


CREATE NONCLUSTERED INDEX idx_userTbl_name_birthYear
	ON userTbl (name,birthYear);

EXEC sp_helpindex userTbl


SELECT * FROM userTbl WHERE name = 'À±Á¾½Å' and birthYear = '1969';

SELECT * FROM userTbl WHERE name = 'À±Á¾½Å';

CREATE NONCLUSTERED INDEX idx_userTbl_mobile1
	ON userTbl (mobile1);

SELECT * FROM userTbl WHERE mobile1 = '011';


EXEC sp_helpindex userTbl

DROP INDEX userTbl.idx_userTbl_addr;
DROP INDEX userTbl.idx_userTbl_mobile1;
DROP INDEX userTbl.idx_userTbl_name;
DROP INDEX userTbl.idx_userTbl_name_birthYear;


DROP INDEX userTbl.PK__userTbl__CB9A1CDF78AC8978;