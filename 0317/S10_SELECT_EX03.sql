--�ʰ�(��Φ)�� ���ڳ� ������ ����ġ�� ���ؼ� ����� �� ���ų� ���� ���¸� �̸��� ���̴�. 
--y�� x�� �ʰ��ϴ� ���¸� �ε�ȣ�� x<y�� ���� ��Ÿ�� �� �ִ�.
--SELECT t1.empno,
--       t1.ename,
--       t1.job,
--       t1.sal,
--       t1.deptno
--FROM emp t1
--WHERE t1.deptno IN (20,30)
--AND   t1.sal > 2000
--;

SELECT t1.empno,
       t1.ename,
       t1.job,
       t1.sal,
       t1.deptno
FROM emp t1
WHERE t1.deptno = 20
AND   t1.sal > 2000
UNION
SELECT t1.empno,
       t1.ename,
       t1.job,
       t1.sal,
       t1.deptno
FROM emp t1
WHERE t1.deptno = 30
AND   t1.sal > 2000
;