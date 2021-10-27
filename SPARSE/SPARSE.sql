USE tempDB
CREATE database sparseDB;

CREATE table charTBL (id int identity, data char(100) NULL);
CREATE table sparseCharTBL (id int identity, data char(100) SPARSE NULL);

DECLARE @i INT = 0
WHILE @i < 10000
BEGIN
	INSERT INTO charTBL values(null);
	INSERT INTO charTBL values(null);
	INSERT INTO charTBL values(null);
	INSERT INTO charTBL values(REPLICATE('A', 100));
	INSERT INTO sparseCharTBL values(null);
	INSERT INTO sparseCharTBL values(null);
	INSERT INTO sparseCharTBL values(null);
	INSERT INTO sparseCharTBL values(REPLICATE('A', 100));
	SET @i += 1
END
GO

TRUNCATE TABLE charTBL;
TRUNCATE TABLE sparseCHARTBL;
GO

DECLARE @i INT = 0
WHILE @i < 40000
BEGIN
	INSERT INTO charTBL values(REPLICATE('A', 100));
	INSERT INTO sparseCharTBL values(REPLICATE('A', 100)); 
	-- Null 값이 없는데 sparse로 지정하는것은 오히려 메모리 손해이다.
	-- Null 값이 있을 때 sparse를 쓰는게 효율적
	SET @i += 1 
END
