SELECT * FROM ##tempTBL;

BEGIN TRAN -- commit transaction �� ���ö����� ���� ����
	INSERT into ##tempTBL values(3, '����â 2���� �Է�');

COMMIT TRAN 
-- Ŀ���� �Ϸ�Ǹ� ��â���� ���̺��� ����� �ƴϱ� ������ ���̺���ȸ�� �ҷ��� �� ����.