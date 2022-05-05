--SELECT ROWNUM, t1.empno, t1.ename
--FROM emp t1;
--
--    ROWNUM      EMPNO ENAME
------------ ---------- --------------------
--         1       7369 SMITH
--         2       7499 ALLEN
--         3       7521 WARD
--         4       7566 JONES
--         5       7654 MARTIN
--         6       7698 BLAKE
--         7       7782 CLARK
--         8       7788 SCOTT
--         9       7839 KING
--        10       7844 TURNER
--        11       7876 ADAMS
--        12       7900 JAMES
--        13       7902 FORD
--        14       7934 MILLER
--
--14 행이 선택되었습니다.

--SELECT ROWNUM, t1.empno, t1.ename,t1.sal
--FROM emp t1
--;
--
--    ROWNUM      EMPNO ENAME                       SAL
------------ ---------- -------------------- ----------
--         1       7369 SMITH                       800
--         2       7499 ALLEN                      1600
--         3       7521 WARD                       1250
--         4       7566 JONES                      2975
--         5       7654 MARTIN                     1250
--         6       7698 BLAKE                      2850
--         7       7782 CLARK                      2450
--         8       7788 SCOTT                      3000
--         9       7839 KING                       5000
--        10       7844 TURNER                     1500
--        11       7876 ADAMS                      1100
--        12       7900 JAMES                       950
--        13       7902 FORD                       3000
--        14       7934 MILLER                     1300
--
--14 행이 선택되었습니다.
--
--SELECT ROWNUM, t1.empno, t1.ename,t1.sal
--FROM emp t1
--ORDER BY t1.sal;
--
--    ROWNUM      EMPNO ENAME                       SAL
------------ ---------- -------------------- ----------
--         1       7369 SMITH                       800
--        12       7900 JAMES                       950
--        11       7876 ADAMS                      1100
--         3       7521 WARD                       1250
--         5       7654 MARTIN                     1250
--        14       7934 MILLER                     1300
--        10       7844 TURNER                     1500
--         2       7499 ALLEN                      1600
--         7       7782 CLARK                      2450
--         6       7698 BLAKE                      2850
--         4       7566 JONES                      2975
--         8       7788 SCOTT                      3000
--        13       7902 FORD                       3000
--         9       7839 KING                       5000
--
--14 행이 선택되었습니다.
SELECT ROWNUM, TT1.*
FROM (SELECT t1.empno,
             t1.ename,
             t1.sal
      FROM emp t1
      ORDER BY sal
)tt1
;







