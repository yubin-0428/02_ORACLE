--emp: 14
--dept: 4
--���� ������ ������ �Ǹ� īƼ�� �� ���� : 14 *4 =56
SELECT t1.empno,
       t1.deptno,
       t2.dname
FROM emp t1, dept t2
--WHERE t1.deptno = t2.deptno
;

