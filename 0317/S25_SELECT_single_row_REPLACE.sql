--emp���̺��� �̸� ù�� �� ���ڸ� **�� ǥ��
SELECT ename,
       REPLACE(ename, SUBSTR(ename,1,2),'**') AS REP
FROM emp
WHERE deptno = 10
;
