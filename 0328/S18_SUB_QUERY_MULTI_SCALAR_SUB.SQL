--2) 2개 이상의 컬럼을 조회할 경우-에러                               

SELECT t3.no,
       t3.name,
       (SELECT dname,deptno 
        FROM t4 
        WHERE t3.deptno = t4.deptno) AS dname
FROM t3
;