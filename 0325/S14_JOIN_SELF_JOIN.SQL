--ansi self join
SELECT t1.empno,
       t1.ename,
       t2.ename as mgr_name
FROM emp t1 JOIN emp t2
ON t1.mgr = t2.empno
;


SELECT t1.empno,
       t1.ename,
       t2.ename as mgr_name
FROM emp t1 LEFT OUTER JOIN emp t2
ON t1.mgr = t2.empno
;


oracle self join
SELECT t1.empno,
       t1.ename,
       t2.ename as mgr_name
FROM emp t1, emp t2
WHERE t1.mgr = t2.empno
;
     EMPNO ENAME                MGR_NAME
---------- -------------------- --------------------
      7902 FORD                 JONES
      7788 SCOTT                JONES
      7844 TURNER               BLAKE
      7499 ALLEN                BLAKE
      7521 WARD                 BLAKE
      7900 JAMES                BLAKE
      7654 MARTIN               BLAKE
      7934 MILLER               CLARK
      7876 ADAMS                SCOTT
      7698 BLAKE                KING
      7566 JONES                KING
      7782 CLARK                KING
      7369 SMITH                FORD

13 행이 선택되었습니다.