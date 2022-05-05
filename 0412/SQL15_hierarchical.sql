
COL ENAME FOR A30
SELECT LPAD(ename,LEVEL*4,'*') ENAME,
       LEVEL
FROM emp
CONNECT BY  empno = PRIOR mgr
START WITH empno = 7839;

ENAME                               LEVEL
------------------------------ ----------
KING                                    1
***JONES                                2
*******SCOTT                            3
***********ADAMS                        4
********FORD                            3
***********SMITH                        4
***BLAKE                                2
*******ALLEN                            3
********WARD                            3
******MARTIN                            3
******TURNER                            3
*******JAMES                            3
***CLARK                                2
******MILLER                            3

14 행이 선택되었습니다.