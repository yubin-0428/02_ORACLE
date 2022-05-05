SELECT *
FROM emp_temp
WHERE sal <= 2500;

     EMPNO ENAME    JOB            MGR HIREDATE    SAL   COMM     DEPTNO
---------- -------- ------- ---------- -------- ------ ------ ----------
      7369 SMITH    CLERK         7902 80/12/17    800                20
      7876 ADAMS    CLERK         7788 87/05/23   1100                20
      7900 JAMES    CLERK         7698 81/12/03    950                30

UPDATE emp_temp
   SET comm = 50
 WHERE sal <= 2500;

 3 행이 업데이트되었습니다.
 
 SELECT *
 FROM emp_temp
 WHERE sal <= 2500;
 
 COMMIT;