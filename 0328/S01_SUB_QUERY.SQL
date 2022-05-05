--EMP테이블에서 WARD보다 COMM을 적게 받는 사람의 이름과 COMM을 출력

SELECT ename,
       comm
FROM emp
WHERE comm < (SELECT comm
              FROM emp
              WHERE ename ='WARD');
ENAME                      COMM
-------------------- ----------
ALLEN                       300
TURNER                        0              