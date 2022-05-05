--ROWNUM : 출력되는 순서대로 넘버링 처리
SELECT ROWNUM,
       ename,
	   CEIL(ROWNUM/3) AS CEIL01
FROM emp
;

    ROWNUM ENAME       CEIL01
---------- ------- ----------
         1 SMITH            1
         2 ALLEN            1
         3 WARD             1
         4 JONES            2
         5 MARTIN           2
         6 BLAKE            2
         7 CLARK            3
         8 SCOTT            3
         9 KING             3
        10 TURNER           4
        11 ADAMS            4
        12 JAMES            4
        13 FORD             5
        14 MILLER           5