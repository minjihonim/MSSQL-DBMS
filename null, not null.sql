USE tempdb;
DROP DATABASE nullDB;
GO
CREATE DATABASE nullDB;
GO

ALTER DATABASE nullDB SET ANSI_NULL_DEFAULT OFF; -- ANSI_NULL_DEFAULT OFF는 옵션이며, 자동으로 NOT NULL 
GO 
SET ANSI_NULL_DFLT_ON OFF;
GO

USE nullDB;
CREATE TABLE t1(id int);
GO
INSERT INTO t1 values (NULL); -- 여기서 오류 남
GO
EXEC sp_help t1; -- 그 테이블의 정보 확인