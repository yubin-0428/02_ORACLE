--Q1
COL empno FOR  9999
COL MASKING_EMPNO FOR  A15
COL ename FOR  A15
COL MASKING_NAME FOR  A15

SELECT empno,
       RPAD(SUBSTR(empno,1,2),4,'**') AS MASKING_EMPNO, 
       ename,
       RPAD(SUBSTR(ename,1,1),LENGTH(ename),'*****') AS MASKING_NAME
FROM emp
WHERE LENGTH(ename) >=5  
AND   LENGTH(ename) <6
;

EMPNO MASKING_EMPNO   ENAME           MASKING_NAME
----- --------------- --------------- ---------------
 7369 73**            SMITH           S****
 7499 74**            ALLEN           A****
 7566 75**            JONES           J****
 7698 76**            BLAKE           B****
 7782 77**            CLARK           C****
 7788 77**            SCOTT           S****
 7876 78**            ADAMS           A****
 7900 79**            JAMES           J****

8 행이 선택되었습니다.