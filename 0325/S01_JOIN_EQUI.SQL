EQUI Join(등가 조인)                    
    선행 테이블에서 데이터를 가져온 후 조인 조건절을 검사해서              
    동일한 조건을 가진 데이터를 후행 테이블에서 꺼내 오는 방법              
    연산자) '='                

emp테이블과 dept 테이블을 조회하여 아래와 같이 출력

--oracle join
--SELECT t1.empno,
--       t1.ename,
--       t2.dname
--FROM emp t1, dept t2
--WHERE t1.deptno = t2.deptno
--;
--
--     EMPNO ENAME                DNAME
------------ -------------------- ----------------------------
--      7782 CLARK                ACCOUNTING
--      7839 KING                 ACCOUNTING
--      7934 MILLER               ACCOUNTING
--      7566 JONES                RESEARCH
--      7902 FORD                 RESEARCH
--      7876 ADAMS                RESEARCH
--      7369 SMITH                RESEARCH
--      7788 SCOTT                RESEARCH
--      7521 WARD                 SALES
--      7844 TURNER               SALES
--      7499 ALLEN                SALES
--      7900 JAMES                SALES
--      7698 BLAKE                SALES
--      7654 MARTIN               SALES
--
--14 행이 선택되었습니다.

--ANSI JOIN
--INNER JOIN: 조인 기준
--ON절에는 조인 조건
SELECT t1.empno,
       t1.ename,
       t2.dname,
       t2.deptno
FROM emp t1 JOIN dept t2
ON t1.deptno = t2.deptno
;