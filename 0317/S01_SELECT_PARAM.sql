--����ڿ��� ������ �Է� �޾Ƽ� ���� ���� �´� ���� ����ϱ�.
SELECT empno,
       ename,
	   sal
FROM emp
WHERE empno = &empno
;

--09:14:57 SCOTT>@S01_SELECT_PARAM.sql
--empno�� ���� �Է��Ͻʽÿ�: 7902
--
--     EMPNO ENAME                       SAL
------------ -------------------- ----------
--      7902 FORD                       3000