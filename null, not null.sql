USE tempdb;
DROP DATABASE nullDB;
GO
CREATE DATABASE nullDB;
GO

ALTER DATABASE nullDB SET ANSI_NULL_DEFAULT OFF; -- ANSI_NULL_DEFAULT OFF�� �ɼ��̸�, �ڵ����� NOT NULL 
GO 
SET ANSI_NULL_DFLT_ON OFF;
GO

USE nullDB;
CREATE TABLE t1(id int);
GO
INSERT INTO t1 values (NULL); -- ���⼭ ���� ��
GO
EXEC sp_help t1; -- �� ���̺��� ���� Ȯ��