SELECT ename,
       func_date_kor(hiredate) as hiredate
FROM emp
WHERE empno = 7369;