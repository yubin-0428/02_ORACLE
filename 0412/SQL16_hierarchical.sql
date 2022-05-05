SELECT LPAD(ename,LEVEL*4,'*') ENAME,
       LEVEL
FROM emp
CONNECT BY  empno = PRIOR mgr
START WITH empno = 7839;

ENAME                               LEVEL
------------------------------ ----------
KING                                    1