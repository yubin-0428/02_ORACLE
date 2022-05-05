--계층형 쿼리의 기본 구조

col empno for  9999
col ename for  a20
col job for  a20
col mgr for  9999
col level for  9
col depth_ename for  a40
col ename_list for  a40
SELECT empno, 
       ename,
       job,
       mgr,
       level,
       LPAD(' ', (LEVEL-1)*2,' ')||ename  as  depth_ename,
       SYS_CONNECT_BY_PATH(ename,'-') AS ename_list
FROM emp 
CONNECT BY PRIOR empno = mgr
START WITH mgr IS NULL
ORDER SIBLINGS BY ename     -- 같은 level 행들의 정렬 컬럼 기입
;

EMPNO ENAME     JOB          MGR LEVEL DEPTH_ENAME      ENAME_LIST
----- --------- ---------- ----- ----- ---------------- ----------------------------------------
 7839 KING      PRESIDENT            1 KING             -KING
 7698 BLAKE     MANAGER     7839     2   BLAKE          -KING-BLAKE
 7499 ALLEN     SALESMAN    7698     3     ALLEN        -KING-BLAKE-ALLEN
 7900 JAMES     CLERK       7698     3     JAMES        -KING-BLAKE-JAMES
 7654 MARTIN    SALESMAN    7698     3     MARTIN       -KING-BLAKE-MARTIN
 7844 TURNER    SALESMAN    7698     3     TURNER       -KING-BLAKE-TURNER
 7521 WARD      SALESMAN    7698     3     WARD         -KING-BLAKE-WARD
 7782 CLARK     MANAGER     7839     2   CLARK          -KING-CLARK
 7934 MILLER    CLERK       7782     3     MILLER       -KING-CLARK-MILLER
 7566 JONES     MANAGER     7839     2   JONES          -KING-JONES
 7902 FORD      ANALYST     7566     3     FORD         -KING-JONES-FORD
 7369 SMITH     CLERK       7902     4       SMITH      -KING-JONES-FORD-SMITH
 7788 SCOTT     ANALYST     7566     3     SCOTT        -KING-JONES-SCOTT
 7876 ADAMS     CLERK       7788     4       ADAMS      -KING-JONES-SCOTT-ADAMS

14 행이 선택되었습니다.