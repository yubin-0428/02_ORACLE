--ename S�� �����ϴ�
--SELECT empno,
--       ename,
--	   job,
--	   deptno
--FROM emp
--WHERE ename LIKE 'S%'
--;
--     EMPNO ENAME                JOB                    DEPTNO
------------ -------------------- ------------------ ----------
--      7369 SMITH                CLERK                      20
--      7788 SCOTT                ANALYST                    20

--ename S�� �����ϰ� �ִ�
--��ȸ�ӵ��� ù��° SQL���� 
SELECT empno,
       ename,
	   job,
	   deptno
FROM emp
WHERE ename LIKE '%S%'
;
     EMPNO ENAME                JOB                    DEPTNO
---------- -------------------- ------------------ ----------
      7369 SMITH                CLERK                      20
      7566 JONES                MANAGER                    20
      7788 SCOTT                ANALYST                    20
      7876 ADAMS                CLERK                      20
      7900 JAMES                CLERK                      30
