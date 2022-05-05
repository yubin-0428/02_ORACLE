--NULL + 4000 ->  NULL
--NULL > 100  ->  NULL
--문한대 + NULL ->  NULL

--SELECT empno,
--       ename,
--	   sal,
--	   sal * 12+ NVL(comm,0) annual_sal_comm,
--	   comm
--FROM emp
--;
--     EMPNO ENAME                       SAL ANNUAL_SAL_COMM       COMM
------------ -------------------- ---------- --------------- ----------
--      7369 SMITH                       800            9600
--      7499 ALLEN                      1600           19500        300
--      7521 WARD                       1250           15500        500
--      7566 JONES                      2975           35700
--      7654 MARTIN                     1250           16400       1400
--      7698 BLAKE                      2850           34200
--      7782 CLARK                      2450           29400
--      7788 SCOTT                      3000           36000
--      7839 KING                       5000           60000
--      7844 TURNER                     1500           18000          0
--      7876 ADAMS                      1100           13200
--      7900 JAMES                       950           11400
--      7902 FORD                       3000           36000
--      7934 MILLER                     1300           15600

--SELECT empno,
--       ename,
--	   sal,
--	   comm
--FROM emp
--WHERE comm IS NULL
--;

--     EMPNO ENAME          SAL       COMM
------------ ------- ---------- ----------
--      7369 SMITH          800
--      7566 JONES         2975
--      7698 BLAKE         2850
--      7782 CLARK         2450
--      7788 SCOTT         3000
--      7839 KING          5000
--      7876 ADAMS         1100
--      7900 JAMES          950
--      7902 FORD          3000
--      7934 MILLER        1300

--comm이 null이 아닌 데이터 
SELECT empno,
       ename,
	   sal,
	   comm
FROM emp
WHERE comm IS NOT NULL
;

 EMPNO ENAME          SAL       COMM
------ ------- ---------- ----------
  7499 ALLEN         1600        300
  7521 WARD          1250        500
  7654 MARTIN        1250       1400
  7844 TURNER        1500          0