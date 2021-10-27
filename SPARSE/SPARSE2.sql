SELECT * FROM ##tempTBL;

BEGIN TRAN -- commit transaction 이 나올때까지 실행 상태
	INSERT into ##tempTBL values(3, '쿼리창 2에서 입력');

COMMIT TRAN 
-- 커밋이 완료되면 새창에서 테이블을 만든게 아니기 때문에 테이블조회시 불러올 수 없다.