--INSTR()�Լ�
--���ڿ� ������ �ȿ� Ư�� ���ڳ� ���ڿ��� ��� ���ԵǾ� �ִ����� �˰��� �Ҷ� ���.
--INSTR('���ڿ�' �Ǵ� �÷�, ã�� ����, ������ġ(�⺻ ���� 1), ���° ����(�⺻ ���� 1));
SELECT INSTR('HELLO, ORACLE','L'),
       INSTR('HELLO, ORACLE','L',5),
	   INSTR('HELLO, ORACLE','L',2,2)
FROM dual
;

INSTR('HELLO,ORACLE','L') INSTR('HELLO,ORACLE','L',5) INSTR('HELLO,ORACLE','L',2,2)
------------------------- --------------------------- -----------------------------
                        3                          12                             4